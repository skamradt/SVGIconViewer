unit svgViewer.RightToolbarController;

interface

uses
  System.Types,
  System.Classes,
  Winapi.Windows,
  vcl.forms,
  vcl.Graphics,
  vcl.StdCtrls,
  vcl.ComCtrls,
  Vcl.ControlList,
  vcl.Skia,
  svgViewer.Types;

type
  TRightToolbarController = class(TInterfacedObject,ISVGViewerRightToolbar)
  private
    fControlList : TControlList;
    fColorIcon : TskSVG;
    fColorLabel : TLabel;
    fNormalIcon : TskSVG;
    fFillColor : TColor;
    fToneCOlor : TColor;
    fToneVisible : boolean;
    fBackColor : TColor;
    fCopyCodeVisible : boolean;
    fItemArray : TArray<TRightMainToolbarButtons>;
    fItemEvents : TArray<TNotifyEvent>;
    function GetBackColor: TColor;
    function GetFillColor: TColor;
    function GetToneColor: TColor;
    function GetToneColorEnabled: Boolean;
    function GetCopyCodeEnabled: boolean;
    function GetButtonEvent(aButton: TRightMainToolbarButtons): TNotifyEvent;
    procedure SetBackColor(const Value: TColor);
    procedure SetFillColor(const Value: TColor);
    procedure SetToneColor(const Value: TColor);
    procedure SetToneColorEnabled(const Value: Boolean);
    procedure SetCopyCodeEnabled(const Value: boolean);
    procedure SetButtonEvent(aButton: TRightMainToolbarButtons;
      const Value: TNotifyEvent);
    {rendering methods}
    procedure RenderFillIcon;
    procedure RenderToneIcon;
    procedure RenderBackIcon;
    procedure RenderStandardIcon(svg:string);
    procedure SetVisibleButtons;
    procedure UpdateColorSvg(aSvg:TSkSvg;aColor:TColor);
    {retargeted events}
    procedure OnBeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure OnItemClick(Sender: TObject);
  public
    constructor Create(aControlList:TControlList;aColorIcon:TskSVG;aColorLabel:TLabel;aNormalIcon:TskSVG);
    property FillColor : TColor read GetFillColor write SetFillColor;
    property ToneColor : TColor read GetToneColor write SetToneColor;
    property ToneColorEnabled : Boolean read GetToneColorEnabled write SetToneColorEnabled;
    property BackColor : TColor read GetBackColor write SetBackColor;
    property CopyCodeEnabled : boolean read GetCopyCodeEnabled write SetCopyCodeEnabled;
    property ButtonEvents[aButton:TRightMainToolbarButtons]:TNotifyEvent read GetButtonEvent write SetButtonEvent;

  end;

implementation

uses
  System.SysUtils,
  vcl.GraphUtil,
  vcl.controls,
  svgIcons.FluentUIRegular20.Source,
  svgIcons.FluentUIFilled20.Source;

