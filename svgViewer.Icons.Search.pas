unit svgViewer.Icons.Search;

interface

uses
  vcl.Graphics,
  vcl.GraphUtil,
  svgViewer.Types;

type
  TSearchIconList = class(TInterfacedObject,ISVGIconList,ISVGSearchList,ISVGTwoToneIconList,ISVGUserFolderList)
  private
    fFillColor : TColor;
    fToneColor : TColor;
    fBaseList : ISVGIconList;
    fMatch : TArray<Integer>;
    fSearchText : string;
  protected
    function GetCount : integer;
    function GetName(Index:Integer):string;
    function GetSource(Index:Integer):string;
    function GetFillColor : TColor;
    procedure SetFillColor(Value:TColor);
    function GetSearchText : string;
    procedure SetSearchText(const Value:String);
    function GetBaseList : ISVGIconList;
    procedure SetBaseList(value : ISVGIconLIst);
    function GetToneColor : TColor;
    procedure SetToneColor(Value:TColor);
    procedure SetDirectory(value:String);
    function GetDirectory:string;
  public
    property Count : integer read GetCount;
    property Name[index:integer] : string read GetName;
    property Source[index:integer] : string read GetSource;
    property FillColor : TColor read GetFillColor write SetFillColor default clNone;
    property ToneColor : TColor read GetToneColor write SetToneColor;
    property BaseList : ISVGIconList read GetBaseList write SetBaseList;
    property SearchText : string read GetSearchText write SetSearchText;
  end;



implementation

uses
  SysUtils,
  StrUtils;

{ TSearchIconList }

function TSearchIconList.GetBaseList: ISVGIconList;
begin
  result := fBaseList;
end;

function TSearchIconList.GetCount: integer;
begin
  if fSearchText = '' then
    result := fBaseList.count
  else
    Result := Length(fMatch);
end;

function TSearchIconList.GetDirectory: string;
var
  FolderList : ISVGUserFolderList;
begin
  Result := '';
  if Supports(fBaseList,ISVGUserFolderList,FolderList) then
    result := FolderList.Directory;
end;

function TSearchIconList.GetFillColor: TColor;
begin
  result := fFillColor;
end;

function TSearchIconList.GetName(Index: Integer): string;
begin
  if fSearchText = '' then
    Result := fBaseList.Name[Index]
  else
    Result := fBaseList.Name[fMatch[index]];
end;

function TSearchIconList.GetSearchText: string;
begin
  Result := fSearchText;
end;

function TSearchIconList.GetSource(Index: Integer): string;
begin
  if fSearchText = '' then
    Result := fBaseList.source[index]
  else
    Result := fBaseList.Source[fMatch[index]];
end;

function TSearchIconList.GetToneColor: TColor;
begin
  Result := fToneColor;
end;

procedure TSearchIconList.SetBaseList(value: ISVGIconLIst);
var
  IconTone : ISVGTwoToneIconList;
begin
  fBaseList := Value;
  fBaseList.FillColor := fFillColor;
  if Supports(fBaseList,ISVGTwoToneIconList,IconTone) then
    IconTone.ToneColor := fToneColor;
  SetSearchText(fSearchText);
end;

procedure TSearchIconList.SetDirectory(value: String);
var
  FolderList : ISVGUserFolderList;
begin
  if Supports(fBaseList,ISVGUserFolderList,FolderList) then
    Folderlist.Directory := value;
end;

procedure TSearchIconList.SetFillColor(Value: TColor);
begin
  fFillColor := Value;
  if assigned(fBaseList) then
    fBaseList.FillColor := fFillColor;
end;

procedure TSearchIconList.SetSearchText(const Value: String);
var
  ix,iy : integer;
begin
  fSearchText := Value;
  SetLength(fMatch,fBaseList.COunt);
  iy := 0;
  for ix := 0 to fBaseList.Count-1 do
    begin
      if ContainsText(fBaseList.Name[ix],fSearchText) then
        begin
          fMatch[iy] := ix;
          inc(iy);
        end;
    end;
  SetLength(fMatch,iy);
end;

procedure TSearchIconList.SetToneColor(Value: TColor);
var
  IconTone : ISVGTwoToneIconList;
begin
  fToneColor := Value;
  if Supports(fBaseList,ISVGTwoToneIconList,IconTone) then
    IconTone.ToneColor := fToneColor;
end;

end.
