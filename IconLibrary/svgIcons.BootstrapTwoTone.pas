unit svgIcons.BootstrapTwoTone;

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TBootstrapTwoToneIconList = class(TInterfacedObject,ISVGIconList,ISVGTwoToneIconList)
  private
    type
      TMapRec = record
        FilledIdx : integer;
        OutlineIdx : integer;
      end;
  private
    fMapping : TArray<TMapRec>;
    fFillColor : TColor;
    fToneColor : TColor;
    fFilledList : ISVGIconList;
    fOutlineList : ISVGIconList;
    procedure GenerateMap;
  protected
    function GetCount : integer;
    function GetName(Index:Integer):string;
    function GetSource(Index:Integer):string;
    function GetFillColor : TColor;
    procedure SetFillColor(Value:TColor);
    function GetToneColor : TColor;
    procedure SetToneColor(Value:TColor);
  public
    constructor Create(FilledList,OutlineList:ISVGIconList);
    property Count : integer read GetCount;
    property Name[index:integer] : string read GetName;
    property Source[index:integer] : string read GetSource;
    property FillColor : TColor read GetFillColor write SetFillColor default clNone;
    property ToneColor : TColor read GetToneColor write SetToneColor;
  end;

implementation

uses
  System.Math,
  System.StrUtils,
  svgIcon.Utils;

type
  rCorrection = record
    Oname : string;
    FName : string;
  end;

const
  // FillExceptionsA contains the fill names that are out of order from
  // the standard processor.  fName = !name in this case to trigger the
  // special exception lookup.
  FillExceptionsA : Array[0..1] of String = ('chat','file');
  Corrections : Array[0..34] of rCorrection = (
    ( oName:'calendar_check'; fName:'calendar' ),
    ( oName:'calendar_date'; fName:'calendar' ),
    ( oName:'calendar_day'; fName:'calendar' ),
    ( oName:'calendar_event'; fName:'calendar' ),
    ( oName:'calendar_heart'; fName:'calendar' ),
    ( oName:'calendar_minus'; fName:'calendar' ),
    ( oName:'calendar_month'; fName:'calendar' ),
    ( oName:'calendar_plus'; fName:'calendar' ),
    ( oName:'calendar_range'; fName:'calendar' ),
    ( oName:'calendar_week'; fName:'calendar' ),
    ( oName:'calendar_x'; fName:'calendar' ),
    ( oName:'calendar3_event'; fName:'calendar3' ),
    ( oName:'calendar3_week'; fName:'calendar3' ),
    ( oName:'chat_left_quote'; fName:'chat_left' ),
    ( oName:'chat_quote'; fName:'!chat' ),
    ( oName:'chat_right_quote'; fName:'chat_right' ),
    ( oName:'chat_square_quote'; fName:'chat_square' ),
    ( oName:'clipboard_check'; fName:'clipboard' ),
    ( oName:'clipboard_data' ; fName:'clipboard' ),
    ( oName:'clipboard_heart'; fName:'clipboard' ),
    ( oName:'clipboard_x';  fName:'clipboard' ),
    ( oName:'envelope_paper_heart'; fName:'envelope_paper' ),
    ( oName:'file_earmark_arrow_down'; fName:'file_earmark' ),
    ( oName:'file_earmark_arrow_up'; fName:'file_earmark' ),
    ( oName:'file_earmark_code'; fName:'file_earmark' ),
    ( oName:'file_earmark_diff'; fName:'file_earmark' ),
    ( oName:'file_earmark_image'; fName:'file_earmark' ),
    ( oName:'file_earmark_medical'; fName:'file_earmark' ),
    ( oName:'file_earmark_richtext'; fName:'file_earmark' ),
    ( oName:'file_earmark_text'; fName:'file_earmark' ),
    ( oName:'file_earmark_zip'; fName:'file_earmark' ),
    ( oName:'file_image'; fName:'!file' ),
    ( oName:'file_zip'; fName:'!file' ),
    ( oName:'house_heart'; fName:'house' ),
    ( oName:'ticket_perforated'; fName:'ticket' )
    );

{ TBootstrapTwoToneIconList }

constructor TBootstrapTwoToneIconList.Create(FilledList,
  OutlineList: ISVGIconList);
