unit IconCollections.UserFolderIcons;

interface

uses
  svgViewer.Types;

type
  TInterfacedObjectClass = class of TInterfacedObject;

type
  TUserFolderIcons = class(TInterfacedObject,ISVGLibraryCollection,ISVGUserFolderList)
  private
    fFolder : string;
  protected
    Function GetLibraryName : string;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
    procedure SetDirectory(value:String);
    function GetDirectory:string;
    function GetLicense: string;
  public
    constructor Create(const aFolder:String);

  end;

implementation

uses
  System.SysUtils,
  svgIcons.UserFolderIcons;

{ TUserFolderIcons }

constructor TUserFolderIcons.Create(const aFolder:String);
begin
  inherited create;
  fFolder := aFolder;
end;

function TUserFolderIcons.GetDirectory: string;
begin
  Result := fFolder;
end;

function TUserFolderIcons.GetLibraryName: string;
begin
  Result := 'User Library Folder';
end;

function TUserFolderIcons.GetLicense: string;
begin
  result := '';
end;

function TUserFolderIcons.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  Result := TUserFolderIconList.Create(fFolder);
end;

function TUserFolderIcons.GetTypesAvailable: TSVGIconListTypes;
begin
  Result := [ltOutline];
end;

procedure TUserFolderIcons.SetDirectory(value: String);
begin
  fFolder := Value;
end;

end.
