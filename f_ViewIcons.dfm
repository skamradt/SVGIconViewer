object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'SVG Icon Viewer'
  ClientHeight = 553
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 214
  Constraints.MinWidth = 486
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 45
    Margins.Top = 0
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlToolbar'
    ShowCaption = False
    TabOrder = 0
    object Shape3: TShape
      AlignWithMargins = True
      Left = 49
      Top = 3
      Width = 2
      Height = 39
      Align = alLeft
      Pen.Color = clSilver
      ExplicitLeft = 51
    end
    object pnlRegular: TPanel
      AlignWithMargins = True
      Left = 57
      Top = 3
      Width = 40
      Height = 39
      Align = alLeft
      BevelKind = bkSoft
      BevelOuter = bvNone
      Caption = 'Panel2'
      Color = clHighlight
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      object svgRegular: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 35
        Hint = 'Show Regular Icons'
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        OnClick = svgRegularClick
        Svg.Source = 
          '<svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://ww' +
          'w.w3.org/2000/svg">'#10'<path d="M10 3C8.34315 3 7 4.34315 7 6C7 6.8' +
          '0363 7.31598 7.53345 7.83048 8.07201C7.93421 8.18059 8 8.32193 8' +
          ' 8.47209C8 8.76365 7.76365 9 7.47209 9H3.42308C3.18942 9 3 9.189' +
          '42 3 9.42308C3 11.9508 5.04916 14 7.57692 14H8.70287C8.75454 14.' +
          '0891 8.81545 14.173 8.88494 14.2503C8.66507 14.4868 8.4597 14.73' +
          '63 8.26501 15H7.57692C4.49687 15 2 12.5031 2 9.42308C2 8.63713 2' +
          '.63713 8 3.42308 8H6.53513C6.19479 7.41165 6 6.72857 6 6C6 3.790' +
          '86 7.79086 2 10 2C11.8638 2 13.4299 3.27477 13.874 5H15.8333C16.' +
          '4777 5 17 5.52233 17 6.16667C17 7.17919 16.1792 8 15.1667 8H13.4' +
          '649C13.3885 8.13198 13.3049 8.2592 13.2144 8.38109C13.5768 8.584' +
          '16 13.8928 8.86028 14.1423 9.1895C13.7903 9.19449 13.4278 9.2160' +
          '9 13.0639 9.26158C12.9757 9.2726 12.8887 9.28516 12.8028 9.29923' +
          'C12.6012 9.17414 12.3757 9.08392 12.1347 9.03696C11.9249 8.99608' +
          ' 11.75 8.82671 11.75 8.61294C11.75 8.48129 11.8178 8.35989 11.92' +
          '26 8.28014C12.0073 8.21565 12.1087 8.13114 12.2026 8.03391L12.20' +
          '5 8.03428C12.478 7.73842 12.6923 7.38748 12.8293 7H15.1667C15.62' +
          '69 7 16 6.6269 16 6.16667C16 6.07462 15.9254 6 15.8333 6H13C13 4' +
          '.34315 11.6569 3 10 3ZM15.6574 11.1539C14.9433 11.0046 14.1437 1' +
          '0.8922 13.3119 10.9962C11.7434 11.1922 10.9306 12.2691 10.4639 1' +
          '3.4326C10.3611 13.6889 10.07 13.8133 9.81373 13.7105C9.55744 13.' +
          '6077 9.43302 13.3165 9.53583 13.0603C10.0691 11.7308 11.1064 10.' +
          '2641 13.1879 10.0039C14.1811 9.87971 15.1071 10.0172 15.862 10.1' +
          '75C16.087 10.2221 16.3145 10.275 16.5186 10.3226C16.6443 10.3518' +
          ' 16.7612 10.379 16.8632 10.4015C17.1581 10.4666 17.361 10.5 17.4' +
          '999 10.5C17.6732 10.5 17.8341 10.5897 17.9252 10.7371C18.0163 10' +
          '.8845 18.0246 11.0686 17.9471 11.2236C17.8959 11.326 17.8122 11.' +
          '4611 17.7286 11.5963L17.7124 11.6224C17.6169 11.7768 17.5055 11.' +
          '9572 17.3883 12.1635C17.1535 12.5767 16.9013 13.0834 16.7277 13.' +
          '6471C16.6938 13.7575 16.658 13.8848 16.6189 14.0243C16.4627 14.5' +
          '809 16.2523 15.3302 15.8842 15.9606C15.646 16.3686 15.3275 16.75' +
          '78 14.8877 17.0441C14.4434 17.3333 13.902 17.5 13.2499 17.5C12.1' +
          '841 17.5 11.4222 16.939 10.9488 16.4221C10.7109 16.1623 10.5364 ' +
          '15.9043 10.4211 15.7114C10.4106 15.6937 10.4004 15.6764 10.3908 ' +
          '15.6598C9.78774 16.2711 9.32977 16.9587 8.94732 17.7236C8.82383 ' +
          '17.9706 8.52349 18.0707 8.2765 17.9472C8.02951 17.8237 7.9294 17' +
          '.5234 8.0529 17.2764C9.11407 15.1541 10.7202 13.5663 13.842 12.5' +
          '257C14.104 12.4383 14.3871 12.5799 14.4745 12.8419C14.5618 13.10' +
          '39 14.4202 13.387 14.1582 13.4744C12.9067 13.8915 11.9358 14.394' +
          '3 11.161 14.9838C11.1681 14.9959 11.175 15.0085 11.1817 15.0217C' +
          '11.2024 15.0626 11.235 15.1238 11.2796 15.1985C11.3695 15.349 11' +
          '.5049 15.5487 11.6863 15.7467C12.0515 16.1454 12.5657 16.5 13.24' +
          '99 16.5C13.7228 16.5 14.0718 16.382 14.3421 16.206C14.617 16.027' +
          '1 14.8373 15.7705 15.0207 15.4563C15.317 14.9489 15.4807 14.3699' +
          ' 15.6354 13.8227C15.6806 13.6625 15.7252 13.505 15.772 13.3528C1' +
          '5.9749 12.694 16.2644 12.1174 16.5188 11.6695C16.5761 11.5688 16' +
          '.6319 11.474 16.6847 11.3861L16.6478 11.3781C16.5195 11.3498 16.' +
          '3941 11.3205 16.266 11.2906C16.0757 11.2461 15.8791 11.2002 15.6' +
          '574 11.1539Z"/>'#10'</svg>'
        ExplicitLeft = -12
        ExplicitTop = 5
        ExplicitWidth = 32
        ExplicitHeight = 31
      end
    end
    object pnlFilled: TPanel
      AlignWithMargins = True
      Left = 103
      Top = 3
      Width = 40
      Height = 39
      Align = alLeft
      BevelKind = bkSoft
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      StyleElements = [seFont, seBorder]
      object svgFilled: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 35
        Hint = 'Show Filled Icons'
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        OnClick = svgFilledClick
        Svg.Source = 
          '<svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://ww' +
          'w.w3.org/2000/svg">'#10'<path d="M10 2C7.79086 2 6 3.79086 6 6C6 6.7' +
          '2857 6.19479 7.41165 6.53513 8H3.42308C2.63713 8 2 8.63713 2 9.4' +
          '2308C2 12.5031 4.49687 15 7.57692 15H8.8507C8.6564 14.5328 8.5 1' +
          '3.9409 8.5 13.2463C8.5 12.0481 9.16823 11.0368 9.96288 10.3538C1' +
          '0.7782 9.65303 11.8684 9.16103 13.0639 9.01159C13.3613 8.97442 1' +
          '3.6568 8.95762 13.9459 8.95598C13.7341 8.72857 13.4875 8.53409 1' +
          '3.2144 8.38109C13.3049 8.25919 13.3885 8.13198 13.4649 8H15.1666' +
          'C16.1791 8 16.9999 7.17919 16.9999 6.16667C16.9999 5.52233 16.47' +
          '76 5 15.8333 5H13.874C13.4299 3.27477 11.8638 2 10 2ZM17.5 10.49' +
          '99C17.6733 10.4999 17.8342 10.5896 17.9253 10.737C18.0164 10.884' +
          '5 18.0247 11.0685 17.9472 11.2235C17.896 11.3259 17.8124 11.461 ' +
          '17.7287 11.5962L17.7125 11.6223C17.617 11.7767 17.5056 11.9571 1' +
          '7.3884 12.1635C17.1536 12.5766 16.9014 13.0833 16.7279 13.6471C1' +
          '6.6939 13.7574 16.6581 13.8847 16.619 14.0242C16.4628 14.5807 16' +
          '.2525 15.3301 15.8844 15.9605C15.6461 16.3685 15.3276 16.7577 14' +
          '.8878 17.044C14.4435 17.3332 13.9021 17.4999 13.25 17.4999C12.19' +
          '09 17.4999 11.4424 16.966 10.9774 16.4651C10.7447 16.2145 10.575' +
          '9 15.9655 10.4649 15.7791C10.4383 15.7345 10.4149 15.6932 10.394' +
          '6 15.6559C9.78966 16.2682 9.33058 16.9571 8.94732 17.7236C8.8238' +
          '3 17.9706 8.52349 18.0707 8.2765 17.9472C8.02951 17.8237 7.9294 ' +
          '17.5234 8.0529 17.2764C8.80681 15.7686 9.83581 14.5305 11.488 13' +
          '.5669C12.1516 13.1511 12.8888 12.7831 13.6858 12.4642C13.9422 12' +
          '.3617 14.0669 12.0707 13.9643 11.8143C13.8618 11.5579 13.5708 11' +
          '.4332 13.3144 11.5358C11.8829 12.1084 10.5889 12.8493 9.53801 13' +
          '.7662C9.51384 13.6024 9.5 13.4289 9.5 13.2463C9.5 12.4822 9.8093' +
          ' 11.7342 10.4402 11.1457C11.0666 10.5612 11.9864 10.154 13.188 1' +
          '0.0039C14.3855 9.85421 15.3828 9.98779 16.14 10.1565C16.4681 10.' +
          '2296 16.7538 10.31 16.9812 10.3741L17.0761 10.4007C17.1994 10.43' +
          '52 17.2962 10.4613 17.375 10.4789C17.4136 10.4875 17.4435 10.493' +
          '1 17.4663 10.4964C17.4775 10.498 17.4859 10.4989 17.4919 10.4994' +
          'C17.4975 10.4999 17.5 10.4999 17.5 10.4999Z"/>'#10'</svg>'
        ExplicitLeft = 17
        ExplicitTop = -1
        ExplicitWidth = 38
        ExplicitHeight = 37
      end
    end
    object pnlTwoTone: TPanel
      AlignWithMargins = True
      Left = 149
      Top = 3
      Width = 40
      Height = 39
      Align = alLeft
      BevelKind = bkSoft
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 2
      StyleElements = [seFont, seBorder]
      object svgTwoTone: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 35
        Hint = 'Show Two-Toned Icons'
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        OnClick = svgTwoToneClick
        Svg.Source = 
          '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
          's="http://www.w3.org/2000/svg"><path d="M10 2C7.79086 2 6 3.7908' +
          '6 6 6C6 6.72857 6.19479 7.41165 6.53513 8H3.42308C2.63713 8 2 8.' +
          '63713 2 9.42308C2 12.5031 4.49687 15 7.57692 15H8.8507C8.6564 14' +
          '.5328 8.5 13.9409 8.5 13.2463C8.5 12.0481 9.16823 11.0368 9.9628' +
          '8 10.3538C10.7782 9.65303 11.8684 9.16103 13.0639 9.01159C13.361' +
          '3 8.97442 13.6568 8.95762 13.9459 8.95598C13.7341 8.72857 13.487' +
          '5 8.53409 13.2144 8.38109C13.3049 8.25919 13.3885 8.13198 13.464' +
          '9 8H15.1666C16.1791 8 16.9999 7.17919 16.9999 6.16667C16.9999 5.' +
          '52233 16.4776 5 15.8333 5H13.874C13.4299 3.27477 11.8638 2 10 2Z' +
          'M17.5 10.4999C17.6733 10.4999 17.8342 10.5896 17.9253 10.737C18.' +
          '0164 10.8845 18.0247 11.0685 17.9472 11.2235C17.896 11.3259 17.8' +
          '124 11.461 17.7287 11.5962L17.7125 11.6223C17.617 11.7767 17.505' +
          '6 11.9571 17.3884 12.1635C17.1536 12.5766 16.9014 13.0833 16.727' +
          '9 13.6471C16.6939 13.7574 16.6581 13.8847 16.619 14.0242C16.4628' +
          ' 14.5807 16.2525 15.3301 15.8844 15.9605C15.6461 16.3685 15.3276' +
          ' 16.7577 14.8878 17.044C14.4435 17.3332 13.9021 17.4999 13.25 17' +
          '.4999C12.1909 17.4999 11.4424 16.966 10.9774 16.4651C10.7447 16.' +
          '2145 10.5759 15.9655 10.4649 15.7791C10.4383 15.7345 10.4149 15.' +
          '6932 10.3946 15.6559C9.78966 16.2682 9.33058 16.9571 8.94732 17.' +
          '7236C8.82383 17.9706 8.52349 18.0707 8.2765 17.9472C8.02951 17.8' +
          '237 7.9294 17.5234 8.0529 17.2764C8.80681 15.7686 9.83581 14.530' +
          '5 11.488 13.5669C12.1516 13.1511 12.8888 12.7831 13.6858 12.4642' +
          'C13.9422 12.3617 14.0669 12.0707 13.9643 11.8143C13.8618 11.5579' +
          ' 13.5708 11.4332 13.3144 11.5358C11.8829 12.1084 10.5889 12.8493' +
          ' 9.53801 13.7662C9.51384 13.6024 9.5 13.4289 9.5 13.2463C9.5 12.' +
          '4822 9.8093 11.7342 10.4402 11.1457C11.0666 10.5612 11.9864 10.1' +
          '54 13.188 10.0039C14.3855 9.85421 15.3828 9.98779 16.14 10.1565C' +
          '16.4681 10.2296 16.7538 10.31 16.9812 10.3741L17.0761 10.4007C17' +
          '.1994 10.4352 17.2962 10.4613 17.375 10.4789C17.4136 10.4875 17.' +
          '4435 10.4931 17.4663 10.4964C17.4775 10.498 17.4859 10.4989 17.4' +
          '919 10.4994C17.4975 10.4999 17.5 10.4999 17.5 10.4999Z" fill="#C' +
          '0C0C0"/>'#13#10'<path d="M10 3C8.34315 3 7 4.34315 7 6C7 6.80363 7.315' +
          '98 7.53345 7.83048 8.07201C7.93421 8.18059 8 8.32193 8 8.47209C8' +
          ' 8.76365 7.76365 9 7.47209 9H3.42308C3.18942 9 3 9.18942 3 9.423' +
          '08C3 11.9508 5.04916 14 7.57692 14H8.70287C8.75454 14.0891 8.815' +
          '45 14.173 8.88494 14.2503C8.66507 14.4868 8.4597 14.7363 8.26501' +
          ' 15H7.57692C4.49687 15 2 12.5031 2 9.42308C2 8.63713 2.63713 8 3' +
          '.42308 8H6.53513C6.19479 7.41165 6 6.72857 6 6C6 3.79086 7.79086' +
          ' 2 10 2C11.8638 2 13.4299 3.27477 13.874 5H15.8333C16.4777 5 17 ' +
          '5.52233 17 6.16667C17 7.17919 16.1792 8 15.1667 8H13.4649C13.388' +
          '5 8.13198 13.3049 8.2592 13.2144 8.38109C13.5768 8.58416 13.8928' +
          ' 8.86028 14.1423 9.1895C13.7903 9.19449 13.4278 9.21609 13.0639 ' +
          '9.26158C12.9757 9.2726 12.8887 9.28516 12.8028 9.29923C12.6012 9' +
          '.17414 12.3757 9.08392 12.1347 9.03696C11.9249 8.99608 11.75 8.8' +
          '2671 11.75 8.61294C11.75 8.48129 11.8178 8.35989 11.9226 8.28014' +
          'C12.0073 8.21565 12.1087 8.13114 12.2026 8.03391L12.205 8.03428C' +
          '12.478 7.73842 12.6923 7.38748 12.8293 7H15.1667C15.6269 7 16 6.' +
          '6269 16 6.16667C16 6.07462 15.9254 6 15.8333 6H13C13 4.34315 11.' +
          '6569 3 10 3ZM15.6574 11.1539C14.9433 11.0046 14.1437 10.8922 13.' +
          '3119 10.9962C11.7434 11.1922 10.9306 12.2691 10.4639 13.4326C10.' +
          '3611 13.6889 10.07 13.8133 9.81373 13.7105C9.55744 13.6077 9.433' +
          '02 13.3165 9.53583 13.0603C10.0691 11.7308 11.1064 10.2641 13.18' +
          '79 10.0039C14.1811 9.87971 15.1071 10.0172 15.862 10.175C16.087 ' +
          '10.2221 16.3145 10.275 16.5186 10.3226C16.6443 10.3518 16.7612 1' +
          '0.379 16.8632 10.4015C17.1581 10.4666 17.361 10.5 17.4999 10.5C1' +
          '7.6732 10.5 17.8341 10.5897 17.9252 10.7371C18.0163 10.8845 18.0' +
          '246 11.0686 17.9471 11.2236C17.8959 11.326 17.8122 11.4611 17.72' +
          '86 11.5963L17.7124 11.6224C17.6169 11.7768 17.5055 11.9572 17.38' +
          '83 12.1635C17.1535 12.5767 16.9013 13.0834 16.7277 13.6471C16.69' +
          '38 13.7575 16.658 13.8848 16.6189 14.0243C16.4627 14.5809 16.252' +
          '3 15.3302 15.8842 15.9606C15.646 16.3686 15.3275 16.7578 14.8877' +
          ' 17.0441C14.4434 17.3333 13.902 17.5 13.2499 17.5C12.1841 17.5 1' +
          '1.4222 16.939 10.9488 16.4221C10.7109 16.1623 10.5364 15.9043 10' +
          '.4211 15.7114C10.4106 15.6937 10.4004 15.6764 10.3908 15.6598C9.' +
          '78774 16.2711 9.32977 16.9587 8.94732 17.7236C8.82383 17.9706 8.' +
          '52349 18.0707 8.2765 17.9472C8.02951 17.8237 7.9294 17.5234 8.05' +
          '29 17.2764C9.11407 15.1541 10.7202 13.5663 13.842 12.5257C14.104' +
          ' 12.4383 14.3871 12.5799 14.4745 12.8419C14.5618 13.1039 14.4202' +
          ' 13.387 14.1582 13.4744C12.9067 13.8915 11.9358 14.3943 11.161 1' +
          '4.9838C11.1681 14.9959 11.175 15.0085 11.1817 15.0217C11.2024 15' +
          '.0626 11.235 15.1238 11.2796 15.1985C11.3695 15.349 11.5049 15.5' +
          '487 11.6863 15.7467C12.0515 16.1454 12.5657 16.5 13.2499 16.5C13' +
          '.7228 16.5 14.0718 16.382 14.3421 16.206C14.617 16.0271 14.8373 ' +
          '15.7705 15.0207 15.4563C15.317 14.9489 15.4807 14.3699 15.6354 1' +
          '3.8227C15.6806 13.6625 15.7252 13.505 15.772 13.3528C15.9749 12.' +
          '694 16.2644 12.1174 16.5188 11.6695C16.5761 11.5688 16.6319 11.4' +
          '74 16.6847 11.3861L16.6478 11.3781C16.5195 11.3498 16.3941 11.32' +
          '05 16.266 11.2906C16.0757 11.2461 15.8791 11.2002 15.6574 11.153' +
          '9Z" fill="black"/>'#13#10'</svg>'
        ExplicitLeft = 17
        ExplicitTop = -1
        ExplicitWidth = 38
        ExplicitHeight = 37
      end
    end
    object pnlSettings: TPanel
      AlignWithMargins = True
      Left = 741
      Top = 3
      Width = 40
      Height = 39
      Align = alRight
      BevelKind = bkSoft
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 3
      StyleElements = [seFont, seBorder]
      object svgSettings: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 35
        Hint = 'Change Icon Backround (display only)'
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        OnClick = ClickSettings
        Svg.Source = 
          '<svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://ww' +
          'w.w3.org/2000/svg">'#10'<path d="M1.91099 7.38266C2.28028 6.24053 2.' +
          '88863 5.19213 3.69133 4.30364C3.82707 4.15339 4.04002 4.09984 4.' +
          '23069 4.16802L6.14897 4.85392C6.66905 5.03977 7.24131 4.76883 7.' +
          '42716 4.24875C7.44544 4.19762 7.45952 4.14507 7.46925 4.09173L7.' +
          '83471 2.08573C7.87104 1.88627 8.02422 1.7285 8.22251 1.6863C8.80' +
          '27 1.5628 9.39758 1.5 10.0003 1.5C10.6026 1.5 11.1971 1.56273 11' +
          '.7769 1.68607C11.9752 1.72824 12.1284 1.88591 12.1648 2.08529L12' +
          '.5313 4.09165C12.6303 4.63497 13.1511 4.9951 13.6944 4.89601C13.' +
          '7479 4.88627 13.8004 4.87219 13.8515 4.85395L15.7698 4.16802C15.' +
          '9605 4.09984 16.1734 4.15339 16.3092 4.30364C17.1119 5.19213 17.' +
          '7202 6.24053 18.0895 7.38266C18.1518 7.57534 18.0918 7.78658 17.' +
          '9374 7.91764L16.3825 9.23773C15.9615 9.5952 15.9101 10.2263 16.2' +
          '675 10.6473C16.3027 10.6887 16.3411 10.7271 16.3825 10.7623L17.9' +
          '374 12.0824C18.0918 12.2134 18.1518 12.4247 18.0895 12.6173C17.7' +
          '202 13.7595 17.1119 14.8079 16.3092 15.6964C16.1734 15.8466 15.9' +
          '605 15.9002 15.7698 15.832L13.8515 15.1461C13.3315 14.9602 12.75' +
          '92 15.2312 12.5733 15.7512C12.5551 15.8024 12.541 15.8549 12.531' +
          '2 15.9085L12.1648 17.9147C12.1284 18.1141 11.9752 18.2718 11.776' +
          '9 18.3139C11.1971 18.4373 10.6026 18.5 10.0003 18.5C9.39758 18.5' +
          ' 8.8027 18.4372 8.22251 18.3137C8.02422 18.2715 7.87104 18.1137 ' +
          '7.83471 17.9143L7.46926 15.9084C7.37018 15.365 6.8494 15.0049 6.' +
          '30608 15.104C6.25265 15.1137 6.20011 15.1278 6.14906 15.1461L4.2' +
          '3069 15.832C4.04002 15.9002 3.82707 15.8466 3.69133 15.6964C2.88' +
          '863 14.8079 2.28028 13.7595 1.91099 12.6173C1.84869 12.4247 1.90' +
          '876 12.2134 2.06313 12.0824L3.61798 10.7623C4.03897 10.4048 4.09' +
          '046 9.77373 3.73299 9.35274C3.69784 9.31135 3.65937 9.27288 3.61' +
          '8 9.23775L2.06313 7.91764C1.90876 7.78658 1.84869 7.57534 1.9109' +
          '9 7.38266ZM2.97154 7.37709L4.26523 8.47546C4.34803 8.54576 4.424' +
          '96 8.62269 4.49526 8.70548C5.2102 9.54746 5.10721 10.8096 4.2652' +
          '1 11.5246L2.97154 12.6229C3.26359 13.4051 3.68504 14.1322 4.2164' +
          '8 14.7751L5.81246 14.2044C5.91473 14.1679 6.01982 14.1397 6.1266' +
          '7 14.1202C7.21332 13.922 8.25487 14.6423 8.45305 15.729L8.75702 ' +
          '17.3975C9.16489 17.4655 9.58024 17.5 10.0003 17.5C10.42 17.5 10.' +
          '8351 17.4656 11.2427 17.3976L11.5475 15.7289C11.567 15.6221 11.5' +
          '951 15.517 11.6317 15.4147C12.0034 14.3746 13.1479 13.8327 14.18' +
          '81 14.2044L15.784 14.7751C16.3155 14.1322 16.7369 13.4051 17.029' +
          ' 12.6229L15.7353 11.5245C15.6525 11.4542 15.5756 11.3773 15.5053' +
          ' 11.2945C14.7903 10.4525 14.8933 9.1904 15.7353 8.47544L17.029 7' +
          '.37709C16.7369 6.59486 16.3155 5.86783 15.784 5.22494L14.1881 5.' +
          '79559C14.0858 5.83214 13.9807 5.8603 13.8738 5.87979C12.7872 6.0' +
          '7796 11.7456 5.3577 11.5475 4.27119L11.2427 2.60235C10.8351 2.53' +
          '443 10.42 2.5 10.0003 2.5C9.58024 2.5 9.16489 2.53448 8.75702 2.' +
          '60249L8.45304 4.27105C8.43355 4.37791 8.40539 4.48299 8.36884 4.' +
          '58527C7.99714 5.62542 6.8526 6.1673 5.81237 5.79556L4.21648 5.22' +
          '494C3.68504 5.86783 3.26359 6.59486 2.97154 7.37709ZM7.50026 10C' +
          '7.50026 8.61929 8.61954 7.5 10.0003 7.5C11.381 7.5 12.5003 8.619' +
          '29 12.5003 10C12.5003 11.3807 11.381 12.5 10.0003 12.5C8.61954 1' +
          '2.5 7.50026 11.3807 7.50026 10ZM8.50026 10C8.50026 10.8284 9.171' +
          '83 11.5 10.0003 11.5C10.8287 11.5 11.5003 10.8284 11.5003 10C11.' +
          '5003 9.17157 10.8287 8.5 10.0003 8.5C9.17183 8.5 8.50026 9.17157' +
          ' 8.50026 10Z"/>'#10'</svg>'
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 40
      end
    end
    object pnlBackColor: TPanel
      AlignWithMargins = True
      Left = 695
      Top = 3
      Width = 40
      Height = 39
      Align = alRight
      BevelKind = bkSoft
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 4
      StyleElements = [seFont, seBorder]
      OnClick = ClickBackColor
      object svgBackColor: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 20
        Hint = 'Change Icon Backround (display only)'
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        OnClick = ClickBackColor
        Svg.Source = 
          '<svg width="15" height="15" viewBox="0 0 20 20" xmlns="http://ww' +
          'w.w3.org/2000/svg">'#13#10'<path d="M8.94564 0.0549927C6.74682 0.28583' +
          '4 4.60989 1.24382 2.92475 2.92896C1.23961 4.6141 0.281623 6.7510' +
          '3 0.0507812 8.94985L8.94564 0.0549927ZM0.187287 11.9529L11.9487 ' +
          '0.191497C12.7562 0.35151 13.5479 0.611816 14.3036 0.972415L0.968' +
          '203 14.3078C0.607604 13.5521 0.347298 12.7604 0.187287 11.9529ZM' +
          '2.17825 16.2373C2.40881 16.5255 2.65765 16.804 2.92475 17.0711C3' +
          '.19237 17.3387 3.47139 17.588 3.76024 17.8189L17.8147 3.76445C17' +
          '.5838 3.4756 17.3345 3.19658 17.0669 2.92896C16.7998 2.66186 16.' +
          '5213 2.41302 16.2331 2.18246L2.17825 16.2373ZM19.0244 5.69432L5.' +
          '69011 19.0286C6.44697 19.3896 7.23982 19.6499 8.04861 19.8097L19' +
          '.8055 8.05282C19.6457 7.24404 19.3853 6.45118 19.0244 5.69432ZM1' +
          '9.9401 11.0578L11.0536 19.9443C13.2497 19.712 15.3837 18.7543 17' +
          '.0669 17.0711C18.7501 15.3879 19.7078 13.2539 19.9401 11.0578Z" ' +
          'fill="silver"/>'#13#10#13#10'<path d="M9.99738 2C5.58055 2 2 5.58055 2 9.9' +
          '9738C2 14.4142 5.58055 17.9948 9.99738 17.9948C14.4142 17.9948 1' +
          '7.9948 14.4142 17.9948 9.99738C17.9948 5.58055 14.4142 2 9.99738' +
          ' 2ZM0 9.99738C0 4.47598 4.47598 0 9.99738 0C15.5188 0 19.9948 4.' +
          '47598 19.9948 9.99738C19.9948 15.5188 15.5188 19.9948 9.99738 19' +
          '.9948C4.47598 19.9948 0 15.5188 0 9.99738Z" fill="current"/>'#13#10'</' +
          'svg>'
        ExplicitLeft = 2
      end
      object lblBackColor: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 30
        Height = 15
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        Caption = 'Back'
        OnClick = ClickBackColor
        ExplicitWidth = 25
      end
    end
    object pnlFillColor: TPanel
      AlignWithMargins = True
      Left = 603
      Top = 3
      Width = 40
      Height = 39
      Align = alRight
      BevelKind = bkSoft
      BevelOuter = bvNone
      PopupMenu = pmFill
      ShowCaption = False
      TabOrder = 5
      StyleElements = [seFont, seBorder]
      OnClick = ClickFillColor
      object svgFillColor: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 20
        Hint = 'Change Icon Backround (display only)'
        Align = alTop
        ParentShowHint = False
        PopupMenu = pmFill
        ShowHint = True
        OnClick = ClickFillColor
        Svg.Source = 
          '<svg width="15" height="15" viewBox="0 0 20 20" xmlns="http://ww' +
          'w.w3.org/2000/svg">'#10'<path d="M8.94564 0.0549927C6.74682 0.285834' +
          ' 4.60989 1.24382 2.92475 2.92896C1.23961 4.6141 0.281623 6.75103' +
          ' 0.0507812 8.94985L8.94564 0.0549927ZM0.187287 11.9529L11.9487 0' +
          '.191497C12.7562 0.35151 13.5479 0.611816 14.3036 0.972415L0.9682' +
          '03 14.3078C0.607604 13.5521 0.347298 12.7604 0.187287 11.9529ZM2' +
          '.17825 16.2373C2.40881 16.5255 2.65765 16.804 2.92475 17.0711C3.' +
          '19237 17.3387 3.47139 17.588 3.76024 17.8189L17.8147 3.76445C17.' +
          '5838 3.4756 17.3345 3.19658 17.0669 2.92896C16.7998 2.66186 16.5' +
          '213 2.41302 16.2331 2.18246L2.17825 16.2373ZM19.0244 5.69432L5.6' +
          '9011 19.0286C6.44697 19.3896 7.23982 19.6499 8.04861 19.8097L19.' +
          '8055 8.05282C19.6457 7.24404 19.3853 6.45118 19.0244 5.69432ZM19' +
          '.9401 11.0578L11.0536 19.9443C13.2497 19.712 15.3837 18.7543 17.' +
          '0669 17.0711C18.7501 15.3879 19.7078 13.2539 19.9401 11.0578Z" f' +
          'ill="silver"/>'#10#10'<path d="M9.99738 2C5.58055 2 2 5.58055 2 9.9973' +
          '8C2 14.4142 5.58055 17.9948 9.99738 17.9948C14.4142 17.9948 17.9' +
          '948 14.4142 17.9948 9.99738C17.9948 5.58055 14.4142 2 9.99738 2Z' +
          'M0 9.99738C0 4.47598 4.47598 0 9.99738 0C15.5188 0 19.9948 4.475' +
          '98 19.9948 9.99738C19.9948 15.5188 15.5188 19.9948 9.99738 19.99' +
          '48C4.47598 19.9948 0 15.5188 0 9.99738Z" fill="current"/>'#10'</svg>'
      end
      object lblFillColor: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 30
        Height = 15
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        Caption = 'Fill'
        PopupMenu = pmFill
        OnClick = ClickFillColor
        ExplicitWidth = 15
      end
    end
    object pnlToneColor: TPanel
      AlignWithMargins = True
      Left = 649
      Top = 3
      Width = 40
      Height = 39
      Align = alRight
      BevelKind = bkSoft
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 6
      Visible = False
      StyleElements = [seFont, seBorder]
      OnClick = ClickToneColor
      object svgToneColor: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 20
        Hint = 'Change Icon Backround (display only)'
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        OnClick = ClickToneColor
        Svg.Source = 
          '<svg width="15" height="15" viewBox="0 0 20 20" xmlns="http://ww' +
          'w.w3.org/2000/svg">'#13#10'<path d="M8.94564 0.0549927C6.74682 0.28583' +
          '4 4.60989 1.24382 2.92475 2.92896C1.23961 4.6141 0.281623 6.7510' +
          '3 0.0507812 8.94985L8.94564 0.0549927ZM0.187287 11.9529L11.9487 ' +
          '0.191497C12.7562 0.35151 13.5479 0.611816 14.3036 0.972415L0.968' +
          '203 14.3078C0.607604 13.5521 0.347298 12.7604 0.187287 11.9529ZM' +
          '2.17825 16.2373C2.40881 16.5255 2.65765 16.804 2.92475 17.0711C3' +
          '.19237 17.3387 3.47139 17.588 3.76024 17.8189L17.8147 3.76445C17' +
          '.5838 3.4756 17.3345 3.19658 17.0669 2.92896C16.7998 2.66186 16.' +
          '5213 2.41302 16.2331 2.18246L2.17825 16.2373ZM19.0244 5.69432L5.' +
          '69011 19.0286C6.44697 19.3896 7.23982 19.6499 8.04861 19.8097L19' +
          '.8055 8.05282C19.6457 7.24404 19.3853 6.45118 19.0244 5.69432ZM1' +
          '9.9401 11.0578L11.0536 19.9443C13.2497 19.712 15.3837 18.7543 17' +
          '.0669 17.0711C18.7501 15.3879 19.7078 13.2539 19.9401 11.0578Z" ' +
          'fill="silver"/>'#13#10#13#10'<path d="M9.99738 2C5.58055 2 2 5.58055 2 9.9' +
          '9738C2 14.4142 5.58055 17.9948 9.99738 17.9948C14.4142 17.9948 1' +
          '7.9948 14.4142 17.9948 9.99738C17.9948 5.58055 14.4142 2 9.99738' +
          ' 2ZM0 9.99738C0 4.47598 4.47598 0 9.99738 0C15.5188 0 19.9948 4.' +
          '47598 19.9948 9.99738C19.9948 15.5188 15.5188 19.9948 9.99738 19' +
          '.9948C4.47598 19.9948 0 15.5188 0 9.99738Z" fill="current"/>'#13#10'</' +
          'svg>'
      end
      object lblToneColor: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 30
        Height = 15
        Margins.Bottom = 0
        Align = alBottom
        Alignment = taCenter
        Caption = 'Tone'
        OnClick = ClickToneColor
        ExplicitWidth = 25
      end
    end
    object pnlSelectLibrary: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 40
      Height = 39
      Align = alLeft
      BevelKind = bkSoft
      BevelOuter = bvNone
      ParentBackground = False
      ShowCaption = False
      TabOrder = 7
      StyleElements = [seFont, seBorder]
      object svgSelectLibrary: TSkSvg
        Left = 0
        Top = 0
        Width = 36
        Height = 35
        Hint = 'Select Icon Library'
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        OnClick = LibraryClick
        Svg.Source = 
          '<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g f' +
          'ill="none" stroke="currentColor" stroke-width="1" stroke-linecap' +
          '="round" stroke-linejoin="round"><path d="M5 4m0 1a1 1 0 0 1 1 -' +
          '1h2a1 1 0 0 1 1 1v14a1 1 0 0 1 -1 1h-2a1 1 0 0 1 -1 -1z" />'#13#10'  <' +
          'path d="M9 4m0 1a1 1 0 0 1 1 -1h2a1 1 0 0 1 1 1v14a1 1 0 0 1 -1 ' +
          '1h-2a1 1 0 0 1 -1 -1z" />'#13#10'  <path d="M5 8h4" />'#13#10'  <path d="M9 ' +
          '16h4" />'#13#10'  <path d="M13.803 4.56l2.184 -.53c.562 -.135 1.133 .1' +
          '9 1.282 .732l3.695 13.418a1.02 1.02 0 0 1 -.634 1.219l-.133 .041' +
          'l-2.184 .53c-.562 .135 -1.133 -.19 -1.282 -.732l-3.695 -13.418a1' +
          '.02 1.02 0 0 1 .634 -1.219l.133 -.041z" />'#13#10'  <path d="M14 9l4 -' +
          '1" />'#13#10'  <path d="M16 16l3.923 -.98" /></g></svg>'
        ExplicitLeft = -12
        ExplicitTop = 5
        ExplicitWidth = 32
        ExplicitHeight = 31
      end
    end
    object pnlSearchInfo: TPanel
      Left = 192
      Top = 1
      Width = 151
      Height = 41
      BevelOuter = bvNone
      Caption = 'pnlSearchInfo'
      ShowCaption = False
      TabOrder = 8
      object lblAvailableIconCount: TLabel
        Left = 105
        Top = -1
        Width = 35
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object lblAvailableIconsCaption: TLabel
        Left = 10
        Top = -1
        Width = 89
        Height = 17
        Caption = 'Available Icons:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 2
        Height = 35
        Align = alLeft
        Pen.Color = clSilver
        ExplicitLeft = 219
        ExplicitHeight = 39
      end
      object Shape2: TShape
        AlignWithMargins = True
        Left = 146
        Top = 3
        Width = 2
        Height = 35
        Align = alRight
        Pen.Color = clSilver
        ExplicitLeft = 361
        ExplicitHeight = 39
      end
      object SearchBox1: TSearchBox
        Left = 10
        Top = 17
        Width = 131
        Height = 23
        TabOrder = 0
        TextHint = 'Name Search'
        OnInvokeSearch = SearchBox1InvokeSearch
      end
    end
  end
  object ControlList1: TControlList
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 778
    Height = 486
    Margins.Top = 0
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemWidth = 54
    ItemHeight = 54
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ColumnLayout = cltMultiTopToBottom
    ParentColor = False
    ParentFont = False
    PopupMenu = pmIcon
    TabOrder = 1
    OnBeforeDrawItem = ControlList1BeforeDrawItem
    OnItemClick = ControlList1ItemClick
    ExplicitLeft = -2
    ExplicitTop = 44
    object svgIcon: TSkSvg
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 48
      Height = 48
      Align = alClient
      ExplicitLeft = 40
      ExplicitTop = 16
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 534
    Width = 784
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object dlgColor: TColorDialog
    OnShow = dlgColorShow
    Options = [cdAnyColor]
    Left = 232
    Top = 88
  end
  object pmIcon: TPopupMenu
    Images = VirtualImageList1
    OnPopup = pmIconPopup
    Left = 480
    Top = 104
    object mniCopySvgClipboard: TMenuItem
      Caption = 'Copy SVG to Clipboard'
      ImageIndex = 5
      ImageName = 'Copy_SVG'
      OnClick = mniCopySvgClipboardClick
    end
    object mniSaveSVGFile: TMenuItem
      Caption = 'Save SVG to File'
      ImageIndex = 2
      ImageName = 'Save_svg'
      OnClick = mniSaveSVGFileClick
    end
    object mniSavePNGToFile: TMenuItem
      Caption = 'Save PNG to File'
      ImageIndex = 3
      ImageName = 'Save_Image'
      OnClick = mniSavePNGToFileClick
    end
  end
  object svgSaveDlg: TSaveDialog
    DefaultExt = '.svg'
    Filter = 'SVG|*.svg|Any File|*.*'
    Left = 352
    Top = 192
  end
  object pngSaveDlg: TSaveDialog
    Filter = 'PNG|*.png|Any File|*.*'
    Left = 448
    Top = 200
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'Circle_Hint'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              011749444154384FE594B14EC2501486AFCCC4C951585D1CD87C071213468C6F
              C38BE8A2BBF000B0C3C00A0C045D74225177F8BEA625A56969BBC29F7CB9F79C
              9CFB737A7A69B83C5DC56B911EA00BED280AE113DE6111453574031FB0830D4C
              60063F71EE05ACA9240B97F00F4F2650071EA1053DF8036B2A998E40330FABB4
              9932EE83A6AF264EC999F948799DA92476B5536BEFA050037066EA949932EF4C
              3D7350235E13F936D7E0210FCCE12B15BB37E7DE9CF1351C9435544DA86AE6AC
              8F9435F49EDD42153363F7BF50A87B70D00EDCE2ECCCD2B12FAEF4A528AF82BF
              EAD5283233F6DA0CA3A8445ED615686AA7799D69664DAD7F8B9DFA48DF308531
              6CE39C9DE59A957D1C9CCF332457C3AEDFA0F6C7E16C15C21EC7CD4776C063C3
              E90000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              63000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              016249444154484BED954D2E04411C471BB1B1302720E104B63EC2120B36883D
              B7700E1B09C3D6092C11C28A3801C2097CC44684F792AA4977A7A3BB6612B198
              97BC547FD6AFBBBAFED5599F7FC74068EB58C5359CC02F1CC2076CE339F6C42C
              DEE077CE8BD2FE294E61576CE31BDAD13EDAD1282EE10A6EE2117AFE15373009
              DFC080775CF400E403E2930FE3167A9D41496F748B3E615DC03C7ACCA038748D
              F023C72192BA005BF7E3D02D6081C1D0E6590FED2E1A308376F28C77617B1A5B
              F882D7F88927287ECB0255214E53B9C7A601BEE1074ABCBF4355887570892901
              6361FB09BDBF405588853687A90157388EDE5FA02AC44A96114C09984489F777
              A80A3908ED32360DB0467650F6425BCB193A1D9DFFF9692A0678CC69EDEC13EB
              C9EBADAFC6D851AC7883EA02BC4E5D2992702D8A6BD721BA56E5030C3C46CF1B
              601177851DC5A18B3E96F61DA25FDFA0E9FFC4A5C24A2EFF4F9C243DFF4FFAFC
              3559F603191F729CF8DB9A260000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              01AF49444154484BED953B2F0461148607A1A4121521F4B41412158DD069142E
              BD5B82BF20A8247E00895222FC01155151B8348244DCA2A29228785ECE4976D6
              7E6BF7DB9528F6499E9C9D2F33F3EE9C99399354A8F05F98C35D3CC70FF3D4D6
              26B0EC8CE1037A58C86B1CC6B2B0857EE27B9CC12E6CC6419CC235BC41DF6F03
              4B223374450B8687CA5EAC45B188BEFFA61662507BFD24235A3042A1F53880EA
              801F176C7B95D55C3C6213AEE2BC1640A16AB378C1437C4785F6A0FE84B63B71
              09D5FE362C183DBDFAC7BAA7CE6F57AA75556D0BBFE7935F5B59545BCDA6CFEA
              B2D542AFF4005F6D5BAF9818B29A2214DC61751F6342BBF11245A3D514A17BAC
              1689168C096D40E157FD232774C54E29A1275673120AD648147A226343DBBF7F
              264756538482AFACEA5EC784DEA277EBD96A8A50F08E55BD2231A162C1EAB6D5
              143556B339C6716CC537ACC36242355EFBF10947B5500C1A773EFA3406338783
              4235447CA0E8957366D18FD3D88D4283DE4FE2ADCB17AA2BF5FDD7B5500A99E1
              FADEEA13A80E78A81EA269BC43DF2FFACB948DDA9EF9BD0DA90F4B747BF3A181
              BF8767E86117B6F62781152A1449927C02A1619F0539F378A70000000049454E
              44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              59000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0241494441545847ED96CB4A55511C87B785D020CA81D54084060A4193C04944
              860E8226A68FA02F20118ED37C82A0416FD1E505D40C0C9A18D4A80205475EF0
              42E5C481FEBEB5D6DF76ED75D639676F4F13F7071F6B5FCE5EE7B7D7DAEB92D5
              D4D464D94828FF3BBDF2B97C2F8F23729DFBFCAEA3BC943F652CC4BFEEC959D9
              325DA16C066FB92207DD99E79D7C2BD7E580BC266FC821795F1A5FE5A8DC7167
              1521C837696FBC286F4AE38E1C0B3E90DD92FB04B56778FE4CBAEDBBB44A9F71
              21472C88D12F5F487BF68B4C7231948DE01B79E40F5DFFCFFB430741F8433890
              1FE5913BF3D7B9BF26B7E45D795DF2592CC928A96F8666A5B2CB920AE877A395
              20C667C94B8DCB7DC97717FD7E2E8432C6B424084C8512DA0DB2219FB8B32CEB
              9193FEB0482A8C4D648C1A460C940902BB92DFC2E350164885190E25A302CA06
              B922EFC94FEEEC4FBD0552610C5AA56A1046D9261752340A935F6B98D0AA0681
              ED50427E9E3AA55198FCF06366852A41B8FEC31F3AEC1BFC8B56BA8929BE6A10
              EE475B234F2ACC8750B2D6540D0213A1B47A0BA4C25857B1E8F5F9C3D2416815
              263DB0D159A0D90C4C3F5F9554C024582608B0B832287E4B824567E0D4DA7428
              2F492AB925694596076827088BABCDE0AFE46B7F580EF623B6F2B20AD3550641
              58486DE5CEB71C10C49E5DE54255ACBBACD23792A64E05E1FE82B467D88634DD
              CFB4B3D3E383BEEDCE3CECFC98E2D922208109C1A8B1910374D94379263BBD3C
              73926D80BD71CA5F92AD4347A19566E4B28C85E0FA53D9B45B3A05DD5353739E
              C9B213F952BA7DF7B627580000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              02A4494441545847ED97BBCF0D411887172184B8242211718BB83412542E894B
              4541E30F40A2D029D40A0DD11111ADE4AB8406855B45815644E14E224141DC0B
              14FC9E99799389B33BB37BCE20629FE4C9ECEEF79DD95F76DFDD79B7EAE9E9F9
              C71917C6519928B7C8AF6ECF73238C7F8DE5F2847C247F34F8509E94FCEF1F63
              B6BC20EB02A53C2667CA4E74BDC51BE41539CDED793EC8F3F2B97C2197C84572
              8E5C2BA74AE3BDDC2E6FBABDC21C90F1157925F74A833ADC287704B7C9E9728F
              247CFC5BE62A0A572E3EC1654920A3295CCC4519CFC19C45A0E63E499BF888EC
              1A6E95E46FC7A5CDF34E666B724218539C912BFDA6ABBF7DF2BBDBF3E1D6C919
              6ECF1FBF253FBA3D0FE1E6FBCDEA99A47E79AA27CB2992391BC93D244C74DF6F
              56AFE502396C38E021BA23A9C9851C102BE403BF39C8F83036B13F8C70509608
              0787C208BBC2584BEE0A3E96BC36789558BD8C1A0EA8D1979257102FFA65B296
              D4152408E180F71C940AB75EDE737B55B5348CB5A402B2B61AD44CC970CCF594
              0381CD611C2015F05B188113950C076FC29824F79018DCEA92E1A869EE4A96B6
              01595BA154B8DB92E3C6A4300E900A783D8CC0C25F321C73F15BE35A180768FB
              9AF92CE7C952E180CE86B2E11C8D4F72EE165F0D23CBD34EBFE918351C5D90D5
              F4D930D6D265A9A3A817CB51C3D17CDC9573DD5E66A9CB350B6FE52C49E3C94A
              B2463E9146D7701C3F2757BBBDAA3A25C7FCE6F0108C7AB136899689D6292E72
              201CAD96B55DB4601614D83E2D6D1EEA9AAB59844DD22646BE496272E1087249
              C6E18A35ACC6AF2D3FBDDD6E990BC703416310876BDDF277FD68E24A72F5EC09
              044EC8C2CFDA4ACD129CD094006B6CDC357F915BE56FF968323861DCBAB79587
              A158CDB58157D05199FA70E7257C580EFDE1DEF516A7885B26D6D6C6E5ABA7A7
              E7FFA1AA7E02E3A2EC3B973402840000000049454E44AE426082}
          end>
      end
      item
        Name = 'Color'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              011649444154384FD594E1110131108543054A50021D2841093AA0034AD0011D
              D0011DD0011DA002DE27979BBD24E7327EF1CD3C1797F5B2D96CB8BF66286DA4
              83F4946ED5782E3157CC40C2E82AADA48904BC67BC95EED2522AE22CF1230CDA
              606E2F91F1A738B796088C6191A91F3660E19D1FA68C24B6925B11B3F03E36E7
              FBCC0F9BB05A7622C29A0375C5348193FC580F03711C5C886767EF93EFF36160
              A2945EF504324C0C1F926D11FA8DD6C8F51C0B539E24016B885968858B3496C8
              E228C5A6F1965B2100636B402B2DFCB08638DBAB7577E46A4846DC92401D5C3D
              C90CC2964980274A0C735843B087015C4F76510CDB27636B1AA014D91EEC827A
              9D24DB057400D973C3BE829A91291700A3AE3F909FC4B91702DE3AAB53457D2B
              0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              63000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              016549444154484BDD956151C43010850B0A90800390800424800270000EC0C1
              9D0370000EC001A0001CC0FBDABC9B2597E4DADCBFFB66DE34E934BBD9CD663B
              1C0C47E9B98B13E94C3A4FE377E92B3DF7E6545A49BF49187D957ED2FC43BA93
              70DCC5BD84218C5EF02203C3B7D2A7F42DDD488B584BECF6729CED06677C4FD4
              B3F002F29F73253D4DC32DF89E758FE3AC0167408A3056E259C29021D2182D69
              657D330318E10CE6E2338B709614441147513AE41AA48875110AA21A8D2BA507
              D2FB300D47C8C8E66C8ED313D841AF13767D3D0D47B84F9BC2894EF681486235
              B2593AC416AE0C57966F3B17CD377B2E4456CD0A0E70F426619CB079E7BBC3B3
              04F9678DA1C29A554A0418CBABA3B51027B159D231D0624A4ED84CA93992AA5A
              D44D7C66C6739C47FCBEAB3397169722216D5DA932A421DF79C4DDBB2B0AE3EA
              CBFF1D140BDDB9D6BD1783238C51E22F4938FE77CB2373FFF139A483127773C4
              01FDEAA019863F0D4A5931A21B32480000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              01C749444154484BEDD6FD3104411087E125021910820CC88010644006880011
              900122400464400664403FEE5A4DAD9DBDFDA0CA1FDEAA5FDD7ECD744F774FCF
              35FFFC45B64267A1BBD0FB52AFCBFBEBD05E68306BCBDF3E18BC0CED7EDE35CD
              43E829F416DA086D877CB3197A095D852E42DE4FE62064552639093154633F74
              131289E7503A3A1A464D721FEA33D886411131D61CA3E0BD81C2D605470E4342
              DC85F7C68E326E90F0F2BA86B09B5468FBC8D0AB8395F0544EFB3EB652939679
              9412B92DD3E2DA023CEFC5843CB4A2B1A86863DBE1E7DCCA909F877C547A3D14
              636A39B7EAC7C56537425C2BA8A170E038A44093A350EF82A686B924432BE749
              3EFBAA89F5E52F324CB33A4E20ACA721694B7287540B96517DB70DA7764283B6
              4585DE68E6FE741864B1E8D39EA56C8D290EF41A4656762AFBB4FC2818F74EA4
              1A9C32AE6C2E16E0D9CA2E663063AAB15D8919955A857619CE163C2755DF2B74
              0019C52FCAAA9E43D72A4BACF87671B9608A61AD11B52ED5465EFD4928B7D764
              86763875E0A42B9BC92C183561B50506DEE9CF9C9C5554252632A189BB42EEBD
              77F23EFA5FC82A5435E326D7ED1C0CE4DA33EFCA83E247114EFB3ACF6272AD90
              8616DF3FBF49D37C005EDC79D59F632CA50000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              59000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0224494441545847ED978B310441108697088420041990011990011990012220
              033220034480084E06F4B7F6BF9A6BB3F3D89DA354DD57F5D7DEEECEA3A7BBA7
              77AEDBF01FD81AAE53D833ED9B76FABB6F1E4D2FA68FFE6ECD1C986E4C0BD367
              424FA6635368689652CF30E8A5E9A4BFEBBA77D3BDE9D9F4C6038336780B1DF2
              C0C04317A6EBFEAE010C2E4F1006BC9303C3300263E429C6994568C8190F2AC1
              A85B13FD19A7642151424352ABDA1D9482F0CA4B473CA88115E15A3A2B4F6260
              4489C1C07B0CA27DAEED0A572626E09A026368E78DE1F7A9894585E015DAB2D0
              22348176490E26F62B554848628F169AF2F812255C756C03D8756363E02D8C7D
              EDEF12D0B0C62B539177568CDD1EAE422F73B95203213C3785F943C184E45627
              C6583CB91E44C0CB8C49F84378463847C1621AF95D308768480CE5D528EAD8D2
              3363FC30C6E78CDC468C3D18C8C7F261B8FE86C14B8B99543584DF3CF32A4974
              42CEB9C7930D13D059B9138ACE8A3B578E0F3CCF7D9734A92F80EA5F046160E5
              2816122A2883E5BEE6316354CF78D7040C8CADD8C3C47E31D1BE3E816BA0A483
              2F03DCDF994872A09DF780BE4B84AA1931572B7C28964F18CB31A2F9278709FD
              7180C9D800633B4D553E17DE6AB4EB723B4A5026688F577C7867A39094D41B0C
              E6D840FBD8EE6C82EA0527BB31985CC7D3A243D55470BD4E76AC1CA3A8B888FF
              4FFCE9E3DDDA0D11C45F27C498D871D9D0CCF9AF1D03A3F85484094D9237AD27
              1BFE90AEFB028DC6A97D768587820000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              022F494441545847ED98E131044110858F0884200421C8800C90811064400688
              0011900119200244407F6A9FEA1BBBB33DBB33C78F7D55AF46EDAD9E376FBA7B
              E66EB560C11F63AB1BA760C77864DC73145E3A3E18EF8C4FC68D012137C6CF02
              3E1B590C8B6A06829F1BFDC4B7C653A3770FEC1A0F8D57469CF442795E1D0878
              346AA23363891BC746B65BFFCF0E547313716F4602934BA95B25C0ED7723B170
              734EAC6FB04A02495C8D55138358C464E1B344DE1BA3E2D876DE651C03B1C84F
              899CB4704DC8964402F0AE1885F212238A40152AEFF67910C09083396759B872
              92420A43F633CE0571C43E208CCFC8F510704F01F97B2E720E0ADAEA908BB402
              5EAEE15E14346FE644E828D4909B747C03471EF4201799138E16A45E6C01E51B
              4CB7936393E76BC66C77A3A09C7BEDC64D42379EB5C69D0A94BDAD1C24AF4F3A
              4ECE716D418D0A2E01FD9679D70A2575105C7763DF8D83FCD0F10769E697C6D1
              C40E4086703DCB82C9FC8D838A3B307A6129A9FCA8C8BE2A06917EF90356A31B
              8727C2A93E89F1EFD13FC790ABE222810241287FDD9CFB5C2A69B239813A4DAA
              F75F5C2470F42C45582A0E48788D7CFE0505EFC350CE79A882D50BAB6348606E
              4B3D747BFA957F7D6D660A3EBA71CAF59D1491C3CD2E28B9041FCA3941DFB19B
              DE9E2E8C5326510AD0BED4A89B40950CA313910EFA5A9173B81AE422A7CA9848
              04495CD3ADF5A07FF9D387333A2D9AF4C8DC98380191723247722E723436035B
              8C3BFE872388C34347E68205FF10ABD517655CD802D85B125A0000000049454E
              44AE426082}
          end>
      end
      item
        Name = 'Save'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              009F49444154384FED94ED0D403010861B1318C50846B3011BB019463001F76A
              9B9C73AD8B883F3CC99BFBE8DD45DB94FBA949236935A8255D32912AEFEE4D1A
              C897A481D42391830FC90D8C6068E75D1D39105FC241CC6B647C822F3624C452
              C873904B925D4C70E829827D8CD4C0D476B9E4D6555018ADBC100EBF8C68554C
              4501B5F6B533BC8D1CB890E2D3B380DAD9BB3AF839E03DE35C2C422D7ABE8B73
              1BDB4140D5B182D5A60000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              63000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              010249444154484BED95E111C1301886C30436600336C0048CC0063660041B60
              031B30021B18C106BC6F93AF575F92262D77FEF4B97B2E916BBC69BFB4311D4D
              E8B956338063DBCDE20E9FB69BC70ABE5AB885598C20272C8B5FC6ECE0D57683
              F0DA1994851DA047DFB50243C8D9B5B91CE11A328C0BFB40877C8304F1B1B1A6
              25A910167308A7011790540BCE2032716D103E5F3E5B812B624D3816720F351C
              E7FF44D1216DF0427E599328FA65E40A2E50C6B95B5893140F78B2DDE24EE6B0
              DCFA7521DC8A1B7883295868D68773BC104DB526BCC8DBF311AA2FED7F6AD285
              344287702B12F90A3745E6257764DBF344E4FC0FEA4EC6DA8F5C04DE41A313B2
              4361CC1B0CB84EC4552495490000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              012749444154484BED95817182301486D105EC081DC10DDA0D6C37E8086E503B
              81DD404768377084BA811BE806EDFF41E20578817080D7F3F8EEBE0B39421EE4
              BD846CE2EE99B9D6E2593E15979DB8C86F79CA7B1DF992BF3D3CCB37D98917C9
              C39BBC5750ED5BF8310FF2C7F5A3C1E7AE0D59BAB62D500C969A341DE54E9AC1
              ADC0431006DFCA475962ACC0E083B3F4A4AF8455D52CF1BB0CEF51A10BF999F7
              EA901E267F95146608B9FE90ADA96300834398D8178C255F177B29EED782A62E
              354109CE2A58B29C6B99CC98396EE45F0726779C44D5BCC6642C5BA811F25325
              AC6A363F8700672F794E815A58495FE1BC4CE7AAB62A3C059EF181C2EB2B5371
              DD8C29301C5CCB96EA8BAFE6EA8F23CA5EB20D8690B96A580788877F29F6812F
              4D3D7826EE8A2CFB035A1D6795CF03B4EB0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              59000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0164494441545847ED968D4DC3301085031374049800362823B001B001DDA01B
              0013C0083001300130016C403728EF4B6CC94A7D383D2C54843FE9C9CE9FF372
              7776DC351A7F99BDD0E6984967D249E87B79926EA4557FE48097BF48EB4AFA94
              8E2517971283DC49312A4B897344AA04F711118863B90D311003A4E9F19A8173
              A968683FB416EE3C8F20C217121FF718DA0D4A666A82A185841152B781C74CF6
              AB12BEBB7E1DDA6CAAADA94DBEE7527A9D5C33C348DD2B270C0E8288427C790A
              B5F32C4DA9BD9E58C06328C40F896B96309B3311E19EB4B88B58666A609AF9CD
              022EB25366B629E053E968E86E05C5FE30747B48D38F0A98358263AF6EA508C7
              D99A991219A6E9BBF4266517AB02CC2C227A28C599E88E0C0FD1E7DFE461FC4F
              3323D36693453363F1AFCDC4ED4576D36699B90F2D8B5569FF3215C6B91ABAF9
              A96DC1832CE3AC09B565EE85AC151830C4FE85C5AA4674480D11E1D7526B6FDD
              68EC0A5DF70570A68909139F06D60000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0142494441545847ED978B0DC2300C442B266004466043D80036600418810D60
              0360026002F0955A8A429CC671902AE4279D4A537F4EA53F778EE3FC390BD29E
              7421BD1A087536A439C90CCCDD49A946569D48669307128A1D4930CB709352C2
              F825E94CC2BED9E4838442A13910362C218E87A926262523D2BA442ABE8949C9
              88B42E21C58726B758D0221596D62572F1B826710C77B71AA9305F9B283E061B
              B8F67B69A43EA348896B121F2B15722438464D2E11D70CCE0AC748424CCE1CE0
              5835D5894AB27D66C376B2B8412B1A8378B0E24BC4F26583DC15A9095C94C19D
              1B36B3287C73F09A9A3851F3809648BD39E23EC5C489D585225475FD2EB6E206
              ADB8412B3983CF615B3DD414C003D96DD87E913388711360708F27BB16A0E6EE
              F3B39F4DD4A000BF3D7E29F4A83E0148C4005FF2F5AC156AA2F62FFE1DC77126
              42D7BD016A29F0AF3FAD79FB0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Save_Image'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00DC49444154384FD594690D023114841B1420010948400A4E40024E40020EC0
              C1E2001CC00C74C8D063BB25E107937C79DB77CC9EDDF0775A832BB83718C012
              3475036AE46049CCAFC005344DDD64CC90A259D334359CBF0EDFE2DA7B74A555
              79F316709DC2BC8BB9AA468B157DCCCC62FC9974B6D2ED1EC0A44FC52543C6D2
              0BD9033F89603EED7F8A458FAE23709314DE4126163CBA7C58E831689D49C952
              51430EB7A93F864CDA7AA5A286C819F0C5317A3E137F0E34F52635EA98260BB0
              89D14DBBE466A7B86674D32EED809B0999B2DE2D0EB999F8CA6C8242780033E2
              775E3B1404A70000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              63000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              018549444154484BDD95D135043114860705A00274A00354603BA00425E80015
              A0032AA00374B02A60DFF68DFFCBCCCDC9646EB2CC8E17DF39FF994C36933FB9
              F726DBFC1B36BA67CEB9B4D73657F2293D4AF3F0E6E0993C4B87D2ABB42FED74
              6D8F23E95DDA964EA4D2B81E4CFE2531395C4A989660ECB174277D487C3F60B3
              7B1AAC1A8A5B2F407809D9933430CA4DD62135EA91E784AD33C8FAF9F04ABA0E
              6F7DD8F5857420A53B2784E427867995099017FA3D307F689B9181490E933168
              1DAC182253E6A4482D5CC49C7C5839A7BC4984CAAB42E6E0BC70480335136A9F
              72CC63CEC718F0DB291D0E9850692E694E481C49F760018CABE9450AE76E4C4E
              D8C159DBACC2388EC0289359F7F4B8917625EE330863A7AE2E6E6E7640B82253
              9BB0720AA75791B90955B190285DAE6F56C6756EB20B348572E66A214CF774FC
              045643FDE7D582A83E2ACEDE5914C676C7415A79B5BF892A66921AD8A4B71298
              D1681326F50C3C23349A9281C98C420EB742F3F72C2572C7F5C399C845F110AA
              787FFD314DF30D8FDA6F3D2007CE010000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              01B749444154484BED967D51C43010C50B0AC0011290000AC00148C0019C031C
              8003700028001480034001B7BF5C9659D2CDA6A5EDDC3FBC993769DA242F1F6F
              37EDFEB16D1C0A9F85DF7FE08390FE21767269712044F44B78CB0BC1A5F049F8
              986A3EB40DA24CE058F8221C8C0B211D998082FAD5E6B10A6D83F0A7F0233FBB
              D8CDA5C55E2EDF733916ACF248C86E56B7DD139E0356FC4EA88BF9C118E15E67
              03EF9B8A7364A7BC688173E2BC2CAE85BC8BC8B95A5F28F8D6F387E76A1AE1D0
              F2DBB9D01B58410478BE4078256C99D35DF114B82B5ECA5C4D0CD96AB6F76CF3
              E88244732FAC851FE39178A2E49360B71A511201758F9C6BE4F62A5A5B8DA118
              785FC80E9454C311ABD10449C1EC6208BB62FBEC41F3F25032C184A9E6626263
              4022492974AAF0492E6B207E39266E2D05D96CF170C2E96434EBF864C6A5856F
              8418AB178E9E303304517A8C405CB3B5AFA916DCC9251044FC4DC87D8A1B0905
              CB744E82D2B5DC4876C2FA5361191A92593248D949A99DED3BDA737E90B021C6
              01A56D3736125C78A2F627D1139F4518B7D64495A5B8D62781412251A515A7ED
              2C68892A7FAD94443F073063F45FC59170756AA86E0B5DB706B0F3B1F9FEC5AC
              DA0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              59000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0204494441545847ED968F31C64014C443053AA0033A40073A4005A80015A002
              74A00354F051011DA002F697EF7B99CBCDFD4B721363C6CEEC2493E42E7BEF6D
              36D7FCE32F606D758C614FDC5D9E8EC2BB78BF3C9D863BF1BB0217E2869845AC
              3247E2ADF82A9E7241E0DAA17826BE7021814791B14FE289C8F3FBE2A738184C
              C2AADC155D885CA37539F01C7300165154A1F5D53186512BF140BB8FC51D918A
              4505E5C4D44291A0B9C400045D8A08321FF6103330FDE69376EF9BA931E30317
              22E06507E28D187A29FE79164BBCD7C20CECA3F4734770CC1BDC3773F730A432
              06569EFC2A84E0CB56404C95CAD440B432731A388B216DDA123797A7497C89A9
              84666EEE07BFA810FC36598AA6C898621F845052192AF226B2E26B310492DAEE
              21685B4C999CBF39FFAE54053BB8956172CEF937A5C0CB4957B75A399E8B1D6A
              1A98201CDA2616D879A79618448CDD8475D5A92586202C01FF267CE8EEFE686F
              3BBE96985C221BF022F0FF6DEDF8B943EF4AA42D3DE31AE616433B306DB0AD31
              31E40020ECA6806C6253C5FE17BF8C024147909105EC5D39127CE4884B0B3ADB
              1FBB64BC5F81589267238189305A68B0D10CE98B718520F843B42A87040DCDA7
              245C31AE107F33161354550C29CAA42921C69020BF9D93601ECB0931BA82EC63
              A90A0BBED27DB2092A0DCCC1A0F75428F4729F54A42724B69F998A9C21115CB4
              97F92534CD0FE270DAFC75E8D4710000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              01C7494441545847ED97814DC330104503133002233002237423D80036800DE8
              06940960136002B85FE557D6E1B3BF535BAD449EF4E5C63E9F7FDCC476A69595
              33E7C6F462FAE9A04FD393E9CAD4856B1392E6063B46EFA62E26B726247C36A5
              0939900AE371C31FF3EF2E2699D82762BD4A1A8F5CDD4C4646A2FA081FDFCD64
              6424AA8FC8C57731191989EA23A2F8D4E4232A5A89127F99508F25A80662108B
              3E39F0E2A01DAB45339141DC2DDB5495668831CD943A6240CE644988A9FD7D8C
              6D6671C7468AE35CCEE5D9B21A1C49EED97830290708BC1CF72665295A0C0723
              EAF2E20F17C3E0808433A7CECAC6F46A629E9A107B6B926147E2AF4BE060CAF8
              56E1D1906007E2AF2330738C5D2A6926194CFC75C4CEC4D8A5428E2A0C26FE3A
              82718AF877A2F46D7B2EE632078318E3AF230EC905D25CBEDFBEEDD40BF59D2B
              FF70EA192C21CF60EF45F77BD6D1F0B3931FDBF8ADCC0EE3BCB0FDA5CB0796A3
              D299B20A760CE5504A915C1BF27007C2CDF25F298D21816F06CE644DC4D7A7E6
              5062CB84D2BA9CC961A483E4CCB1AD6672181CA8648E8A4CA21C061E09C51C95
              33891CC3C09BAA9AA3BCC9A663D7525473546AF2C0C8AD0E4BC99B4959941183
              D8DE9BC2BF679A7E01A459859083EE15A00000000049454E44AE426082}
          end>
      end
      item
        Name = 'Copy'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              007749444154384F6318D2C00188EF03F17F1C1824075243347800C406102656
              009203A921086086805C410810A3066E2BD50C842922CB4026284D35306A20E5
              60681BF811880965BD8710267E70018841991E8441B9069478B161901C518543
              00107F00627F308F4A0064E80120C6E5327C4131A801030300A29E2698948575
              CF0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              63000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00D249444154484BED955D0DC2301446070AC0011270800490000A4002129080
              045000124001480005F09DAE7D18E96FD8D3D2939CB45DB67D6B97DCDB0C8691
              1D634CE452CECC2ACC59DEDA69975408011739954F2E4458C88D3C9A55013B99
              7AB9632D1FEDB4CBD88EBFCC25C7C34E7243B8CF7BA4A190834CFD836C42219C
              6F6F84427AA5861451438AA82145844AFD4B52551929F5CC5385722FDF726556
              195CA5EB0B2EE093F024A9DAD950EA79706B567F12EB8C6C9BDD10E66DAB96BB
              A4B90549B55F7A0ABB421FFC333E8471F034CD17D29C24D4C97299B500000000
              49454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00F349444154484BED96DD11C1401446430394A00425284107744007A80015A0
              032AA0041DA00254C07726C94C26B23F3149260F7B66CEEC4EDCF8666F1EF646
              81B6D1976B79931F0FA95B48239D6475B191337990771E3818C889DCCA390FFE
              E525F7F1D61BEA397921DD6435314CD69EF4396916EA397921B660DA3B8EB7D5
              630B9E266B2DD882696F6DB8BE716D84E0C608C18D11821BA3F5C16F69BCE20C
              50FF88B7BFD826102EFFA3E4965A4A46192E77DF0984F75692774B41E853326F
              01F733A14533565EEA4A07A68C247F7296697865B8863DDAB593B4FD22AFD2C5
              49FAD439E1E4B49DF07C4BB3F23B9F23D026A2E80B2D7E3D63EC5148AB000000
              0049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              59000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              010E494441545847ED97DD0DC2300C840B13B0016C001B0013C0063002A3B001
              B0094C001BC0068809E0AE75A4BEB889FB2715F9934E8EA236BAD879B0336708
              8C245A98414B89A95CA15BB16C8F3DF4ADA93B3481542C9961269ED0073A402F
              28157EBF812E102FD4181EC81BD63D8CE6791995B1C42A1612438A2D1929C3FF
              2ADF59CCCC163A16CBEE8999E9CD088999994AEC859437D31B6E46C3CD68B819
              0D37A3E16634DC8CC660CD3C24EE245A60B7C889A272428835E46C15D9D384EF
              68680E71DFD27EAE24AE218E2DB53843E5269C7D30F768A43C86C444036C611B
              C1069A87BDA170BBCE48999B989553B1CC7B6296CA52A2D62749A6D85A1ACA34
              6359676D962AB55CE16D39FF4496FD00F3D64A5FB4F1B64F0000000049454E44
              AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0109494441545847ED970D0DC23010851B1420010938002938C0024EC0013800
              09380014000AE03ED64B96F1B7F5BAA490FB9297C2927BF7D6DD923538CE8F32
              12AD4507D1ADA3A8A1168F5EC0F82C7AD5BC8BF0E825E44644839D28A50135D4
              E28157762E22CC2D774F2D1E3CEE2CD4C3608CACE4F2096311F3A2141750674E
              292E60D32897712B9F415C8BC5035AF180563CA0150F68C5035AF180563CA095
              BF0C788DEB30AE29E819E714D7B7A404E4C808A9876F6A96D5CFB08FAB094CF8
              349F3EFE550DF4E869111E2937F8C44284213BA660CC61EA286A36FE266AA8CD
              120E9835DDB139174A6426D21DD88A26A2E220A465F6B2CDDC2778DCCCA4BE38
              6DB512F51ECE71F213C21D979D8D7C9EFBC4740000000049454E44AE426082}
          end>
      end
      item
        Name = 'Save_svg'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000097048597300000EC300000EC301C76FA8640000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000013849
              444154388DB5D33F4A5D5110C7F1CF049E16E16150D2B894E002147BB79054A6
              8D4DAA44482085DAE82ADC81B804150312480289858D0842D4578D85E7C9E57A
              AEB9C2F3C00FCE9C99F972983F919926795E4C94F61C4099792F2CE314F91F5D
              610783667E663E00FEC59B72CF76F0F81D43EC160D1E0366ED5E8BC1A000B7FB
              0247986BF9E770D3B087F8D717F8B9409BB51BE153574E668AE61C464466663C
              A5A9ED9C498CCDBBA6510546C47A448C22221BDA8B88F988F81211BF8BFF075E
              47C4F47D72470747986DF95EE1487D2EF731DDD9149591C1560BF20BDF1AF6DA
              5381E738C1D7310067F8E86EBBBEF706E265812CE20297785FDEFE6005975DAB
              B7D0E3871B382CC0F10F8F6BC0A5026D17FD2D361BF66A25E6C303E063C20C0E
              3ABABC57ED720FE810EBF889EB5282354C55576F12E716699AF9966B05EF6700
              00000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              630000000970485973000012740000127401DE661F780000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000021C49
              4441544889BDD6CD8B4F611407F0CF31C4829DF2929892B7BC2DD85998AC6447
              1316C31FA02C489115A54494922436163693D890296A1636FE80495256B2C082
              BCBFCD1C8BFBCCB873DDDFF851E3D4D3BDF79C73CFB9E7FB3DE7796E64A6E996
              19D39EE17F2599D9A68C8845588D9E2E628CE27166BEECE8919993168EE007F2
              2FD6771C6DC69A88D948B0A824D88BC0090C777CB94AB00DFDF882936D7E4DB8
              56148806333323A20BB48C65E6CD88F888DB11F12933CFD41D9AC4CF28108E75
              13BD2E99790F033815110BEAB656E26BF21A2B236207BE356C8BCBF5554D77AB
              C45C855F8DD0C0B8AF524D3CCFC5908AD826D91F71B6034F7D5371D284E003B6
              FFA1DA3FCA740CE35DD5EC4C48C74AA26AADDDE86D31BFC555559B6FC5065557
              3E417F667E99E4DD89131CC7073CC0FDDA1AC2466C29419B5CBDC0CEA986B19E
              E4014E7718C2ADAAE1EBB4038C6160DC7F2A4E7AF0B505C639B88ED90DD3CDA2
              5760BC3C3E2FFF42FC0E2C53B5F5859AFE1A76E10ADEABDA7FE05F936C56ED6F
              FBB1A4E81E612DE661BDAA61DE17DFDF928C41444C957C163EAB085E57741771
              B0DC2FC727BC51206D067BAAEAF13D2DB6717952BE7810E7F0BCBCD35BECE771
              194BF118ADE7C9619DCF933B988F7735DD313C6CF11DC5DACC146D3F1211B110
              6BFC7E328E66E670441CC0A5A27B56206ACAF9CC3CD25A49B70B87B4CFCA6881
              B167DCB7B5926E25227AB10F9B4AD523B891992393FCFEC77FD74F56D4961E65
              77DCDD0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A20000000970485973000016250000162501495224F00000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000028649
              4441544889E5D6CF8B95551807F0CFE3E41854A0504665E1CE5583E126A8C082
              999ADAC8D4C282202268510BFB21A544E846DC64FF40464410E5262162986855
              41622515891B191811A29DE3B4D0721E17EF51DF6EE7BE73EFDCC8455F38F77D
              CFF3EB7BCF739EF7392732D3F5C09AEBC2FABF24BEA19F2222A63081B121639E
              C31799B9D0699599FF18F80839C2388F995AECAB1C15D2A9E2BC07E34596D8D7
              19A8D8E06E7C833FF1543FFBDA1E6F2BCF7732F3E250496E3278068FE13B7C1C
              114FD6EC6AC4EB4A80A1495BE44B98C6317C1011F70C425CC3B28E228B88B196
              5D9BFC19DC8C277A7DFA56750F7EC173117111B54C4C94E7CF6D61662E4404DC
              BE5AE2E7F13EF6232AFA451CC2D101E30D469C993F62EBA04107C17FD1B9966A
              C241533D0AEEC41DBDC2CE1547837723E25C4464652C47C41BC5F6BE88381C11
              F3117121227E8F8839ECC0E9DED82BAD780776E153CC57F4277024220E6277CF
              426EC364192F47C44C669EBDAAADB4BE7D8D38E16D4D2B1CEB6895870CD6BF4F
              617D57CB6C634DF973976ACA887810AFF4F17D1D73ADF9161CF85BE011F05AEB
              FD7BFC55DE17F139B6E38796FC8588D8301271342D69B24C3FC14B2D82C37816
              E3F8124F6B4EABB5787824626CC04DF856530BB3B81197F01E5E2C766F6A3EA9
              2B5BB2A91FF185B2A2F11588FFD014CD0436E2B3223F8A07706B99CFE32BEC6C
              F955AB7AB204DCAB2986ECA8E893C57611339A9BC743F8D5B56ADE8DAF5BF36D
              D51BC880579FF3B8056FF5C88FE3D10EBF9388CC6C7E6A888849DCAFD9C71A3E
              C482E6C8DC5C643F1582DA8192783C3367ABA91E76E05EFCB6428696F16AE765
              6F95E49B70A410D43AD674AF4FDF54AF061171171ED19C464B9AA6723C2B24FF
              2AF130B80CCB2E08C2C4B0326D0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              590000000970485973000019D6000019D60118D1CAED0000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A000002F449
              4441545885EDD75DA8A5631407F0DF1A678699E1A0A1948FE6C205730A516A64
              42CC954429E542E2CAC7504413522791D229928F90A63149E4E624454D1DC990
              2434CA957C0C8DC3214D62C2582E9E8779CF3EFB7DF7DE634F4659F5B4DE777D
              3CCFFF5DFB591F3B32D3A142CBFE6D004DFA1F4C1B1D526026DA1411B112B762
              3D561FE0FEBFE2433C9C990B03AD3373C9C2CABA498E69EDC659FDCE5A746E0B
              98CD7593A7305965D35576E1C04D8BDD1C8EA8D1DD87854180DAEECC7995DF99
              997B0686B73DEA7B33F3515C8763B13D22CE6CB36F033359373B60203DA09EC3
              F515D06B11B166143063A7CCDC8ADB71026EFBA7607EAEFCB82EA38838BEC7BE
              494F577E763FDFD6D4EE43DBF107B644C40DCA25ED47A757FE7AAF22337F8908
              4AB62EA5966C982BAA25F26BF0A9EE34FE0E0FE1B0AE4CEBA71B253232731BB6
              8DE2330AFD37DAC141A42B70463FC55060A2DCBA4BB10ED161BA2333DFAA3E87
              63034EC32ACCE39DCC9CC56C5FEF612E309E35B8FF3C8FE54A539DC68F2D76EF
              E1927EE746BFB13322E6941E1411B1169FE123DCAD74E225DF84379582F60A5A
              4B7EC3FE81CCBC77A4C8E082EA3C3DA0394EE2E32122D85C9B8769948B023584
              0DDC87A90EFDF9D8D923BB3F22FE2A92E349EDDAF86E6C887EEF31795B1921A6
              7A7413B86BAC60944C5B519FBFAE87BEDFD03FA2CC35CB14D07734749745C4C4
              38C1ACABFC2B5C849B704E957D8137706D7D9FC10EFB3BF73138719C608EAEFC
              191C859B1BBAC794596675C376068FE3CB06A056307B2022268704F36DE5F7E0
              645C8DDFF013B66253C37627AEC20B38A5CAE6BBC0ECA87CC6FEAFEEA2772B5F
              81979434FF045B70314E6AD8BEAC44EBCAFAFE79667E83CE7F071F18AE565CAE
              0CDEF33DF27D38B502EDF27FB07384A843D07ADCA20CE7477644652A33672362
              1A4F34E43F6023CEEDF0FD5E997DFE3E782C4B298E2F0E19CD54EED4A21E3536
              3015D0723C390490056C5CE23F4E300D501BF02AF6F680D8557F96354377ED71
              5144ACC25AA5F6ECC6AEEC38F0A0821995FE0416EBEC6F0EF7643E0000000049
              454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000097048597300001D8700001D87018FE5F1650000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000029449
              4441545885ED974B6B14411080BF0E925BF4E422B88B7AF22648D62831FE0211
              44BDF8078C78F2A4FE031FD14BCC49D48B0745022A097AD29C548888880A223E
              912422F88CEF40DA43D768CFECF44CCF8B9D430A9AA5A7A6AABEADEAAE9E565A
              6BEA2C3DDD06489325C0A2B2045858B4D6CE01B48071E02BA04B1873C028B022
              296E882105EE434960D1F1086814051C176793C06AEBB93689F7CCC07F2805F4
              034FB24026390ECADA8C0B9815D09A3704CE0BD2DB7159800E48E79AEC0AA005
              19947BB47680A26B8B7ED6659FA70FCE0228A586D25E544A6DB36D62E4BEFCAE
              723AC991C163812EC3389A27C3794BDC2B90331E6033F26E6F5E40252FC59547
              4B869533FD25485A9CDA9FC575003C077C7329BB5E6289D5A7B59E8F55FA2E5E
              CCE6388E6919699BE325B041EC7A809DC005E019F01DF80C3C06C680AD897D34
              03A06F7B79859CDFC000F0C0C3E606D02A0A18B49541CF13640FF0D3F34F69E0
              1DD02E02E87DC40143C0AF0C70C1988B66B2744059AB2F52403E012B81F731BA
              6B55030E7B646A04D89CA01FA812F09615681138045CB19E2D006B808B323F01
              9C89009EAA0410D3527E5B70C3C05AE08D15FC32E6BEF347E67780E5C069EB9D
              7B550136AC20078175C0EB487606E96C59B705F2BCCCFF7D1F2EA33A893B81A6
              8187988B989F4D4236429726F295783FE112EF050E10CE5E50E231EBD9B44F89
              83857D1D68FA008ADD4D2BD02270587CBDC5B4A0A711C0113A37C9491FC0F5C0
              C78861D2382B76FB1CFA23C0764F5F9B520125580BB3EBBE78389D07FA244BCF
              63F41B81290F3F57430C6925CB33303B35EF51D7AC1C502077033F32C2F577F8
              A90A5020DB98AB651ADC443473C1707E5197254A2905EC0076015B301D6101B3
              ABA7804B5AEBBB4EFBAA018B4A1D2E4D89F217AF3FB82FD566569C0000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'Copy_SVG'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000097048597300000EC300000EC301C76FA8640000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000011F49
              444154388DCDD4BD4A03411486E1672DFC43ED2CC5FB90942A442DBD074B7B11
              359522165E84B7215809A28D95FF20898D0A762902C25864842599590949E1C0
              70963367DEDD39DFCE5784108C728C8D94062184E4C43ADE1032B3857ADFBE0A
              600B4B15EB3534FF046235C69083956AFB6A52452FC3008B5E958BA2082184E2
              3756F53F55337295FF1D70B12F936BB494824CA181677CE3154798AD5239098C
              B04BE99FFC16738302F77B209F3DB9D341810F68622F020EF118E33D3E72C00E
              C675AF5EAD946F6333E63BD88AE02FACC5E7C914F01ACBA8C7CD010BB8D3358B
              039CE13CAE1DE309EFB92FDC88EAAD60BC94DF2DF56B3B21CC49D66D74ADEB2A
              1E2DC417CCE322A3F20D66B2C00A3398C04E3C7E3B8AD2C074D61C861D3F43B6
              037E2A276F450000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              630000000970485973000012740000127401DE661F780000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A000001DF49
              4441544889D5D6CF8BCE5114C7F1D719BFC66264108D66C15632F29B9D224959
              2AF9B1A194A7D9C8C25E69CACA8FCD284CC9863FC1866621259B49214DA48994
              A648CC8263F1DC691E33CF8F69E619E5D4ED7BEE3D9FCEFB7ECFF774EF3732D3
              425BC78213B0B895202256E218BA9BC87EE159660ED7CDD1AC5C05F0028BF0A6
              09A4137B7021336FCC886666C38173788FCE66BAA2AD60AC5EAC6EB9226263D9
              7D0F4633F36793B798B497585F2FD0E8C30FA177168967658D20FBDA05680669
              D975ED80B4D5FE3BC8886A1BCFB079D53E223A549B642796E375447465E6B7B6
              4022A24FB5D5B74E0B8D47C4A5CCBC352F48446CC130BAEA84BB311811AB3273
              80397C938808DCAD0318C640CDFC72446C9A1304BBB10D89ABF85DD66FE2A46A
              093FAA56E9EC6C2013583A6D6D7B7956B0A2E4182DBA5EECC5097CC28E66901F
              58AD5A825D115189880311B1064B54EF8FB7D85CF4D7D15FFC1ED5C3F573D1D6
              3FEAF10443C5EFC75829CF791C2AFE579CC2380E97B5C4153C2DFEEDCC6C0839
              58767B111DD362CBF0A126E9353CAC99D78EFD0D2125D9197CC7173CC6A332FA
              70B46C22F1AEC6AF1DF72673B5BA7ED7E10836986A8091CCBC1F11C73168662B
              27EEA0929913B4B8E35B5944ACC56953C7CA2B3CC8CCE77FE9FEC57FD71F2D8D
              05370714AAA20000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A20000000970485973000016250000162501495224F00000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000023349
              4441544889EDD74D888E511407F0DF114352F2553E22A2A494CD28292945D8B1
              12B19AAD24C25256231A29B19015D910361A59CC4E512C58B0F0913016A43016
              CCE05A3C779A67C6FBBC1FCDE8DD38757BCEB9F7DCF3BFE7DE73EF394FA494B4
              8326B505B59DC0524A0D1B3A7012EF919A68FDE8464795CDC94DAEEF040EE36A
              36DA8816E148E68F8DC7E37E5C6E46B734E70AFAABC62BCF3822A64644671617
              E265139E96E9459E5793EA6D7537BEE0618B804D51BDA8DEF72F009B019EDD2E
              E07F4AFF8127921EE04ED560B32F57CB9452EA456FD5F884791C112B23E24244
              BC8A88C1881888887B11712022A6D55A59D59397707C2C5FA17B0843AA93C60B
              AC6EEAC96CC1D38338EDEF632B5718CBD117114B873BC6051C112B14E9B2169D
              C5C5923C0F17260418FB3125F38F3190F95F1974E798FEAD11B17A228037E76F
              1FF6E247966F6103E6E019B6E16B1EDB82BAC1F5DB4870D5CCC78AECF55C91F8
              DF1809A60D785A92CF607BE67B1A05D727CCCFFC65EC89882B11713422863DFD
              8665D88873B9EF11666055963F2A8A82AE2C7F6DE4F1757CC05C45CDD59D3D4F
              E8CD3AB7B33C940DBFC26EC58B35EC6D0F6E96E41D29A5BAC06BB3C1BB9857A1
              B3DBE8FBFA0E6BF231D5BACF1F303DA524EA15F411D1A5B8029F7143718E3F4B
              5BDA877B5897FBDEE6B6BEC264574AE952DDAD2E79D5896B79B5E5D57FC1622C
              50446EA392F7D428BBAD548E75163713E7315803F035768D9D5377AB5BA58898
              854D5882EF7882FB29A55F7FE9B6EBA7ED0F8B5912545613459B000000004945
              4E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              590000000970485973000019D6000019D60118D1CAED0000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A000002C449
              4441545885EDD74B881D4514C6F1DFC94C22A2E84410254150F1159190D520F8
              821851D0850F4434E6A1A012925D7021A821105C2A42C051041995E0C2850B85
              801B37A238AE047163D068067C80C12C92D149A6B2E87363CFCDDCBE7DE7E52C
              F241D15D55A7AAFE7DAAEB71A29462A568D5FF0D50D78A82191EB441445C8F2D
              58DBB2C919FC80C3A594338D96A594D609CFE014CA3CD2571869EA3FDAFEC0E9
              91EF711C2F61B2A56786F124B6E39D52CA0B0BF60C9ECF2FDC318837B3ED2A1C
              C164935DDF1F382236E5EBBA7C1E6DE991FA07CFE0975A1F73AA1126221EC71B
              830E3E5FF5F3CC2BCB4291EA07B361592852FD6006DE8716A215B5035F80E9A5
              E58499C4E92683658329A53C8DCB9A6C966CB544C430EEC26DB81C7FE1DB8898
              283D0EC445878988D5D8A33A4CAF9CC3E4E788D8870FBAA116759A22620487F1
              7A0F10B816E3F830222E5A1298F4C8C7D8DCC3645A75EA77F414C6960406BB70
              6F43FDB3F8A4AB6C67443CB4A8301131A4FA473A3AADBA6E76744C357DF739DF
              432F2F2A0C6EC7D5F97E0277ABA6ACA383D8814B55579247F06FD68D46C4BA41
              61FEC9E79A39EA6ECDE7DFB83FE19EC8B293780FBB33BF37A11EC61442DE0EFA
              C14C6375BE7F97CFAD11D1DDAEB3997D8A9FF06AAD6E1CF7E0BACC0FE100BEC0
              44968DA0F90E9C1DFF9ED043F85A35DF47F039C6D36E9BFFA280BD18555DDC67
              7033BEACD5FF8A1BF166ADEC8E524A5F98B1347E2CF323785B75CE94F4DCC5D9
              793D2CD987CF328D76D5BD8BB76AF953B8A40DCC0DAA79FD139BFAD87EE3FC58
              690B0ECD515E4F1F9DEBA34598B15DB54CA7F28B1ECD413AE9CEB4DB9CD3521F
              689B6AD5F40299C24DAD6172A007F06343A70FA6DDFE3E5EE84E3BE71B51764E
              E18DB8CAEC9578AC947230ED5EC46B9A0FE19378AE94726856E9A0D1614B4FDE
              82F7552BAAEE89DF541BE0FA05C5DAF3517AF31A5C813F54E1ED4C4FFBA58419
              546701DADF657EE0233D820000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000097048597300001D8700001D87018FE5F1650000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A000002CB49
              4441545885ED983D68144114C77F7F8D18216A52A860EE0A4D3485164230A016
              1AB1B3F303116CB410ECB4B0B151B40888858A5818C1321012442FD8A885F851
              88A2D14A4C612488881FE40EE3A9E8A4D8396EB3B7979DDDF52E87E4C1703B6F
              DEBCF7BB79FB666757C6181A5916CC354094CC03A695448092B2928624E52599
              982D2FE9A6A42EA760C698580DC8025F0093B27D05B291F112000ED90023407B
              82F919E08EF5311865AFB8DB8CA43CB0D4FEFB895893CB3EB2C07B206F8C593E
              ABAD0BA0A44E63CC98BD3600C6182581F3F974F213592492D6014FD3C0A41197
              2AEE03DA6A0D524D22532CE91BD05A4A45C3A518684D039256FECF27493D651E
              30AD343C60D31CC6EE00364519B9EC8333F6AB7FB50FBA4A5D522C6997A47E49
              6F254D492A4A7A276940D25E49D5391C8E47C6330BEF47CCED041E107D361C05
              7A129D07930202DB8877B0FD01ECAF0B205E017C76000AEA8AC0D67A00DE8B80
              FB036C001E868CBD0116D50C10D8EE90CE1CB0CAAE58D8F89192BF5A54F18140
              FF327021A0BB081C03160383C0490B56E9A3062BF88AF24A9CC73BEC3EF3E946
              8166E0A3ED8F036B80A3C05FABFB9E26C579ABCB54B12F15C7D51038031CB6CD
              AF1B07D602C77DBA36D714170024B5D8FE7DFB7B4D5226C4BE94AA66BC6228FA
              C63E010316C42F3F815FC0920A3F0E2BF8C21AEFB0FD2EBC97EEE08DDD61C75F
              FA74578065C063DB3F03EC0CCC1B03DA811394535C8893E27376D26D9F2E8B77
              734FFA02EDB163970200FD5657C4ABDC5C607C18381DD08DC4015C49F9BE3BE5
              60BF2564750D7003586FD31EB50D1D7206B441F7F9963F07F4022DB3D88F8404
              3D085C77807B0D2C8C05E8839C8C70DE676D5703130E30C136056C9E11D715D0
              065E019C059EE3557730C06FA0DBDA76031F62C01580DD1531E300C66D785FB2
              6E39C03D023686F988FD752B8948EAC17B7CF5E2A5BFC9AEEE1360D81873B7EA
              DC7A00A691867FAB9B06F669139282A2E3050000000049454E44AE426082}
          end>
      end
      item
        Name = 'Album'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
              0D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              008549444154384FED93D10980201445A5091AA5111AAD4DAB119AA0DEC91453
              1315FBF3C0C5A7DCFB5051D569CA2C5A4567A1C8900DD844932E6F632E64C806
              B84D4A1A82F50FCF98621111F0C57A124C06BF1E7569611EF5E7ECB09AAF1DE6
              1C997980BB183524B0FEE647FEB5E121320FBB0432BB2EDFF07D78F1DC4789C8
              44BF5EA706A52ED4503BCA1D918CCE0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
              63000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              00D549444154484BED94E111C140104643254AA00254800EA8800E28810AE884
              0E50013AD0417C2F2E6672B399C9267E9137F3E66E6E66B397BDBB4D5A5A602E
              6F326D20F17CE743278C309247B99077B9951779901E7A722F0792F8021B797A
              4F3398B35687426C378C55E9CBA121BB2FC59384F29D25BB8CE51CA6D2C49364
              296792738CDDC99534F196EB19C698B2F50C4F9287E46FD68613C98D34F124A1
              E694666C78955F2917779E44BCA7581E5F69C9BC67528BDF49C241E6505B7A17
              F56DDABB88317B17E409ACEE5A55E20B5DB8E52F499217468449B71D43ABF200
              00000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              012949444154484BED95FD4DC3301047030BC0086C009DA08CC0067403D8A074
              02CA06B0019DA4DDA065829609CAEF115FE438B69438F907E4273D39EAC75DEE
              7C4EAA42E1DF732D5FE55E9E2792584BD9E2C2ADC65A3EC90F7990F7722E5732
              971BF928DFE4331FC438C9F7FAF29717C95D8F859854DE70E956E34A52E9D410
              93CA1BC2C47D7990EC5B4CB6AA95A40FB495F61AB15633073638298FD24FDE89
              935331156D2483197326391D7425496EAB776E8D61DF913C496EE25BB7C6B873
              2B2724494E62CE236D0CF7D5DCCA6FF92993B0273EFC9187850D182B931AFE8E
              C45659089592D43F96A9380D24B6A4D099C64C3A7172F778342531D338F871D7
              03627ED59735E194D9F4F136B1D722FA033714922EA47F5AA2F02C2629533885
              C41A73E385C29FA0AA7E0064EF679A037421FC0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000230000002308060000001ED9B3
              59000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0139494441545847ED968151C23018462B0B2813E006EA04EA066E201BE806BA
              816E2023E804C804E804E2066EA0DFAB492F96A629243D8E9A77F72E97DCF127
              B45FD214994CE6BF70249FE487FCEE41EA529F79FE70605A973779223FE54AF2
              23B71FCBB19C48E63963C0C79564F5CF65EF970BC9D87DD94B03F5A949ED8A91
              692DA7A67D346D5FD8FAAD8BD929B18BB995F3800F722DAC5D2017F577E9CB0C
              8F9AF12E2EA54B63CD98273395ECB0B16457FA7C9164D1E6D14BCC620E255BFD
              ABECF9610B43F0550D26C0EFF25C12D0BB166F24D827D4994D024C06784536A4
              6D922F97E401E69F9283CB80047C2683A4C8CC6BC050C02B0613E0E4E4C5F8A8
              2FC69E05D7A6ED0B3EB040C02BF876D46141DCEC38EAED4D8F33C5F663E1A687
              0BE99E678D3039E70213D70FAF145297FA5B5D2B3299CC9E51143F53948323C9
              AA68ED0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0125494441545847ED978111C1401045332A50821274480774A0044A50820E50
              012A601FD91913B7B98DB80C63DFCC9F23F76F77B9D9E452054110044926A2B5
              682FBA161639C8454E17184FA254B09222A7ABC88D88055BD1F3020DF469C841
              2E62933BCB5984B9F96B4A1508E42236DB9DC52AA46481908C3FAAC7AFE51305
              8E450B91A7E3F1CC44BDD0604DACEB4B91CE79C59A263A97C5325AD7B5A9A6F7
              6FEDE0C19B6A062BFE0B96B1EB758B4E71FEA2492EF5E8DD6238D6E35B74DA02
              612ED239AF58D344E7B258C6B60074E541A41E4B7852C5817AB2584677803749
              C6FF8B26294A14D8979F2C506FBC9C5286420FC72F37F054811CBFA1D38B4C0F
              C8B17A7CAC76F5D80A0BF48432A4C8E9FE4330F202E3793AF41539C835C46E05
              4110FC185575034A44E8C5F6C912BC0000000049454E44AE426082}
          end>
      end>
    Left = 592
    Top = 144
  end
  object VirtualImageList1: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'Circle_Hint'
        Name = 'Circle_Hint'
      end
      item
        CollectionIndex = 1
        CollectionName = 'Color'
        Name = 'Color'
      end
      item
        CollectionIndex = 5
        CollectionName = 'Save_svg'
        Name = 'Save_svg'
      end
      item
        CollectionIndex = 3
        CollectionName = 'Save_Image'
        Name = 'Save_Image'
      end
      item
        CollectionIndex = 4
        CollectionName = 'Copy'
        Name = 'Copy'
      end
      item
        CollectionIndex = 6
        CollectionName = 'Copy_SVG'
        Name = 'Copy_SVG'
      end
      item
        CollectionIndex = 7
        CollectionName = 'Album'
        Name = 'Album'
      end>
    ImageCollection = ImageCollection1
    Width = 20
    Height = 20
    Left = 560
    Top = 216
  end
  object pmFill: TPopupMenu
    Images = VirtualImageList1
    Left = 560
    Top = 72
    object pmSelectFillNone: TMenuItem
      Caption = 'Select Fill None'
      ImageIndex = 0
      ImageName = 'Circle_Hint'
      OnClick = pmSelectFillNoneClick
    end
    object pmSelectFillColor: TMenuItem
      Caption = 'Select Fill Color'
      ImageIndex = 1
      ImageName = 'Color'
      OnClick = pmSelectFillColorClick
    end
  end
  object pmLibrary: TPopupMenu
    Images = VirtualImageList1
    OnPopup = pmLibraryPopup
    Left = 384
    Top = 280
  end
end
