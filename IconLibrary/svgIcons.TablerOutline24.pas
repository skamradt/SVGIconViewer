unit svgIcons.TablerOutline24;

(* Auto Generated by svgViewer.Generator on 10/31/2024 1:29:47 PM *)

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TTablerOutline24IconList = class(TInterfacedObject,ISVGIconList)
  private
    fFillColor : TColor;
    fStrokeWidth : double;
  protected
    function GetCount : integer;
    function GetName(Index:Integer):string;
    function GetSource(Index:Integer):string;
    function GetFillColor : TColor;
    procedure SetFillColor(Value:TColor);
  public
    constructor Create(aStrokeWidth:double=2);
    property Count : integer read GetCount;
    property Name[index:integer] : string read GetName;
    property Source[index:integer] : string read GetSource;
    property FillColor : TColor read GetFillColor write SetFillColor default clNone;
  end;

implementation

uses
  svgIcons.TablerOutline24.names,
  svgIcons.TablerOutline24.icons;

const
  c_icon_count = 4882;

constructor TTablerOutline24IconList.Create(aStrokeWidth: double);
begin
  fStrokeWidth := aStrokeWidth;
end;

function TTablerOutline24IconList.GetCount : integer;
begin
  result := c_icon_count;
end;

function TTablerOutline24IconList.GetFillColor : TColor;
begin
  Result := fFillColor;
end;

procedure TTablerOutline24IconList.SetFillColor(Value:TColor);
begin
  fFillColor := Value;
end;

function TTablerOutline24IconList.GetName(Index:Integer):string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  result := svgIcons.TablerOutline24.names.GetName(Index);
end;

function TTablerOutline24IconList.GetSource(Index:Integer):string;
var
  sColor : string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  if fFillcolor = clNone then
    sColor := 'currentColor'
  else
    sColor := ColorToWebColorStr(fFillColor);
  Result := '<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g fill="none" stroke="'+sColor+'" '+
    'stroke-width="'+FloatToSTr(fStrokeWidth)+'" stroke-linecap="round" stroke-linejoin="round">'+
    StringReplace(svgIcons.TablerOutline24.icons.GetIcon(Index),'"currentColor"','"'+sColor+'"',[rfReplaceAll,rfIgnoreCase])+'</g>'+
    '</svg>';

  end;
end.