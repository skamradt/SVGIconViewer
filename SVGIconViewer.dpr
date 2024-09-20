program SVGIconViewer;

uses
  Vcl.Forms,
  f_ViewIcons in 'f_ViewIcons.pas' {Form4},
  Vcl.Themes,
  Vcl.Styles,
  svgViewer.Types in 'svgViewer.Types.pas',
  svgViewer.Icons.Search in 'svgViewer.Icons.Search.pas',
  f_ViewIconsConfig in 'f_ViewIconsConfig.pas' {ViewIconsConfigDlg},
  u_ViewIconsSettings in 'u_ViewIconsSettings.pas',
  svgIcon.Utils in 'svgIcon.Utils.pas',
  svgViewer.IconLibrary in 'svgViewer.IconLibrary.pas',
  svgIcons.FluentUIFilled20 in 'IconLibrary\svgIcons.FluentUIFilled20.pas',
  svgIcons.FluentUIRegular20 in 'IconLibrary\svgIcons.FluentUIRegular20.pas',
  svgIcons.FluentUIFilled20.icons in 'IconLibrary\svgIcons.FluentUIFilled20.icons.pas',
  svgIcons.FluentUIFilled20.names in 'IconLibrary\svgIcons.FluentUIFilled20.names.pas',
  svgIcons.FluentUIFilled20.source in 'IconLibrary\svgIcons.FluentUIFilled20.source.pas',
  svgIcons.FluentUIRegular20.icons in 'IconLibrary\svgIcons.FluentUIRegular20.icons.pas',
  svgIcons.FluentUIRegular20.names in 'IconLibrary\svgIcons.FluentUIRegular20.names.pas',
  svgIcons.FluentUIRegular20.source in 'IconLibrary\svgIcons.FluentUIRegular20.source.pas',
  svgIcons.FluentUITwoTone in 'IconLibrary\svgIcons.FluentUITwoTone.pas',
  svgIcons.FluentUIFilled24.icons in 'IconLibrary\svgIcons.FluentUIFilled24.icons.pas',
  svgIcons.FluentUIFilled24.names in 'IconLibrary\svgIcons.FluentUIFilled24.names.pas',
  svgIcons.FluentUIFilled24 in 'IconLibrary\svgIcons.FluentUIFilled24.pas',
  svgIcons.FluentUIFilled24.source in 'IconLibrary\svgIcons.FluentUIFilled24.source.pas',
  svgIcons.FluentUIRegular24.icons in 'IconLibrary\svgIcons.FluentUIRegular24.icons.pas',
  svgIcons.FluentUIRegular24.names in 'IconLibrary\svgIcons.FluentUIRegular24.names.pas',
  svgIcons.FluentUIRegular24 in 'IconLibrary\svgIcons.FluentUIRegular24.pas',
  svgIcons.FluentUIRegular24.source in 'IconLibrary\svgIcons.FluentUIRegular24.source.pas',
  svgIcons.TablerFilled24.icons in 'IconLibrary\svgIcons.TablerFilled24.icons.pas',
  svgIcons.TablerFilled24.names in 'IconLibrary\svgIcons.TablerFilled24.names.pas',
  svgIcons.TablerFilled24 in 'IconLibrary\svgIcons.TablerFilled24.pas',
  svgIcons.TablerFilled24.source in 'IconLibrary\svgIcons.TablerFilled24.source.pas',
  svgIcons.TablerOutline24.icons in 'IconLibrary\svgIcons.TablerOutline24.icons.pas',
  svgIcons.TablerOutline24.names in 'IconLibrary\svgIcons.TablerOutline24.names.pas',
  svgIcons.TablerOutline24 in 'IconLibrary\svgIcons.TablerOutline24.pas',
  svgIcons.TablerOutline24.source in 'IconLibrary\svgIcons.TablerOutline24.source.pas',
  IconCollections.TablerIcons24 in 'IconCollections\IconCollections.TablerIcons24.pas',
  svgIcons.FluentUIFilled10.icons in 'IconLibrary\svgIcons.FluentUIFilled10.icons.pas',
  svgIcons.FluentUIFilled10.names in 'IconLibrary\svgIcons.FluentUIFilled10.names.pas',
  svgIcons.FluentUIFilled10 in 'IconLibrary\svgIcons.FluentUIFilled10.pas',
  svgIcons.FluentUIFilled10.source in 'IconLibrary\svgIcons.FluentUIFilled10.source.pas',
  svgIcons.FluentUIRegular10.icons in 'IconLibrary\svgIcons.FluentUIRegular10.icons.pas',
  svgIcons.FluentUIRegular10.names in 'IconLibrary\svgIcons.FluentUIRegular10.names.pas',
  svgIcons.FluentUIRegular10 in 'IconLibrary\svgIcons.FluentUIRegular10.pas',
  svgIcons.FluentUIRegular10.source in 'IconLibrary\svgIcons.FluentUIRegular10.source.pas',
  IconCollections.MicrosoftFluentUI in 'IconCollections\IconCollections.MicrosoftFluentUI.pas',
  IconCollections.RegisterMicrosoftFluentUI in 'IconCollections\IconCollections.RegisterMicrosoftFluentUI.pas',
  svgIcons.FluentUIFilled12.icons in 'IconLibrary\svgIcons.FluentUIFilled12.icons.pas',
  svgIcons.FluentUIFilled12.names in 'IconLibrary\svgIcons.FluentUIFilled12.names.pas',
  svgIcons.FluentUIFilled12 in 'IconLibrary\svgIcons.FluentUIFilled12.pas',
  svgIcons.FluentUIFilled12.source in 'IconLibrary\svgIcons.FluentUIFilled12.source.pas',
  svgIcons.FluentUIFilled16.icons in 'IconLibrary\svgIcons.FluentUIFilled16.icons.pas',
  svgIcons.FluentUIFilled16.names in 'IconLibrary\svgIcons.FluentUIFilled16.names.pas',
  svgIcons.FluentUIFilled16 in 'IconLibrary\svgIcons.FluentUIFilled16.pas',
  svgIcons.FluentUIFilled16.source in 'IconLibrary\svgIcons.FluentUIFilled16.source.pas',
  svgIcons.FluentUIRegular12.icons in 'IconLibrary\svgIcons.FluentUIRegular12.icons.pas',
  svgIcons.FluentUIRegular12.names in 'IconLibrary\svgIcons.FluentUIRegular12.names.pas',
  svgIcons.FluentUIRegular12 in 'IconLibrary\svgIcons.FluentUIRegular12.pas',
  svgIcons.FluentUIRegular12.source in 'IconLibrary\svgIcons.FluentUIRegular12.source.pas',
  svgIcons.FluentUIRegular16.icons in 'IconLibrary\svgIcons.FluentUIRegular16.icons.pas',
  svgIcons.FluentUIRegular16.names in 'IconLibrary\svgIcons.FluentUIRegular16.names.pas',
  svgIcons.FluentUIRegular16 in 'IconLibrary\svgIcons.FluentUIRegular16.pas',
  svgIcons.FluentUIRegular16.source in 'IconLibrary\svgIcons.FluentUIRegular16.source.pas',
  svgIcons.FluentUIFilled28.icons in 'IconLibrary\svgIcons.FluentUIFilled28.icons.pas',
  svgIcons.FluentUIFilled28.names in 'IconLibrary\svgIcons.FluentUIFilled28.names.pas',
  svgIcons.FluentUIFilled28 in 'IconLibrary\svgIcons.FluentUIFilled28.pas',
  svgIcons.FluentUIFilled28.source in 'IconLibrary\svgIcons.FluentUIFilled28.source.pas',
  svgIcons.FluentUIFilled32.icons in 'IconLibrary\svgIcons.FluentUIFilled32.icons.pas',
  svgIcons.FluentUIFilled32.names in 'IconLibrary\svgIcons.FluentUIFilled32.names.pas',
  svgIcons.FluentUIFilled32 in 'IconLibrary\svgIcons.FluentUIFilled32.pas',
  svgIcons.FluentUIFilled32.source in 'IconLibrary\svgIcons.FluentUIFilled32.source.pas',
  svgIcons.FluentUIRegular28.icons in 'IconLibrary\svgIcons.FluentUIRegular28.icons.pas',
  svgIcons.FluentUIRegular28.names in 'IconLibrary\svgIcons.FluentUIRegular28.names.pas',
  svgIcons.FluentUIRegular28 in 'IconLibrary\svgIcons.FluentUIRegular28.pas',
  svgIcons.FluentUIRegular28.source in 'IconLibrary\svgIcons.FluentUIRegular28.source.pas',
  svgIcons.FluentUIRegular32.icons in 'IconLibrary\svgIcons.FluentUIRegular32.icons.pas',
  svgIcons.FluentUIRegular32.names in 'IconLibrary\svgIcons.FluentUIRegular32.names.pas',
  svgIcons.FluentUIRegular32 in 'IconLibrary\svgIcons.FluentUIRegular32.pas',
  svgIcons.FluentUIRegular32.source in 'IconLibrary\svgIcons.FluentUIRegular32.source.pas',
  IconCollections.RegisterTablerIcons in 'IconCollections\IconCollections.RegisterTablerIcons.pas',
  IconCollections.UserFolderIcons in 'IconCollections\IconCollections.UserFolderIcons.pas',
  svgIcons.UserFolderIcons in 'IconLibrary\svgIcons.UserFolderIcons.pas',
  svgViewer.GenerateImageCollection in 'svgViewer.GenerateImageCollection.pas',
  svgViewer.RightToolbarController in 'svgViewer.RightToolbarController.pas',
  svgIcons.BootstrapFilled16.icons in 'IconLibrary\svgIcons.BootstrapFilled16.icons.pas',
  svgIcons.BootstrapFilled16.names in 'IconLibrary\svgIcons.BootstrapFilled16.names.pas',
  svgIcons.BootstrapFilled16 in 'IconLibrary\svgIcons.BootstrapFilled16.pas',
  svgIcons.BootstrapFilled16.source in 'IconLibrary\svgIcons.BootstrapFilled16.source.pas',
  svgIcons.BootstrapOutline16.icons in 'IconLibrary\svgIcons.BootstrapOutline16.icons.pas',
  svgIcons.BootstrapOutline16.names in 'IconLibrary\svgIcons.BootstrapOutline16.names.pas',
  svgIcons.BootstrapOutline16 in 'IconLibrary\svgIcons.BootstrapOutline16.pas',
  svgIcons.BootstrapOutline16.source in 'IconLibrary\svgIcons.BootstrapOutline16.source.pas',
  IconCollections.Bootstrap in 'IconCollections\IconCollections.Bootstrap.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Modern Light');
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
