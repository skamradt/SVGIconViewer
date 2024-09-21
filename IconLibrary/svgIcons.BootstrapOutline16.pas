unit svgIcons.BootstrapOutline16;

(* Auto Generated by svgViewer.Generator on 9/21/2024 10:41:48 AM *)

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TBootstrapOutline16IconList = class(TInterfacedObject,ISVGIconList)
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
  svgIcons.BootstrapOutline16.names,
  svgIcons.BootstrapOutline16.icons;

const
  c_icon_count = 1355;

function TBootstrapOutline16IconList.GetCount : integer;
begin
  result := 1355;
end;

function TBootstrapOutline16IconList.GetFillColor : TColor;
begin
  Result := fFillColor;
end;

procedure TBootstrapOutline16IconList.SetFillColor(Value:TColor);
begin
  fFillColor := Value;
end;

function TBootstrapOutline16IconList.GetName(Index:Integer):string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  result := svgIcons.BootstrapOutline16.names.GetName(Index);
end;

function TBootstrapOutline16IconList.GetSource(Index:Integer):string;
var
  svg : string;
  var
    sColor : string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  if fFillcolor = clNone then
    sColor := ''
  else
    sColor := ' fill="'+ColorToWebColorStr(fFillColor)+'"';
  Result := '<svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">'+
    StringReplace(svgIcons.BootstrapOutline16.icons.GetIcon(Index),' fill="#212121"',sColor,[rfReplaceAll])+
    '</svg>';
end;

end.