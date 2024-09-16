unit IconCollections.MicrosoftFluentUI20;

interface

uses
  svgViewer.Types;

type
  TMicrosoftFluentUI20 = class(TInterfacedObject,ISVGLibraryCollection)
  protected
    Function GetLibraryName : string;
    Function GetBaseSize : integer;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
  end;

implementation

uses
  svgIcons.FluentUIFilled20,
  svgIcons.FluentUIRegular20,
  svgIcons.FluentUITwoTone;

{ TMicrosoftFluentUI20 }

function TMicrosoftFluentUI20.GetBaseSize: integer;
begin
  Result := 20;
end;

function TMicrosoftFluentUI20.GetLibraryName: string;
begin
  Result := 'Microsoft FluentUI 20x20';
end;

function TMicrosoftFluentUI20.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  case ListType of
    ltOutline : Result := TFluentUIRegular20IconList.create;
    ltFilled : Result := TFluentUIFilled20IconList.create;
    ltTwoTone : Result := TFluentUITwoToneIconList.Create(TFluentUIFilled20IconList.create,TFluentUIRegular20IconList.create);
  end;
end;

function TMicrosoftFluentUI20.GetTypesAvailable: TSVGIconListTypes;
begin
  Result := [ltOutline,ltFilled,ltTwoTone];
end;

end.