begin
  inherited Create;
  fFilledList := FilledList;
  fOutlineList := OutlineList;
  GenerateMap;
end;

procedure TBootstrapTwoToneIconList.GenerateMap;
var
  iFidx,iOidx,iMap,cmp : integer;
  CIdx : integer;
  LastCorrectionFill : string;
  LastCorrectionIdx : integer;
  ExceptionIdx : integer;
  ExceptionVal : TArray<Integer>;

  function FindExceptedVal(aFillName:STring):integer;
  var
    AdjName : string;
  begin
    AdjName := Corrections[CIdx].FName;
    AdjName := RightStr(AdjName,Length(AdjName)-1);
    Result := ExceptionVal[IndexText(AdjName,FillExceptionsA)];
  end;

begin
  iFIdx := 0;
  iOidx := 0;
  CIdx := 0;
  iMap := 0;
  ExceptionIdx := 0;
  LastCorrectionIdx := 0;
  SetLength(ExceptionVal,Length(FillExceptionsA));
  SetLength(fMapping,Max(fFilledList.Count,fOutlineList.count));
  while (iFidx < fFilledList.count) and (iOIdx < fOutlineList.Count) do
    begin
      Cmp := CompareTExt(fFilledList.name[iFidx],fOutlineList.Name[iOidx]);
      if cmp = 0 then
        begin
          fMapping[iMap].FilledIdx := ifIdx;
          fMapping[iMap].OutlineIdx := ioIdx;
          if ExceptionIdx < Length(FillExceptionsA) then
            begin
              if SameText(fFilledList.Name[ifIdx],FillExceptionsA[ExceptionIdx]) then
                begin
                  ExceptionVal[ExceptionIdx] := ifIdx;
                  inc(ExceptionIdx);
                end;
            end;
          if (Cidx < Length(Corrections)) then
            begin
              if SameText(fFilledList.Name[ifIdx],Corrections[CIdx].FName) then
                begin
                  LastCorrectionIdx := ifIdx;
                  LastCorrectionFill := Corrections[CIdx].FName;
                end;
              if SameText(fOutlineList.Name[ioidx],Corrections[CIdx].Oname) then
                begin
                  if SameText(Corrections[CIdx].FName,LastCorrectionFill) then
                    fMapping[iMap].FilledIdx := LastCorrectionIdx
                  else if (LeftStr(Corrections[CIdx].FName,1)='!') then
                    fMapping[iMap].FilledIdx := FindExceptedVal(Corrections[CIdx].FName);
                  Inc(CIdx);
                end;
            end;
          inc(iFidx);
          inc(iOidx);
          Inc(iMap)
        end
      else if Cmp < 0 then
        begin
          inc(iFidx);
        end
      else
        inc(iOidx);
    end;
  SetLength(fMapping,iMap);
end;

function TBootstrapTwoToneIconList.GetCount: integer;
begin
  REsult := Length(fMapping);
end;

function TBootstrapTwoToneIconList.GetFillColor: TColor;
begin
  Result := fFillColor;
end;

function TBootstrapTwoToneIconList.GetName(Index: Integer): string;
begin
  Result := fFilledList.name[fMapping[index].FilledIdx];
end;

function TBootstrapTwoToneIconList.GetSource(Index: Integer): string;
var
  lsvgHeader, lFilled, lOutline : string;
begin
  lFilled := fFilledList.Source[fMapping[index].FilledIdx];
  delete(lFilled,1,pos('>',lFilled));
  lFilled := StringReplace(lFilled,'</svg>','',[rfReplaceAll,rfIgnoreCase]);
  lOutline := fOutlinelist.Source[fMapping[index].OutlineIdx];
  // grab the header from the outline source
  lsvgHeader := leftStr( lOutline, pos('>',lOutline));
  delete(lOutline,1,length(lsvgHeader));
  result := lSVGHeader + lFilled + lOutline;
end;

function TBootstrapTwoToneIconList.GetToneColor: TColor;
begin
  Result := fToneColor;
end;

procedure TBootstrapTwoToneIconList.SetFillColor(Value: TColor);
begin
  fFillColor := Value;
  fOutlineLIst.FillColor := value;
end;

procedure TBootstrapTwoToneIconList.SetToneColor(Value: TColor);
begin
  fToneColor := Value;
  fFilledList.FillColor := value;
end;

end.
