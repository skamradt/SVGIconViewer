unit IconCollections.MicrosoftFluentUI24;

interface

uses
  svgViewer.Types;

type
  TMicrosoftFluentUI24 = class(TInterfacedObject,ISVGLibraryCollection)
  protected
    Function GetLibraryName : string;
    Function GetBaseSize : integer;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
  end;

implementation

uses
  svgIcons.FluentUIFilled24,
  svgIcons.FluentUIRegular24,
  svgIcons.FluentUITwoTone;

{ TMicrosoftFluentUI24 }

function TMicrosoftFluentUI24.GetBaseSize: integer;
begin
  Result := 24;
end;

function TMicrosoftFluentUI24.GetLibraryName: string;
begin
  Result := 'Microsoft FluentUI 24x24';
end;

function TMicrosoftFluentUI24.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  case ListType of
    ltOutline : Result := TFluentUIRegular24IconList.create;
    ltFilled : Result := TFluentUIFilled24IconList.create;
    ltTwoTone : Result := TFluentUITwoToneIconList.Create(TFluentUIFilled24IconList.create,TFluentUIRegular24IconList.create);
  end;
end;

function TMicrosoftFluentUI24.GetTypesAvailable: TSVGIconListTypes;
begin
  Result := [ltOutline,ltFilled,ltTwoTone];
end;

end.

