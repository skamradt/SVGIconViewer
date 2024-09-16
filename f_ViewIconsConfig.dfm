object ViewIconsConfigDlg: TViewIconsConfigDlg
  Left = 0
  Top = 0
  Caption = 'Save as PNG Options'
  ClientHeight = 149
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object lblPngImageSize: TLabel
    Left = 32
    Top = 24
    Width = 144
    Height = 15
    Caption = 'Save PNG Image images at '
  end
  object lblPngSize2: TLabel
    Left = 216
    Top = 24
    Width = 21
    Height = 15
    Caption = 'x 20'
  end
  object lblSizeInFilename: TLabel
    Left = 50
    Top = 66
    Width = 235
    Height = 15
    Caption = '(Size in filename will automaticaly be added)'
  end
  object pnlButtons: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 98
    Width = 299
    Height = 43
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 216
      Top = 8
      Width = 75
      Height = 27
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOk: TButton
      AlignWithMargins = True
      Left = 125
      Top = 8
      Width = 75
      Height = 27
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alRight
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
  object edPngSize: TEdit
    Left = 182
    Top = 21
    Width = 27
    Height = 23
    NumbersOnly = True
    TabOrder = 1
    Text = '20'
    OnChange = edPngSizeChange
  end
  object ckSaveScaled: TCheckBox
    Left = 32
    Top = 50
    Width = 261
    Height = 17
    Caption = 'Also save PNG images at 125%, 150%, 200%'
    TabOrder = 2
  end
end
