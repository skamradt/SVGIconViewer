unit IconCollections.Bootstrap;

interface

uses
  svgViewer.Types;

type
  TBootstrapIcons16 = class(TInterfacedObject,ISVGLibraryCollection)
  protected
    Function GetLibraryName : string;
    Function GetBaseSize : integer;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
    Function GetLicense : String;
  end;

implementation

uses
  System.Sysutils,
  svgViewer.Consts,
  svgIcons.BootstrapOutline16,
  svgIcons.BootstrapFilled16,
  svgIcons.BootstrapTwoTone;

{ TBootstrapIcons16 }

function TBootstrapIcons16.GetBaseSize: integer;
begin
  Result := 16;
end;

function TBootstrapIcons16.GetLibraryName: string;
begin
  Result := 'Bootstrap 16';
end;

function TBootstrapIcons16.GetLicense: String;
begin
  result := StringReplace(C_MIT_LICENSE,'{copyright}','Copyright (c) 2011-2024 The Bootstrap Authors',[rfReplaceAll,rfIgnoreCase]);
end;

function TBootstrapIcons16.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  case ListType of
    ltOutline : Result := TBootstrapOutline16IconList.create;
    ltFilled : Result := TBootstrapFilled16IconList.create;
    ltTwoTone : Result := TBootstrapTwoToneIconList.Create(TBootstrapFilled16IconList.create,TBootstrapOutline16IconList.create);
  end;
end;

function TBootstrapIcons16.GetTypesAvailable: TSVGIconListTypes;
begin
  Result := [ltOutline,ltFilled,ltTwoTone];
end;


end.
