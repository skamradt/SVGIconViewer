unit IconCollections.TablerIcons24;

interface

uses
  svgViewer.Types;

type
  TTablerIcons24 = class(TInterfacedObject,ISVGLibraryCollection)
  private
    fStrokeWidth : double;
  protected
    Function GetLibraryName : string;
    Function GetBaseSize : integer;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
  public
    constructor Create(aStrokeWidth:Double);
  end;

implementation

uses
  System.Sysutils,
  svgIcons.TablerFilled24,
  svgIcons.TablerOutline24,
  svgIcons.TablerTwoTone;

{ TTablerIcons24 }

constructor TTablerIcons24.Create(aStrokeWidth: Double);
begin
  inherited create;
  fStrokeWidth := aStrokeWidth;
end;

function TTablerIcons24.GetBaseSize: integer;
begin
  Result := 24;
end;

function TTablerIcons24.GetLibraryName: string;
begin
  Result := 'Tabler-Icons 24';
  if fStrokeWidth <> 2.0 then
    Result := REsult + ' Stroke '+FloatToSTr(fStrokeWidth);
end;

function TTablerIcons24.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  case ListType of
    ltOutline : Result := TTablerOutline24IconList.create(fStrokeWidth);
    ltFilled : Result := TTablerFilled24IconList.create;
    ltTwoTone : Result := TTablerTwoToneIconList.Create(TTablerFilled24IconList.create,TTablerOutline24IconList.create);
  end;
end;

function TTablerIcons24.GetTypesAvailable: TSVGIconListTypes;
begin
  if fStrokeWidth = 2 then
    Result := [ltOutline,ltFilled,ltTwoTone]
  else
    Result := [ltOutline]; // other strokes are identical
end;


end.