{$REGION 'SVG Icon Constants'}
const
  C_COPY_CODE =
    '<svg xmlns="http://www.w3.org/2000/svg" fill="#000" role="img" version="1.1" viewBox="0 0 24 24"><path '+
    'd="M14.152 2.64c.426 0 .845.027 1.258.08l-.604 1.12-1.116 2.072-.757 1.414c-.027.05-.056.07-.114.067-'+
    '1.187-.08-2.017.235-2.156.266l.2-.75 1.015-3.768c.023-.085.047-.17.068-.256a10.03 10.03 0 0 1 2.206-'+
    '.244zm2.544.327c1.19.312 2.298.838 3.277 1.534l-1.797 1.513-1.712 1.435c-.288.242-.576.486-.861.732-.046.04-'+
    '.08.043-.137.017a5.77 5.77 0 0 0-1.893-.708l.463-.67 1.83-2.65c.277-.4.554-.8.83-1.203zm-5.7.181c-.015.104-'+
    '.03.201-.046.298a1675.621 1675.621 0 0 1-.58 3.327c-.06.352-.115.645-.17.998-.01.066-.051.076-.093.093-.886.368-'+
    '1.605 1.01-1.837 1.236l-.053-.635c-.02-.227-.037-.453-.055-.679-.02-.235-.037-.47-.057-.704l-.06-.685-.057-'+
    '.678-.06-.703c-.005-.066-.015-.132-.014-.198v-.005a10.086 10.086 0 0 1 3.083-1.665zM7.144 5.495l.142.632.522 '+
    '2.323c.066.293.133.568.195.862a.123.123 0 0 1-.024.093 6.798 6.798 0 0 0-.955 1.466l-.277-.555-1.29-'+
    '2.593a.142.142 0 0 1-.018-.063l.125-.207c.249-.353.49-.713.755-1.055.197-.254.433-.477.65-.714zM12.48 7.63c.117 '+
    '0 .234.003.35.011.808.053 1.562.298 2.275.676.457.242.878.536 1.27.871.067.057.13.118.202.184l-1.383.951-3.723 '+
    '2.544c-.308.21-.615.425-.925.633-.07.046-.092.086-.072.172.08.346.147.694.22 1.04.003.015.01.028.017.05l.622-.124 '+
    '1.24 2.606c-.147-.02-.28-.04-.416-.057-.285-.032-.57-.067-.856-.09a7.53 7.53 0 0 0-.758-.032c-.453.01-.907.038-'+
    '1.34.192-.242.086-.46.208-.622.432-.11-.107-.22-.208-.32-.316a5.686 5.686 0 0 1-1.01-1.503 5.857 5.857 0 0 1-'+
    '.469-1.566 5.387 5.387 0 0 1-.05-1.28 5.775 5.775 0 0 1 1.052-2.916 5.85 5.85 0 0 1 3.804-2.4 5.39 5.39 0 0 1 '+
    '.895-.077zm-1.39.785c-.026.011-.051.021-.076.033a7.446 7.446 0 0 0-1.525.95 6.121 6.121 0 0 0-1.403 1.555 4.536 '+
    '4.536 0 0 0-.686 2.253c-.018.485.05.962.17 1.43.17.676.454 1.305.798 1.908.033.058.074.05.115.03.119-.055.235-'+
    '.117.357-.18l-.04-.07c-.164-.286-.344-.565-.49-.861-.392-.805-.598-1.65-.52-2.554.03-.33.09-.652.193-.966.372-1.127 '+
    '1.09-2.004 1.988-2.75.35-.29.723-.548 1.119-.778zM4.953 8.6l.347.464c.506.68 1.018 1.358 1.524 '+
    '2.037.037.054.065.095.037.166-.143.366-.27.83-.318 1.205-.124-.11-.247-.216-.36-.317L4.68 10.827c-.116-.103-.233-'+
    '.205-.346-.312a.11.11 0 0 1-.028-.052 10.186 10.186 0 0 1 .617-1.808zm12.323.595.135.816c.057.353.11.706.168 '+
    '1.06l.193 1.192c.036.217.07.435.107.653.01.057.003.086-.067.1-.79.152-1.581.31-2.372.465-.987.194-1.975.385-2.962.578-'+
    '.516.101-1.03.205-1.546.307-.01.002-.017 0-.032 0-.058-.208-.12-.415-.172-.624-.006-.022.016-.06.038-.08zM4.134 '+
    '11.37l.572.356c.566.352 1.143.707 1.71 1.057.055.034.075.068.072.13-.01.152-.045.858.035 1.355l-.42-.147c-.677-.234-'+
    '1.353-.469-2.03-.7a.188.188 0 0 1-.03-.014 10.418 10.418 0 0 1 .09-2.037zm-.018 2.834c.117.022.23.043.342.067.696.145 '+
    '1.387.287 2.082.435.03.007.075.042.078.07.06.28.249.818.257.85h-.401c-.314 0-.628-.003-.942 0-.37.003-.741.01-'+
    '1.112.017h-.007a10.21 10.21 0 0 1-.297-1.44zm8.243.56c.02 0 .05.02.067.037.304.302.597.615.91.905.265.244.553.46.83'+
    '.69a5.78 5.78 0 0 1 1.04 1.113c.52.727.896 1.522 1.105 2.392a.481.481 0 0 1-.032.25c-.09.265-.282.457-.494.628-'+
    '.296.24-.63.42-.982.566-.073.03-.1.015-.132-.056-.363-.794-.73-1.586-1.096-2.378l-1.487-3.223-.347-.75-.02-.052c.214-'+
    '.04.424-.083.634-.12h.004zM6.966 15.97c.035 0 .06.017.084.06.132.232.158.337.43.76l-2.114 1.127a10.14 10.14 0 0 1-'+
    '.667-1.413l.49-.117 1.732-.413a.18.18 0 0 1 .046-.006zm3.534 1.412c.118 0 .235.005.353.015.537.045 1.072.111 '+
    '1.608.171.027.003.063.03.075.055.217.47.432.94.646 1.41.01.02.01.052 0 .07l-.597 1.078c-.417-.07-.824-.148-1.234-'+
    '.208a14.496 14.496 0 0 0-.948-.108 11.76 11.76 0 0 0-.973-.049c-.543 0-1.083.05-1.603.225l-.045.014.305-.71c.19-'+
    '.446.388-.89.57-1.34a.647.647 0 0 1 .307-.334 2.2 2.2 0 0 1 .76-.23c.258-.036.517-.059.776-.059zm.02.27a5.133 5.133 '+
    '0 0 0-1.324.21.155.155 0 0 0-.083.076c-.17.345-.335.692-.5 1.04-.051.103-.1.21-.15.314l.023.02c.005-.013.007-.028.'+
    '015-.039.285-.4.57-.8.857-1.198a.234.234 0 0 1 .113-.08c.535-.165 1.072-.314 1.645-.272-.027-.008-.054-.017-.081-'+
    '.022a2.644 2.644 0 0 0-.515-.048z" fill="#212121" fill-opacity="1" mask="none" paint-order="normal"/></svg>';

  C_SETTINGS =
    '<svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M1.91099 '+
    '7.38266C2.28028 6.24053 2.88863 5.19213 3.69133 4.30364C3.82707 4.15339 4.04002 4.09984 4.23069 '+
    '4.16802L6.14897 4.85392C6.66905 5.03977 7.24131 4.76883 7.42716 4.24875C7.44544 4.19762 7.45952 4.14507 '+
    '7.46925 4.09173L7.83471 2.08573C7.87104 1.88627 8.02422 1.7285 8.22251 1.6863C8.8027 1.5628 9.39758 1.5 '+
    '10.0003 1.5C10.6026 1.5 11.1971 1.56273 11.7769 1.68607C11.9752 1.72824 12.1284 1.88591 12.1648 '+
    '2.08529L12.5313 4.09165C12.6303 4.63497 13.1511 4.9951 13.6944 4.89601C13.7479 4.88627 13.8004 4.87219 '+
    '13.8515 4.85395L15.7698 4.16802C15.9605 4.09984 16.1734 4.15339 16.3092 4.30364C17.1119 5.19213 17.7202 '+
    '6.24053 18.0895 7.38266C18.1518 7.57534 18.0918 7.78658 17.9374 7.91764L16.3825 9.23773C15.9615 9.5952 '+
    '15.9101 10.2263 16.2675 10.6473C16.3027 10.6887 16.3411 10.7271 16.3825 10.7623L17.9374 12.0824C18.0918 '+
    '12.2134 18.1518 12.4247 18.0895 12.6173C17.7202 13.7595 17.1119 14.8079 16.3092 15.6964C16.1734 15.8466 '+
    '15.9605 15.9002 15.7698 15.832L13.8515 15.1461C13.3315 14.9602 12.7592 15.2312 12.5733 15.7512C12.5551 '+
    '15.8024 12.541 15.8549 12.5312 15.9085L12.1648 17.9147C12.1284 18.1141 11.9752 18.2718 11.7769 '+
    '18.3139C11.1971 18.4373 10.6026 18.5 10.0003 18.5C9.39758 18.5 8.8027 18.4372 8.22251 18.3137C8.02422 '+
    '18.2715 7.87104 18.1137 7.83471 17.9143L7.46926 15.9084C7.37018 15.365 6.8494 15.0049 6.30608 '+
    '15.104C6.25265 15.1137 6.20011 15.1278 6.14906 15.1461L4.23069 15.832C4.04002 15.9002 3.82707 15.8466 '+
    '3.69133 15.6964C2.88863 14.8079 2.28028 13.7595 1.91099 12.6173C1.84869 12.4247 1.90876 12.2134 2.06313 '+
    '12.0824L3.61798 10.7623C4.03897 10.4048 4.09046 9.77373 3.73299 9.35274C3.69784 9.31135 3.65937 9.27288 '+
    '3.618 9.23775L2.06313 7.91764C1.90876 7.78658 1.84869 7.57534 1.91099 7.38266ZM2.97154 7.37709L4.26523 '+
    '8.47546C4.34803 8.54576 4.42496 8.62269 4.49526 8.70548C5.2102 9.54746 5.10721 10.8096 4.26521 '+
    '11.5246L2.97154 12.6229C3.26359 13.4051 3.68504 14.1322 4.21648 14.7751L5.81246 14.2044C5.91473 14.1679 '+
    '6.01982 14.1397 6.12667 14.1202C7.21332 13.922 8.25487 14.6423 8.45305 15.729L8.75702 17.3975C9.16489 '+
    '17.4655 9.58024 17.5 10.0003 17.5C10.42 17.5 10.8351 17.4656 11.2427 17.3976L11.5475 15.7289C11.567 '+
    '15.6221 11.5951 15.517 11.6317 15.4147C12.0034 14.3746 13.1479 13.8327 14.1881 14.2044L15.784 14.7751C16.3155 '+
    '14.1322 16.7369 13.4051 17.029 12.6229L15.7353 11.5245C15.6525 11.4542 15.5756 11.3773 15.5053 '+
    '11.2945C14.7903 10.4525 14.8933 9.1904 15.7353 8.47544L17.029 7.37709C16.7369 6.59486 16.3155 5.86783 '+
    '15.784 5.22494L14.1881 5.79559C14.0858 5.83214 13.9807 5.8603 13.8738 5.87979C12.7872 6.07796 11.7456 '+
    '5.3577 11.5475 4.27119L11.2427 2.60235C10.8351 2.53443 10.42 2.5 10.0003 2.5C9.58024 2.5 9.16489 2.53448 '+
    '8.75702 2.60249L8.45304 4.27105C8.43355 4.37791 8.40539 4.48299 8.36884 4.58527C7.99714 5.62542 6.8526 '+
    '6.1673 5.81237 5.79556L4.21648 5.22494C3.68504 5.86783 3.26359 6.59486 2.97154 7.37709ZM7.50026 10C7.50026 '+
    '8.61929 8.61954 7.5 10.0003 7.5C11.381 7.5 12.5003 8.61929 12.5003 10C12.5003 11.3807 11.381 12.5 10.0003 '+
    '12.5C8.61954 12.5 7.50026 11.3807 7.50026 10ZM8.50026 10C8.50026 10.8284 9.17183 11.5 10.0003 11.5C10.8287 '+
    '11.5 11.5003 10.8284 11.5003 10C11.5003 9.17157 10.8287 8.5 10.0003 8.5C9.17183 8.5 8.50026 9.17157 '+
    '8.50026 10Z"/></svg>';

