object ShowLicenseDlg: TShowLicenseDlg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Icon Collection License'
  ClientHeight = 462
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object mmoLicense: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 668
    Height = 419
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'MIT License'
      ''
      'Copyright (c) 2020 Microsoft Corporation'
      ''
      
        'Permission is hereby granted, free of charge, to any person obta' +
        'ining a copy'
      
        'of this software and associated documentation files (the "Softwa' +
        're"), to deal'
      
        'in the Software without restriction, including without limitatio' +
        'n the rights'
      
        'to use, copy, modify, merge, publish, distribute, sublicense, an' +
        'd/or sell'
      
        'copies of the Software, and to permit persons to whom the Softwa' +
        're is'
      'furnished to do so, subject to the following conditions:'
      ''
      
        'The above copyright notice and this permission notice shall be i' +
        'ncluded in all'
      'copies or substantial portions of the Software.'
      ''
      
        'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, ' +
        'EXPRESS OR'
      
        'IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANT' +
        'ABILITY,'
      
        'FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVEN' +
        'T SHALL THE'
      
        'AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR' +
        ' OTHER'
      
        'LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ' +
        'ARISING FROM,'
      
        'OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DE' +
        'ALINGS IN THE'
      'SOFTWARE.')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 425
    Width = 674
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 421
    DesignSize = (
      674
      37)
    object Button1: TButton
      Left = 596
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
end
