unit f_ViewIconsConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, svgViewer.Types;

type
  TViewIconsConfigDlg = class(TForm)
    pnlButtons: TPanel;
    btnCancel: TButton;
    btnOk: TButton;
    lblPngImageSize: TLabel;
    edPngSize: TEdit;
    ckSaveScaled: TCheckBox;
    lblPngSize2: TLabel;
    lblSizeInFilename: TLabel;
    procedure edPngSizeChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    fConfig: ISVGIconConfig;
    procedure SetConfig(const Value: ISVGIconConfig);
    { Private declarations }
  public
    { Public declarations }
    property Config : ISVGIconConfig read fConfig write SetConfig;
  end;

var
  ViewIconsConfigDlg: TViewIconsConfigDlg;

implementation

{$R *.dfm}

procedure TViewIconsConfigDlg.btnOkClick(Sender: TObject);
begin
  fConfig.OptionInt['pngsize'] := StrToIntDef(edPngSize.text,20);
  fConfig.OptionBoolean['pngscaled'] := ckSaveScaled.checked;
end;

procedure TViewIconsConfigDlg.edPngSizeChange(Sender: TObject);
begin
  if edPngSize.Text <> '' then
    lblPngSize2.Caption := 'x ' + edPngSize.text
  else
    lblPngSize2.caption := 'x ?';
end;

procedure TViewIconsConfigDlg.SetConfig(const Value: ISVGIconConfig);
begin
  fConfig := Value;
  edpngSize.text := IntToStr(fConfig.GetOptionIntDefault('pngsize',20));
  ckSaveScaled.Checked := fCOnfig.GetOptionBooleanDefault('pngscaled',true);
end;

end.