{$ENDREGION}

{ TRightToolbarController }

constructor TRightToolbarController.Create(aControlList: TControlList;aColorIcon:TskSVG;aColorLabel:TLabel;aNormalIcon:TskSVG);
begin
  fControlList := aControlList;
  fColorIcon := aColorIcon;
  fColorLabel := aColorLabel;
  fNormalIcon := aNormalIcon;
  fControlList.OnBeforeDrawItem := OnBeforeDrawItem;
  fControlList.OnItemClick := onItemClick;
  fToneVisible := false;
  fCopyCodeVisible := false;
  SetLength(fItemEvents,5);
  SetVisibleButtons;
end;

function TRightToolbarController.GetBackColor: TColor;
begin
  Result := fBackColor;
end;

function TRightToolbarController.GetButtonEvent(
  aButton: TRightMainToolbarButtons): TNotifyEvent;
begin
  Result := fItemEvents[ord(aButton)];
end;

function TRightToolbarController.GetCopyCodeEnabled: boolean;
begin
  Result := fCopyCodeVisible;
end;

function TRightToolbarController.GetFillColor: TColor;
begin
  Result := fFillColor;
end;

function TRightToolbarController.GetToneColor: TColor;
begin
  Result := fToneColor;
end;

function TRightToolbarController.GetToneColorEnabled: Boolean;
begin
  Result := fToneVisible;
