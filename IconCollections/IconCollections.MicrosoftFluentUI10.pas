unit IconCollections.MicrosoftFluentUI10;

interface

uses
  svgViewer.Types;

type
  TMicrosoftFluentUI10 = class(TInterfacedObject,ISVGLibraryCollection)
  protected
    Function GetLibraryName : string;
    Function GetBaseSize : integer;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
  end;

implementation

uses
  svgIcons.FluentUIFilled10,
  svgIcons.FluentUIRegular10,
  svgIcons.FluentUITwoTone;

{ TMicrosoftFluentUI10 }

function TMicrosoftFluentUI10.GetBaseSize: integer;
begin
  Result := 10;
end;

function TMicrosoftFluentUI10.GetLibraryName: string;
begin
  Result := 'Microsoft FluentUI 10x10';
end;

function TMicrosoftFluentUI10.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  case ListType of
    ltOutline : Result := TFluentUIRegular10IconList.create;
    ltFilled : Result := TFluentUIFilled10IconList.create;
    ltTwoTone : Result := TFluentUITwoToneIconList.Create(TFluentUIFilled10IconList.create,TFluentUIRegular10IconList.create);
  end;
end;

function TMicrosoftFluentUI10.GetTypesAvailable: TSVGIconListTypes;
begin
  Result := [ltOutline,ltFilled,ltTwoTone];
end;


end.
