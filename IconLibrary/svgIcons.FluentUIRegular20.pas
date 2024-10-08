unit svgIcons.FluentUIRegular20;

(* Auto Generated by svgViewer.Generator on 9/14/2024 10:00:58 PM *)

interface

uses
  System.SysUtils,
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TFluentUIRegular20IconList = class(TInterfacedObject,ISVGIconList)
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
  svgIcons.FluentUIRegular20.names,
  svgIcons.FluentUIRegular20.icons;

const
  c_icon_count = 2537;

function TFluentUIRegular20IconList.GetCount : integer;
begin
  result := 2537;
end;

function TFluentUIRegular20IconList.GetFillColor : TColor;
begin
  Result := fFillColor;
end;

procedure TFluentUIRegular20IconList.SetFillColor(Value:TColor);
begin
  fFillColor := Value;
end;

function TFluentUIRegular20IconList.GetName(Index:Integer):string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  result := svgIcons.FluentUIRegular20.names.GetName(Index);
end;

function TFluentUIRegular20IconList.GetSource(Index:Integer):string;
var
  sColor : string;
begin
  if index > c_icon_count then
    raise EArgumentOutOfRangeException.Create('Requested icon index is out of range');
  if fFillcolor = clNone then
    sColor := ''
  else
    sColor := ' fill="'+ColorToWebColorStr(fFillColor)+'"';
  Result := '<svg viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">'+
    StringReplace(svgIcons.FluentUIRegular20.icons.GetIcon(Index),' fill="#212121"',sColor,[rfReplaceAll])+
    '</svg>';
end;

end.