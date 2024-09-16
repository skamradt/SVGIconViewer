unit IconCollections.RegisterMicrosoftFluentUI;

interface

uses
  svgViewer.Types;

procedure RegisterCollections(aLibrary:ISVGLibrary);

implementation

uses
  IconCollections.MicrosoftFluentUI,
  svgIcons.FluentUIFilled10,
  svgIcons.FluentUIRegular10,
  svgIcons.FluentUIFilled12,
  svgIcons.FluentUIRegular12,
  svgIcons.FluentUIFilled16,
  svgIcons.FluentUIRegular16,
  svgIcons.FluentUIFilled20,
  svgIcons.FluentUIRegular20,
  svgIcons.FluentUIFilled24,
  svgIcons.FluentUIRegular24,
  svgIcons.FluentUIFilled28,
  svgIcons.FluentUIRegular28,
  svgIcons.FluentUIFilled32,
  svgIcons.FluentUIRegular32;

procedure RegisterCollections(aLibrary:ISVGLibrary);
begin
  aLibrary.RegisterIconCollection(TMicrosoftFluentUI.create(10,TFluentUIRegular10IconList,TFluentUIFilled10IconList));
  aLibrary.RegisterIconCollection(TMicrosoftFluentUI.create(12,TFluentUIRegular12IconList,TFluentUIFilled12IconList));
  aLibrary.RegisterIconCollection(TMicrosoftFluentUI.create(16,TFluentUIRegular16IconList,TFluentUIFilled16IconList));
  aLibrary.RegisterIconCollection(TMicrosoftFluentUI.create(20,TFluentUIRegular20IconList,TFluentUIFilled20IconList));
  aLibrary.RegisterIconCollection(TMicrosoftFluentUI.create(24,TFluentUIRegular24IconList,TFluentUIFilled24IconList));
  aLibrary.RegisterIconCollection(TMicrosoftFluentUI.create(28,TFluentUIRegular28IconList,TFluentUIFilled28IconList));
  aLibrary.RegisterIconCollection(TMicrosoftFluentUI.create(32,TFluentUIRegular32IconList,TFluentUIFilled32IconList));
end;

end.
