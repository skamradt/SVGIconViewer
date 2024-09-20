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
  end;

implementation

uses
  System.Sysutils,
  svgIcons.BootstrapOutline16,
  svgIcons.BootstrapFilled16,
  svgIcons.FluentUITwoTone;

{ TBootstrapIcons16 }

function TBootstrapIcons16.GetBaseSize: integer;
begin
  Result := 16;
end;

function TBootstrapIcons16.GetLibraryName: string;
begin
  Result := 'Bootstrap 16';
end;

function TBootstrapIcons16.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  case ListType of
    ltOutline : Result := TBootstrapOutline16IconList.create;
    ltFilled : Result := TBootstrapFilled16IconList.create;
    ltTwoTone : Result := TFluentUITwoToneIconList.Create(TBootstrapOutline16IconList.create,TBootstrapFilled16IconList.create);
  end;
end;

function TBootstrapIcons16.GetTypesAvailable: TSVGIconListTypes;
begin
  Result := [ltOutline,ltFilled,ltTwoTone];
end;


end.