end;

procedure TRightToolbarController.OnBeforeDrawItem(AIndex: Integer;
  ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
begin
  case fItemArray[aIndex] of
    btnFillColor : RenderFillIcon;
    btnToneColor : RenderToneIcon;
    btnBackColor : RenderBackIcon;
    btnCopyCode : RenderStandardIcon(C_COPY_CODE);
    btnSettings : RenderStandardIcon(C_SETTINGS);
  end;
  // note this is not yet used, hints are turned off as they do not yet
  // behave properly as the user changes from one item to another.
  if (odHotLight in AState) then
    begin
      case fItemArray[aIndex] of
        btnFillColor : fControlList.hint := 'Fill color';
        btnToneColor : fControlList.hint := 'Tone color';
        btnBackColor : fControlList.hint := 'Background color';
        btnCopyCode : fControlList.hint := 'Copy to Delphi Controls';
        btnSettings : fControlList.hint := 'Settings';
      end;
    end;
end;

procedure TRightToolbarController.OnItemClick(Sender: TObject);
begin
  if assigned(fItemEvents[Ord(fItemArray[fControlList.ItemIndex])]) then
    fItemEvents[Ord(fItemArray[fControlList.ItemIndex])](fControlList);
  fControlList.ItemINdex := -1;
end;

procedure TRightToolbarController.RenderBackIcon;
begin
  fNormalIcon.Visible := false;
  fColorLabel.Visible := true;
  fColorIcon.Visible := true;
  UpdateColorSvg(fColorIcon,fBackColor);
  fColorLabel.Caption := 'Back';
  fColorLabel.Enabled := true;
end;

procedure TRightToolbarController.RenderFillIcon;
begin
  fNormalIcon.Visible := false;
  fColorLabel.Visible := true;
  fColorIcon.Visible := true;
  UpdateColorSvg(fColorIcon,fFillColor);
  fColorLabel.Caption := 'Fill';
  fColorLabel.Enabled := true;
end;


procedure TRightToolbarController.RenderStandardIcon(svg: string);
begin
  fNormalIcon.Visible := true;
  fColorLabel.Visible := false;
  fColorIcon.Visible := False;
  fNormalIcon.svg.source := svg;
end;

procedure TRightToolbarController.RenderToneIcon;
begin
  fNormalIcon.Visible := false;
  fColorLabel.Visible := true;
  fColorIcon.Visible := true;
  UpdateColorSvg(fColorIcon,fToneColor);
  fColorLabel.Caption := 'Tone';
end;

procedure TRightToolbarController.SetBackColor(const Value: TColor);
begin
  fBackColor := Value;
  fControlList.Invalidate;
end;

procedure TRightToolbarController.SetButtonEvent(aButton: TRightMainToolbarButtons;
  const Value: TNotifyEvent);
begin
  fItemEvents[Ord(aButton)] := Value;
end;

procedure TRightToolbarController.SetCopyCodeEnabled(const Value: boolean);
begin
  fCopyCodeVisible := value;
  SetVisibleButtons;
  fControlList.Invalidate;
end;

procedure TRightToolbarController.SetFillColor(const Value: TColor);
begin
  fFillColor := Value;
  fControlList.Invalidate;
end;

procedure TRightToolbarController.SetToneColor(const Value: TColor);
begin
  fToneColor := Value;
  fControlList.Invalidate;
end;

procedure TRightToolbarController.SetToneColorEnabled(const Value: Boolean);
begin
  fToneVisible := value;
  SetVisibleButtons;
  fControlList.Invalidate;
end;

procedure TRightToolbarController.SetVisibleButtons;
var
  btns : TArray<TRightMainToolbarButtons>;
begin
  SetLength(fItemArray,3);
  fItemArray[0] := btnFillColor;
  fItemArray[1] := btnBackColor;
  fItemArray[2] := btnSettings;
  if fToneVisible then
    begin
      SetLength(Btns,1);
      btns[0] := btnToneColor;
      Insert(btns,fItemArray,1);
    end;
  if fCopyCodeVisible then
    begin
      SetLength(Btns,1);
      btns[0] := btnCopyCode;
      Insert(btns,fItemArray,Length(fItemArray)-1);
    end;
  // grow the list to maximum first so it won't flash the scrollbar
  fControlList.Width := 5 * (fControlList.itemwidth + 4);
  fControlList.ItemCount := Length(fItemArray);
  fControlList.Width := fControlList.ItemCount * (fControlList.itemwidth + 4);
  fControlList.Invalidate;
end;

procedure TRightToolbarController.UpdateColorSvg(aSvg: TSkSvg; aColor: TColor);
var
  sColor : string;
begin
  if aColor = clNone then
    begin
      asvg.svg.source :=
      '<svg viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">'+
      StringReplace(C_FluentUI_Presence_Tentative_Regular_20,
       ' fill="#212121"',' fill="black" opacity="0.3"',[rfReplaceAll])+
      StringReplace(C_FluentUI_Presence_Unknown_Regular_20,
        ' fill="#212121"',' fill="black"',[rfReplaceAll])+
      '</svg>';
    end
  else
    begin
      sColor := ColorToWebColorStr(aColor);
      asvg.svg.source :=
      '<svg viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">'+
      StringReplace(C_FluentUI_Presence_Busy_Filled_20,
           ' fill="#212121"',' fill="'+sColor+'"',[rfReplaceAll])+
      StringReplace(C_FluentUI_Presence_Unknown_Regular_20,
        ' fill="#212121"',' fill="black"',[rfReplaceAll])+
      '</svg>';

    end;
end;

end.
