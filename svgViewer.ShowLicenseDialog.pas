unit svgViewer.ShowLicenseDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TShowLicenseDlg = class(TForm)
    mmoLicense: TMemo;
    Button1: TButton;
    Panel1: TPanel;
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
