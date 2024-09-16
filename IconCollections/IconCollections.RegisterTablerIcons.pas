unit IconCollections.RegisterTablerIcons;

interface

uses
  svgViewer.Types;

procedure RegisterCollections(aLibrary:ISVGLibrary);


implementation

uses
  IconCollections.TablerIcons24;

procedure RegisterCollections(aLibrary:ISVGLibrary);
begin
  aLibrary.RegisterIconCollection(TTablerIcons24.Create(2));
  aLibrary.RegisterIconCollection(TTablerIcons24.Create(1.4));
  aLibrary.RegisterIconCollection(TTablerIcons24.Create(1.2));
  aLibrary.RegisterIconCollection(TTablerIcons24.Create(1));
end;

end.
