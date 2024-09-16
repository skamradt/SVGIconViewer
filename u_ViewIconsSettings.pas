unit u_ViewIconsSettings;

interface

// super simple configuration settings file.

uses
  vcl.Graphics,
  system.Classes,
  svgViewer.Types;

type
  TSettings = class(TInterfacedObject,ISVGIconConfig)
  private
    fSettings : tStringlist;
  protected
    function GetOptionStr(Name:String):String;
    function GetOptionInt(Name:STring):Integer;
    function GetOptionColor(Name:STring):TColor;
    function GetOptionBool(Name:String):Boolean;
    procedure SetOptionStr(Name,value:String);
    procedure SetOptionInt(Name:String;value:Integer);
    procedure SetOptionColor(Name:STring;value:TColor);
    procedure SetOptionBool(Name:String;value:Boolean);
  public
    constructor Create;
    destructor Destroy; override;
    function GetOptionStrDefault(Name,Default:String):String;
    function GetOptionIntDefault(Name:STring;Default:Integer):Integer;
    function GetOptionColorDefault(Name:STring;Default:TColor):TColor;
    function GetOptionBooleanDefault(Name:STring;Default:Boolean):Boolean;
    property OptionStr[Name:String]:String read GetOptionStr write SetOptionStr;
    property OptionInt[Name:String]:Integer read GetOptionInt write SetOptionInt;
    property OptionColor[Name:String]:TColor read GetOptionColor write SetOptionColor;
    property OptionBoolean[Name:String]:Boolean read GetOptionBool write SetOptionBool;
  end;

implementation

uses
  System.SysUtils,
  system.IOUtils,
  System.StrUtils,
  vcl.GraphUtil;

{ TSettings }

constructor TSettings.Create;
begin
  inherited;
  fSettings := tStringlist.create;
  if tFile.Exists(TPath.GetHomePath+'\svgViewer.config') then
    fSettings.LoadFromFile(TPath.GetHomePath+'\svgViewer.config');
end;

destructor TSettings.Destroy;
begin
  fSettings.SaveToFile(TPath.GetHomePath+'\svgViewer.config');
  fSettings.free;
  inherited;
end;

function TSettings.GetOptionBool(Name: String): Boolean;
begin
  Result := StrToBool(fSettings.values[name]);
end;

function TSettings.GetOptionBooleanDefault(Name: STring;
  Default: Boolean): Boolean;
begin
  Result := StrToBoolDef(fSettings.values[name],Default);
end;

function TSettings.GetOptionColor(Name: STring): TColor;
begin
  if not MatchText(fSettings.Values[name],['(none)','']) then
    Result := WebColorStrToColor(fSettings.Values[name])
  else
    Result := clNone;
end;

function TSettings.GetOptionColorDefault(Name: STring; Default: TColor): TColor;
begin
  if fSettings.Values[name] <> '' then
    Result := GetOptionColor(Name)
  else
    Result := Default;
end;

function TSettings.GetOptionInt(Name: STring): Integer;
begin
  Result := StrToIntDef(fSettings.Values[name],0);
end;

function TSettings.GetOptionIntDefault(Name: STring; Default: Integer): Integer;
begin
    Result := StrToIntDef(fSettings.Values[name],Default);
end;

function TSettings.GetOptionStr(Name: String): String;
begin
  Result := fSettings.Values[name];
end;

function TSettings.GetOptionStrDefault(Name, Default: String): String;
begin
  if fSettings.Values[name] <> '' then
    Result := fSettings.Values[name]
  else
    Result := Default;
end;

procedure TSettings.SetOptionBool(Name: String; value: Boolean);
begin
  fSettings.Values[name] := BoolToStr(value,true);
end;

procedure TSettings.SetOptionColor(Name: STring; value: TColor);
begin
  if Value = clNone then
    fSettings.Values[name] := '(none)'
  else
    fSettings.Values[name] := ColorToWebColorStr(value);
end;

procedure TSettings.SetOptionInt(Name: String; value: Integer);
begin
  fSettings.Values[name] := IntToSTr(Value);
end;

procedure TSettings.SetOptionStr(Name, value: String);
begin
  fSettings.Values[name] := Value;
end;

end.
