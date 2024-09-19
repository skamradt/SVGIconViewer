unit f_ViewIconsConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, svgViewer.Types,
  System.Skia, Vcl.Skia, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection;

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
    gbPngOptions: TGroupBox;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    svgBuyMeACoffee: TSkSvg;
    lblCopyright: TLabel;
    edUserDir: TButtonedEdit;
    icImages: TImageCollection;
    ilImages: TVirtualImageList;
    procedure edPngSizeChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure svgBuyMeACoffeeClick(Sender: TObject);
    procedure edUserDirRightButtonClick(Sender: TObject);
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

uses
  ShellAPI;

{$R *.dfm}

procedure TViewIconsConfigDlg.btnOkClick(Sender: TObject);
begin
  fConfig.OptionInt['pngsize'] := StrToIntDef(edPngSize.text,20);
  fConfig.OptionBoolean['pngscaled'] := ckSaveScaled.checked;
  fConfig.OptionStr['userdir'] := edUserDir.text;
  modalResult := mrOk;
end;

procedure TViewIconsConfigDlg.edPngSizeChange(Sender: TObject);
begin
  if edPngSize.Text <> '' then
    lblPngSize2.Caption := 'x ' + edPngSize.text
  else
    lblPngSize2.caption := 'x ?';
end;

procedure TViewIconsConfigDlg.edUserDirRightButtonClick(Sender: TObject);
var
  dlg : TFileOpenDialog;
begin
  dlg := TFileOpenDialog.Create(nil);
  try
    dlg.Options := [fdoPickFolders];
    if dlg.Execute then
      edUserDir.text := dlg.Filename;
  finally
    dlg.Free;
  end;
end;

procedure TViewIconsConfigDlg.SetConfig(const Value: ISVGIconConfig);
begin
  fConfig := Value;
  edpngSize.text := IntToStr(fConfig.GetOptionIntDefault('pngsize',20));
  ckSaveScaled.Checked := fCOnfig.GetOptionBooleanDefault('pngscaled',true);
  edUserDir.text := fConfig.OptionStr['userdir'];
end;

procedure TViewIconsConfigDlg.svgBuyMeACoffeeClick(Sender: TObject);
begin
  ShellExecute(handle,'open','https://buymeacoffee.com/skamradt','','',sw_showNormal);
end;

end.
