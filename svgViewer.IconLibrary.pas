unit svgViewer.IconLibrary;

interface

uses
  System.Classes,
  svgViewer.types;

type
  TIconLibrary = class(TInterfacedObject,ISVGLibrary)
  private
    fCollections : TinterfaceList;
  protected
    procedure RegisterIconCollection(value:ISVGLibraryCollection);
    function CollectionCount : integer;
    function CollectioName(Value:Integer):String;
    function Collection(value:Integer):ISVGLibraryCollection;
public
    constructor Create;
    destructor Destroy; override;
   end;

implementation

{ TIconLibrary }

function TIconLibrary.Collection(value: Integer): ISVGLibraryCollection;
begin
  Result := fCollections.items[value] as ISVGLibraryCollection;
end;

function TIconLibrary.CollectioName(Value: Integer): String;
begin
  result := (fCollections.items[value] as ISVGLibraryCollection).Name;
end;

function TIconLibrary.CollectionCount: integer;
begin
  result := fCollections.count;
end;

constructor TIconLibrary.Create;
begin
  Inherited;
  fCollections := TInterfaceList.create;
end;

destructor TIconLibrary.Destroy;
begin
  fCollections.free;
  inherited;
end;

procedure TIconLibrary.RegisterIconCollection(value: ISVGLibraryCollection);
begin
  fCollections.add(value);
end;

end.
