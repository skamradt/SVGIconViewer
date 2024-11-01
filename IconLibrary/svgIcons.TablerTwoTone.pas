unit svgIcons.TablerTwoTone;

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TTablerTwoToneIconList = class(TInterfacedObject,ISVGIconList,ISVGTwoToneIconList)
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
  Windows,
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
  FillExceptionsA : Array[0..8] of String = (
      'box_multiple','briefcase_2','circle','crop_5_4','crop_7_5','rectangle',
      'rectangle_vertical','shield','square'
    );
  Corrections : Array[0..66] of rCorrection = (
    ( oName:'align_box_bottom_center'; fName:'square' ),
    ( oName:'align_box_bottom_left'; fName:'square' ),
    ( oName:'align_box_bottom_right'; fName:'square' ),
    ( oName:'align_box_center_middle'; fName:'square' ),
    ( oName:'align_box_left_bottom'; fName:'square' ),
    ( oName:'align_box_left_middle'; fName:'square' ),
    ( oName:'align_box_left_top'; fName:'square' ),
    ( oName:'align_box_right_bottom'; fName:'square' ),
    ( oName:'align_box_right_middle'; fName:'square' ),
    ( oName:'align_box_right_top'; fName:'square' ),
    ( oName:'align_box_top_center'; fName:'square' ),
    ( oName:'align_box_top_left'; fName:'square' ),
    ( oName:'align_box_top_right'; fName:'square' ),
    ( oName:'aspect_ratio'; fName: 'crop_7_5' ),
    ( oName:'box_model'; fName: 'crop_7_5' ),
    ( oName:'box_model_2'; fName: 'crop_7_5' ),
    ( oName:'box_multiple_0'; fName: 'box_multiple' ),
    ( oName:'box_multiple_1'; fName: 'box_multiple' ),
    ( oName:'box_multiple_2'; fName: 'box_multiple' ),
    ( oName:'box_multiple_3'; fName: 'box_multiple' ),
    ( oName:'box_multiple_4'; fName: 'box_multiple' ),
    ( oName:'box_multiple_5'; fName: 'box_multiple' ),
    ( oName:'box_multiple_6'; fName: 'box_multiple' ),
    ( oName:'box_multiple_7'; fName: 'box_multiple' ),
    ( oName:'box_multiple_8'; fName: 'box_multiple' ),
    ( oName:'box_multiple_9'; fName: 'box_multiple' ),
    ( oName:'brand_mastercard'; Fname:'rectangle'),
    ( oName:'briefcase'; fName: 'briefcase_2' ),
    ( oName:'browser'; fName: 'crop_7_5' ),
    ( oName:'browser_check'; fName: 'crop_7_5' ),
    ( oName:'browser_plus'; fName: 'crop_7_5' ),
    ( oName:'browser_x'; fName: 'crop_7_5' ),
    ( oName:'calendar'; fName: 'crop_5_4' ),
    ( oName:'calendar_due'; fName: 'crop_5_4' ),
    ( oName:'calendar_event'; fName: 'crop_5_4' ),
    ( oName:'calendar_month'; fName: 'crop_5_4' ),
    ( oName:'calendar_sad'; fName: 'crop_5_4' ),
    ( oName:'calendar_smile'; fName: 'crop_5_4' ),
    ( oName:'calendar_week'; fName: 'crop_5_4' ),

    ( oName:'circle_chevron_down'; fName: 'circle' ),
    ( oName:'circle_chevron_left'; fName: 'circle' ),
    ( oName:'circle_chevron_right'; fName: 'circle' ),
    ( oName:'circle_chevron_up'; fName: 'circle' ),
    ( oName:'circle_chevrons_down'; fName: 'circle' ),
    ( oName:'circle_chevrons_left'; fName: 'circle' ),
    ( oName:'circle_chevrons_right'; fName: 'circle' ),
    ( oName:'circle_chevrons_up'; fName: 'circle' ),


    ( oName:'credit_card'; fName:'crop_7_5'),
    ( oName:'inbox'; fName: 'crop_7_5'),
    ( oName:'play_card'; Fname:'rectangle_vertical'),
    ( oName:'play_card_1'; Fname:'rectangle_vertical'),
    ( oName:'play_card_10'; Fname:'rectangle_vertical'),
    ( oName:'play_card_2'; Fname:'rectangle_vertical'),
    ( oName:'play_card_3'; Fname:'rectangle_vertical'),
    ( oName:'play_card_4'; Fname:'rectangle_vertical'),
    ( oName:'play_card_5'; Fname:'rectangle_vertical'),
    ( oName:'play_card_6'; Fname:'rectangle_vertical'),
    ( oName:'play_card_7'; Fname:'rectangle_vertical'),
    ( oName:'play_card_8'; Fname:'rectangle_vertical'),
    ( oName:'play_card_9'; Fname:'rectangle_vertical'),
    ( oName:'play_card_a'; Fname:'rectangle_vertical'),
    ( oName:'play_card_j'; Fname:'rectangle_vertical'),
    ( oName:'play_card_k'; Fname:'rectangle_vertical'),
    ( oName:'play_card_q'; Fname:'rectangle_vertical'),
    ( oName:'play_card_star'; Fname:'rectangle_vertical'),
    ( oName:'shield_checkered'; fName: 'shield'),
    ( oName:'user_circle'; fName: 'circle')
    );



