unit svgIcons.FluentUIFilled32;

(* Auto Generated by svgViewer.Generator on 9/14/2024 10:05:02 PM *)

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TFluentUIFilled32IconList = class(TInterfacedObject,ISVGIconList)
  private
    fFillColor : TColor;
  protected
    function GetCount : integer;
    function GetName(Index:Integer):string;
    function GetSource(Index:Integer):string;
    function GetFillColor : TColor;
    procedure SetFillColor(Value:TColor);
  public
    property Count : integer read GetCount;
    property Name[index:integer] : string read GetName;
    property Source[index:integer] : string read GetSource;
    property FillColor : TColor read GetFillColor write SetFillColor default clNone;
  end;

implementation

uses
  svgIcons.FluentUIFilled32.names,
  svgIcons.FluentUIFilled32.icons;

const
  c_icon_count = 623;

function TFluentUIFilled32IconList.GetCount : integer;
begin
  result := 623;
end;

function TFluentUIFilled32IconList.GetFillColor : TColor;
begin
  Result := fFillColor;
end;

procedure TFluentUIFilled32IconList.SetFillColor(Value:TColor);
begin
  fFillColor := Value;
end;

function TFluentUIFilled32IconList.GetName(Index:Integer):string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  result := svgIcons.FluentUIFilled32.names.GetName(Index);
end;

function TFluentUIFilled32IconList.GetSource(Index:Integer):string;
var
  sColor : string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  if fFillcolor = clNone then
    sColor := ''
  else
    sColor := ' fill="'+ColorToWebColorStr(fFillColor)+'"';
  Result := '<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">'+
    StringReplace(svgIcons.FluentUIFilled32.icons.GetIcon(Index),' fill="#212121"',sColor,[rfReplaceAll])+
    '</svg>';
end;

end.