unit svgViewer.ShowLicenseDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  RzDlgBtn;

type
  TShowLicenseDlg = class(TForm)
    btns1: TRzDialogButtons;
    mmoLicense: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Execute(aLicense:String);
  end;

implementation

{$R *.dfm}

{ TShowLicenseDlg }

procedure TShowLicenseDlg.Execute(aLicense: String);
begin
  mmoLicense.lines.text := aLicense;
  ShowModal;
end;

end.