{ TTablerTwoToneIconList }

constructor TTablerTwoToneIconList.Create(FilledList,
  OutlineList: ISVGIconList);
begin
  inherited Create;
  fFilledList := FilledList;
  fOutlineList := OutlineList;
  GenerateMap;
end;

procedure TTablerTwoToneIconList.GenerateMap;
var
  iFidx,iOidx,iMap,cmp : integer;
  CIdx : integer;
  ExceptionIdx : integer;
  ExceptionVal : TArray<Integer>;
  CorrectionsList : TArray<Integer>;

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
  SetLength(CorrectionsList,Length(Corrections));
  SetLength(ExceptionVal,Length(FillExceptionsA));
  SetLength(fMapping,Max(fFilledList.Count,fOutlineList.count));
  while (iFidx < fFilledList.count) and (iOIdx < fOutlineList.Count) do
    begin
      Cmp := CompareTExt(StringReplace(fFilledList.name[iFidx],'_',' ',[rfReplaceall]),StringReplace(fOutlineList.Name[iOidx],'_',' ',[rfReplaceALl]));
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
              if SameText(fOutlineList.Name[ioidx],Corrections[CIdx].Oname) then
                begin
                  CorrectionsList[cidx] := imap;
                  Inc(CIdx);
                end;
            end;
          inc(iFidx);
          inc(iOidx);
          Inc(iMap);
        end
      else if Cmp < 0 then
        begin
          inc(iFidx);
        end
      else
        begin
          if (Cidx < Length(Corrections)) then
            begin
              if SameText(fOutlineList.Name[ioidx],Corrections[CIdx].Oname) then
                begin
                  fMapping[iMap].OutlineIdx := ioIdx;
                  CorrectionsList[cidx] := imap;
                  Inc(iMap);
                  Inc(CIdx);
                end;
            end;
          inc(iOidx);
        end;
    end;
  for cidx := Low(Corrections) to High(Corrections) do
    begin
      fMapping[CorrectionsList[cidx]].FilledIdx := ExceptionVal[IndexText(Corrections[CIdx].FName,FillExceptionsA)];
    end;

  SetLength(fMapping,iMap);
end;

function TTablerTwoToneIconList.GetCount: integer;
begin
  REsult := Length(fMapping);
end;

function TTablerTwoToneIconList.GetFillColor: TColor;
begin
  Result := fFillColor;
end;

function TTablerTwoToneIconList.GetName(Index: Integer): string;
begin
  Result := fOutlineList.name[fMapping[index].OutlineIdx];
end;

function TTablerTwoToneIconList.GetSource(Index: Integer): string;
var
  lsvgHeader, lFilled, lOutline : string;
begin
  lFilled := fFilledList.Source[fMapping[index].FilledIdx];
  delete(lFilled,1,pos('>',lFilled));
  lFilled := StringReplace(lFilled,'</svg>','',[rfReplaceAll,rfIgnoreCase]);
  lOutline := fOutlinelist.Source[fMapping[index].OutlineIdx];
  lsvgHeader := leftStr( lOutline, pos('>',lOutline));
  delete(lOutline,1,length(lsvgHeader));
  result := lSVGHeader + lFilled + lOutline;
end;

function TTablerTwoToneIconList.GetToneColor: TColor;
begin
  Result := fToneColor;
end;

procedure TTablerTwoToneIconList.SetFillColor(Value: TColor);
begin
  fFillColor := Value;
  fOutlineLIst.FillColor := value;
end;

procedure TTablerTwoToneIconList.SetToneColor(Value: TColor);
begin
  fToneColor := Value;
  fFilledList.FillColor := value;
end;

end.
