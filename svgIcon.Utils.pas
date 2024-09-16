unit svgIcon.Utils;

interface

uses
  System.SysUtils,
  Vcl.Graphics,
  Vcl.GraphUtil;

function SvgWrap(aHeight,aWidth:integer;aContents:string;aRootColor:TColor=clNone):string;
function SvgRecolor(aContents:String;aColor:TColor=clNone):String; overload;
function SvgRecolor(aContents:String;aColor:String):String; overload;

implementation

function SvgRecolor(aContents:String;aColor:TColor=clNone):String;
var
  sColor : string;
begin
  sColor := '';
  if aColor <> clNone then
    sColor := ' fill="'+ColorToWebColorStr(aColor)+'"';
  result := svgRecolor(aContents,sColor);
end;

function SvgRecolor(aContents:String;aColor:String):String; overload;
begin
  Result := StringReplace(aContents,' fill="#212121"',aColor,[rfReplaceAll,rfIgnoreCase]);
end;

function SvgWrap(aHeight,aWidth:integer;aContents:string;aRootColor:TColor=clNone):string;
var
  sColor : string;
begin
  sColor := '';
  if aRootColor <> clNone then
    sColor := ' fill="'+ColorToWebColorStr(aRootColor)+'"';
  result := '<svg viewBox="0 0 '+IntToStr(aHeight)+' '+IntToStr(aWidth)+'"'+sColor+' xmlns="http://www.w3.org/2000/svg">' +
    aContents + '</svg>';
end;

end.
