unit svgIconsFluentUITwoTone;

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TFluentUITwoToneIconList = class(TInterfacedObject,ISVGIconList,ISVGTwoToneIconList)
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

{ TFluentUITwoToneIconList }

constructor TFluentUITwoToneIconList.Create(FilledList,
  OutlineList: ISVGIconList);
begin
  inherited Create;
  fFilledList := FilledList;
  fOutlineList := OutlineList;
  GenerateMap;
end;

procedure TFluentUITwoToneIconList.GenerateMap;
var
  iFidx,iOidx,iMap,cmp : integer;
begin
  iFIdx := 0;
  iOidx := 0;
  iMap := 0;
  SetLength(fMapping,Max(fFilledList.Count,fOutlineList.count));
  while (iFidx < fFilledList.count) and (iOIdx < fOutlineList.Count) do
    begin
      Cmp := CompareTExt(fFilledList.name[iFidx],fOutlineList.Name[iOidx]);
      if cmp = 0 then
        begin
          fMapping[iMap].FilledIdx := ifIdx;
          fMapping[iMap].OutlineIdx := ioIdx;
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

function TFluentUITwoToneIconList.GetCount: integer;
begin
  REsult := Length(fMapping);
end;

function TFluentUITwoToneIconList.GetFillColor: TColor;
begin
  Result := fFillColor;
end;

function TFluentUITwoToneIconList.GetName(Index: Integer): string;
begin
  Result := fFilledList.name[fMapping[index].FilledIdx];
end;

function TFluentUITwoToneIconList.GetSource(Index: Integer): string;
var
  lsvgHeader, lFilled, lOutline : string;
begin
  lFilled := fFilledList.Source[fMapping[index].FilledIdx];
  delete(lFilled,1,pos('>',lFilled));
  lFilled := StringReplace(lFilled,'</svg>','',[rfReplaceAll,rfIgnoreCase]);
  lOutline := fFilledlist.Source[fMapping[index].OutlineIdx];
  // grab the header from the outline source
  lsvgHeader := leftStr( lOutline, pos('>',lOutline));
  delete(lOutline,1,length(lsvgHeader));
  result :=
    lSVGHeader +
    SvgRecolor(lFilled,fToneColor) +
    SvgRecolor(lOutline,fFillColor);
end;

function TFluentUITwoToneIconList.GetToneColor: TColor;
begin
  Result := fToneColor;
end;

procedure TFluentUITwoToneIconList.SetFillColor(Value: TColor);
begin
  fFillColor := Value;
end;

procedure TFluentUITwoToneIconList.SetToneColor(Value: TColor);
begin
  fToneColor := Value;
end;

end.
