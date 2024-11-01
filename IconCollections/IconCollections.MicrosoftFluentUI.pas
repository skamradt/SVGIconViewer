unit IconCollections.MicrosoftFluentUI;

interface

uses
  svgViewer.Types;

type
  TInterfacedObjectClass = class of TInterfacedObject;

type
  TMicrosoftFluentUI = class(TInterfacedObject,ISVGLibraryCollection)
  private
    fSize : integer;
    fOutlineClass : TInterfacedObjectClass;
    fFilledClass : TInterfacedObjectClass;
  protected
    Function GetLibraryName : string;
    Function GetBaseSize : integer;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
    function GetLicense: string;
  public
    constructor Create(aSize:Integer;aOutline,aFilled:TInterfacedObjectClass);

  end;

implementation

uses
  System.SysUtils,
  svgViewer.Consts,
  svgIcons.FluentUITwoTone;

{ TMicrosoftFluentUI }

constructor TMicrosoftFluentUI.Create(aSize: Integer; aOutline,
  aFilled: TInterfacedObjectClass);
begin
  inherited create;
  fSize := aSize;
  fOutlineClass := aOutline;
  fFilledClass := aFilled;
end;

function TMicrosoftFluentUI.GetBaseSize: integer;
begin
  Result := fSize;
end;

function TMicrosoftFluentUI.GetLibraryName: string;
begin
  Result := 'Microsoft FluentUI '+IntToStr(fSize);;
end;

function TMicrosoftFluentUI.GetLicense: string;
begin
  result := StringReplace(C_MIT_LICENSE,'{copyright}','Copyright (c) 2020 Microsoft Corporation',[rfReplaceAll,rfIgnoreCase]);
end;

function TMicrosoftFluentUI.GetList(ListType: TSVGIconListType): ISVGIconList;
begin
  case ListType of
    ltOutline : Result := fOutlineClass.create as ISVGIconList;
    ltFilled : Result := fFilledClass.create as ISVGIconList;
    ltTwoTone : Result := TFluentUITwoToneIconList.Create(fFilledClass.create as ISVGIconList,fOutlineClass.create as ISVGIconList);
  end;
end;

function TMicrosoftFluentUI.GetTypesAvailable: TSVGIconListTypes;
begin
  Result := [ltOutline,ltFilled,ltTwoTone];
end;

end.
