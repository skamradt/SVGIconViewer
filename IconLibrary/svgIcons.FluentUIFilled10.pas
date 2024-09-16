unit svgIcons.FluentUIFilled10;

(* Auto Generated by svgViewer.Generator on 9/14/2024 10:02:31 PM *)

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TFluentUIFilled10IconList = class(TInterfacedObject,ISVGIconList)
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
  svgIcons.FluentUIFilled10.names,
  svgIcons.FluentUIFilled10.icons;

const
  c_icon_count = 4;

function TFluentUIFilled10IconList.GetCount : integer;
begin
  result := 4;
end;

function TFluentUIFilled10IconList.GetFillColor : TColor;
begin
  Result := fFillColor;
end;

procedure TFluentUIFilled10IconList.SetFillColor(Value:TColor);
begin
  fFillColor := Value;
end;

function TFluentUIFilled10IconList.GetName(Index:Integer):string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  result := svgIcons.FluentUIFilled10.names.GetName(Index);
end;

function TFluentUIFilled10IconList.GetSource(Index:Integer):string;
var
  sColor : string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  if fFillcolor = clNone then
    sColor := ''
  else
    sColor := ' fill="'+ColorToWebColorStr(fFillColor)+'"';
  Result := '<svg viewBox="0 0 10 10" xmlns="http://www.w3.org/2000/svg">'+
    StringReplace(svgIcons.FluentUIFilled10.icons.GetIcon(Index),' fill="#212121"',sColor,[rfReplaceAll])+
    '</svg>';
end;

end.