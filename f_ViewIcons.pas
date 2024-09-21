unit f_ViewIcons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Skia, Vcl.Skia, Vcl.ControlList,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, svgViewer.Types, Vcl.ComCtrls,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, u_ViewIconsSettings, svgViewer.RightToolbarController;

const
  C_CAPTION = 'SVG Icon Viewer';

type
  TForm4 = class(TForm)
    pnlToolbar: TPanel;
    ControlList1: TControlList;
    svgIcon: TSkSvg;
    dlgColor: TColorDialog;
    lblAvailableIconsCaption: TLabel;
    Shape1: TShape;
    lblAvailableIconCount: TLabel;
    SearchBox1: TSearchBox;
    Shape2: TShape;
    StatusBar1: TStatusBar;
    pmIcon: TPopupMenu;
    mniCopySvgClipboard: TMenuItem;
    mniSaveSVGFile: TMenuItem;
    mniSavePNGToFile: TMenuItem;
    svgSaveDlg: TSaveDialog;
    pngSaveDlg: TSaveDialog;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    pmFill: TPopupMenu;
    pmSelectFillNone: TMenuItem;
    pmSelectFillColor: TMenuItem;
    Shape3: TShape;
    pmLibrary: TPopupMenu;
    pnlSearchInfo: TPanel;
    lstRightToolbar: TControlList;
    shpRBtnBorder: TShape;
    svgColorIcon: TSkSvg;
    lblColorLbl: TLabel;
    svgRightIcon: TSkSvg;
    lstIconTypes: TControlList;
    shpTypeBtnBorder: TShape;
    svgIconType: TSkSvg;
    lstLibrary: TControlList;
    shpLibBorder: TShape;
    svgLibrary: TSkSvg;
    mniCopyIconName: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure svgRegularClick(Sender: TObject);
    procedure svgFilledClick(Sender: TObject);
    procedure svgTwoToneClick(Sender: TObject);
    procedure dlgColorShow(Sender: TObject);
    procedure ClickBackColor(Sender: TObject);
    procedure ClickToneColor(Sender: TObject);
    procedure ClickFillColor(Sender: TObject);
    procedure ControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure ControlList1ItemClick(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure mniCopySvgClipboardClick(Sender: TObject);
    procedure mniSaveSVGFileClick(Sender: TObject);
    procedure pmIconPopup(Sender: TObject);
    procedure mniSavePNGToFileClick(Sender: TObject);
    procedure ClickSettings(Sender: TObject);
    procedure pmSelectFillNoneClick(Sender: TObject);
    procedure pmSelectFillColorClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LibraryClick(Sender: TObject);
    procedure pmLibraryPopup(Sender: TObject);
    procedure ClickGenerateCollection(Sender: TObject);
    procedure lstIconTypesBeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure lstIconTypesItemClick(Sender: TObject);
    procedure lstIconTypesEnableItem(const AIndex: Integer;
      var AEnabled: Boolean);
    procedure mniCopyIconNameClick(Sender: TObject);
  private
    fFillColor : TColor;
    fToneColor : TColor;
    fList : ISVGIconList;
    fSettings : ISVGIconConfig;
    fStyle : TSVGIconListType;
    fIconLibrary : ISVGLibrary;
    fCollectionIdx : integer;
    fCollection : ISVGLibraryCollection;
    fUserDir : String;
    fRightToolbar : ISVGViewerRightToolbar;
    procedure LoadFormPosition;
    procedure SaveFormPosition;
    procedure SetFillColor(Value:TColor);
    procedure SetToneColor(Value:TColor);
    procedure SetBackColor(Value:TColor);
    procedure SelectRegular;
    procedure SelectFilled;
    procedure SelectTwoTone;
    procedure Updatelist;
    procedure UpdateColorSvg(aSvg:TSkSvg;aColor:TColor);
    procedure SetList(Value:ISVGIconList);
    procedure SelectCollection(Sender:TObject);
    procedure CountAllIcons;
  public
    { Public declarations }

  end;

var
  Form4: TForm4;

implementation

uses
  Vcl.Themes,
  vcl.GraphUtil,
  System.IOUtils,
  System.Math,
  VCL.Clipbrd,
  f_ViewIconsConfig,
  System.Types,
  svgIcon.Utils,
  svgViewer.IconLibrary,
  svgViewer.Icons.Search,
  svgViewer.GenerateImageCollection,
  svgIcons.FluentUIRegular20.Source,
  svgIcons.FluentUIFilled20.Source,
  IconCollections.Bootstrap,
  IconCollections.UserFolderIcons,
  IconCollections.RegisterTablerIcons,
  IconCollections.RegisterMicrosoftFluentUI;

{$R *.dfm}

procedure TForm4.ClickFillColor(Sender: TObject);
var
  pt : TPoint;
begin
  Pt := ClientToScreen(Point(lstRightToolbar.left,lstRightToolbar.Top+lstRightToolbar.height-2));
  pmFill.Popup(pt.X,pt.Y);
end;

procedure TForm4.ClickGenerateCollection(Sender: TObject);
var
  Obj : IUnknown;
begin
  if Application.MessageBox('This may copy a large amount of data to the clipboard.'
    + #13#10#13#10 + 'Are you sure you wish to procede?', 'Confirm',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then exit;
  Obj := TGenerateImageCollection.Create(fList,fSettings.GetOptionIntDefault('pngsize',20));
  ShowMessage('A TImageCollection Component containing all SVG images in the user directory which were then converted to PNG images was copied to clipboard.');
end;

procedure TForm4.ClickSettings(Sender: TObject);
var
  dlg  : TViewIconsConfigDlg;
  bNewUserDir : boolean;
  FolderList : ISVGUserFolderList;
begin
  dlg := TViewIconsConfigDlg.create(Self);
  try
    dlg.Config := fSettings;
    if dlg.ShowModal = mrOk then
      begin
        // if we didn't have a previous user folder, but there is one now,
        //  add the user folder collection
        bNewUserDir := fUserDir = '';
        fUserDir := fSettings.GetOptionStrDefault('userdir',fUserDir);
        // consider if we need to register a new collection
        bNewUserDir := (bNewUserDir and (fUSerDir <> ''));
        if bNewUSerDir then
          fIconLibrary.RegisterIconCollection(TUserFolderIcons.Create(fUserDir));
        // only update if the current list is a folderlist
        if Supports(fCollection,ISVGUserFolderList) and
          Supports(fList,ISVGUserFolderList,FolderList) and
          (fUserDir <> '') then
          begin
            FolderList.Directory := fUserDir;
            ControlList1.ItemCount := fList.Count;
          end;

      end;
  finally
    dlg.free;
  end;
end;

procedure TForm4.ClickToneColor(Sender: TObject);
begin
  dlgColor.color := fToneColor;
  dlgColor.Tag := 2;
  if dlgColor.Execute then
    begin
      SetToneColor(dlgColor.Color);
      fSettings.SetOptionColor('tonecolor',fToneColor);
    end;
end;

procedure TForm4.ControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
  ARect: TRect; AState: TOwnerDrawState);
begin
  svgIcon.svg.source := fList.Source[aindex];
end;

procedure TForm4.ControlList1ItemClick(Sender: TObject);
begin
  Statusbar1.SimpleText := '  '+fList.Name[ControlLIst1.ItemIndex];
end;

procedure TForm4.CountAllIcons;
var
  aCollection : ISVGLibraryCollection;
  aList : ISVGIconList;
  Ix, Count : integer;
begin
  Count := 0;
  for Ix := 0 to fIconLibrary.CollectionCount-1 do
    begin
      aCollection := fIconLibrary.Collection(ix);
      // IGNORE any user folder icon collections in the count!
      if supports(aCollection,ISVGUserFolderList) then
        continue;
      if ltOutline in aCollection.Available then
        Count := Count + aCollection.list[ltOutline].count;
      if ltFilled in aCollection.Available then
        Count := Count + aCollection.list[ltFilled].count;
      if ltTwoTone in aCollection.Available then
        Count := Count + aCollection.list[ltTwoTone].count;
    end;
  StatusBar1.SimpleText := Format('  There are a total of %.0n available icons!',[count+0.0]);
end;

procedure TForm4.dlgColorShow(Sender: TObject);
begin
  case dlgColor.Tag of
    0 : SendMessage(dlgColor.Handle, WM_SETTEXT, 0, Longint(PChar('Set Background Color')));
    1 : SendMessage(dlgColor.Handle, WM_SETTEXT, 0, Longint(PChar('Set Icon Fill Color')));
    2 : SendMessage(dlgColor.Handle, WM_SETTEXT, 0, Longint(PChar('Set Icon Tone Color')));
  end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  // service registrations
  fSettings := TSettings.create;
  fList := TSearchIconList.create;
  fIconLibrary := TIconLibrary.create;
  // library collection registrations
  IconCollections.RegisterMicrosoftFluentUI.RegisterCollections(fIconLIbrary);
  IconCollections.RegisterTablerIcons.RegisterCollections(fIconLibrary);
  fIconLibrary.RegisterIconCollection(TBootstrapIcons16.create);
  fUserDir := fSettings.GetOptionStrDefault('userdir','');
  if fUserDir <> '' then
    begin
      fIconLibrary.RegisterIconCollection(TUserFolderIcons.Create(fUserDir));
    end;
  // defaults
  fStyle := TSVGIconListType(fSettings.GetOptionIntDefault('style',0));
  fCollectionIdx := fSettings.GetOptionIntDefault('collection',4);
  if fCollectionIdx > fIconLibrary.CollectionCount-1 then
    fCollectionIdx := 0;
  LoadFormPosition;
  fRightToolbar := TRightToolbarController.create(lstRightToolbar,svgColorIcon,lblColorLbl,svgRightIcon);
  fRightToolbar.ButtonEvents[btnFillColor] := ClickFillColor;
  fRightToolbar.ButtonEvents[btnToneColor] := ClickToneColor;
  fRightToolbar.ButtonEvents[btnBackColor] := ClickBackColor;
  fRightToolbar.ButtonEvents[btnCopyCode] := ClickGenerateCollection;
  fRightToolbar.ButtonEvents[btnSettings] := ClickSettings;
  SelectCollection(nil);
  SetFillColor(fSettings.GetOptionColorDefault('fillcolor',clNone));
  SetToneColor(fSettings.GetOptionColorDefault('tonecolor',clSilver));
  SetBackColor(fSettings.GetOptionColorDefault('backcolor',StyleServices.GetSystemColor(clWindow)));
  CountAllIcons;
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  fSettings.SetOptionInt('collection',fCollectionIdx);
  fSettings.SetOptionInt('style',ord(fStyle));
  SaveFormPosition;
end;

procedure TForm4.LibraryClick(Sender: TObject);
var
  pt : TPoint;
begin
  Pt := ClientToScreen(Point(lstLibrary.left,lstLibrary.Top+lstLibrary.height-2));
  pmLibrary.popup(pt.x,pt.y);
  lstLibrary.ItemIndex := -1;
end;

procedure TForm4.LoadFormPosition;
begin
  width := fSettings.GetOptionIntDefault('mainform.width',width);
  if Width > screen.Width then
    Width := 800;
  height := fSettings.GetoptionIntDefault('mainform.height',height);
  if height > screen.height then
    height := max(constraints.minheight,550);
  left := fSettings.GetOptionIntDefault('mainform.left',(Screen.Width DIV 2) - (width DIV 2));
  if Left > screen.width then
    left := (Screen.Width DIV 2) - (width DIV 2);
  top := fSettings.GetOptionIntDefault('mainform.top',(Screen.Height DIV 2) - (height DIV 2));
  if top > screen.height then
    Top := (Screen.Height DIV 2) - (height DIV 2);
end;

procedure TForm4.lstIconTypesBeforeDrawItem(AIndex: Integer; ACanvas: TCanvas;
  ARect: TRect; AState: TOwnerDrawState);
const
  C_SVG = '<svg viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">';
  C_END = '</svg>';
begin
  case aIndex of
    0 : svgIconType.svg.Source := C_SVG+C_FluentUI_Icons_Regular_20+C_END;
    1 : svgIconType.svg.Source := C_SVG+C_FluentUI_Icons_Filled_20+C_END;
    2 : svgIconType.svg.Source := C_SVG+
          StringReplace(C_FluentUI_Icons_Filled_20,'"#212121"','"silver"',[rfReplaceAll])+
          C_FluentUI_Icons_Regular_20+
          C_END;
  end;
end;

procedure TForm4.lstIconTypesEnableItem(const AIndex: Integer;
  var AEnabled: Boolean);
begin
  case aIndex of
    0 : AEnabled := true;
    1 : AEnabled := ltFilled in fCollection.Available;
    2 : AEnabled := ltTwoTone in fCollection.Available;
  end;
end;

procedure TForm4.lstIconTypesItemClick(Sender: TObject);
begin
  case lstIconTypes.Itemindex of
    0 : SelectRegular;
    1 : SelectFilled;
    2 : SelectTwoTone;
  end;
end;

procedure TForm4.mniCopyIconNameClick(Sender: TObject);
begin
  if ControlList1.ItemIndex <> -1 then
    Clipboard.AsText := fList.name[ControlList1.ItemIndex];
end;

procedure TForm4.mniCopySvgClipboardClick(Sender: TObject);
begin
  if (ControlList1.itemindex > -1) then
    Clipboard.asText := fList.Source[ControlList1.itemindex];
end;

procedure TForm4.mniSavePNGToFileClick(Sender: TObject);
var
  LBitmap : TBitmap;
  pngImg : TWICImage;
  Sizes : TArray<INteger>;
  Size : integer;
  mRes : TModalResult;
  bFileExists : boolean;
begin
  SetLength(Sizes,1);
  Sizes[0] := fSettings.GetOptionIntDefault('pngsize',20);
  if fSettings.GetOptionBooleanDefault('pngscaled',true) then
    begin
      SetLength(Sizes,5);
      Sizes[1] := Trunc(Sizes[0] * 1.25);
      Sizes[2] := Trunc(Sizes[0] * 1.5);
      Sizes[3] := Trunc(Sizes[0] * 1.75);
      Sizes[4] := Trunc(Sizes[0] * 2);
    end;
  pngSaveDlg.Title := 'Save '+fList.name[ControlList1.itemindex]+' as SVG file';
  pngSavedlg.filename := STringReplace(fList.name[ControlList1.itemindex],#32,'_',[rfReplaceAll])+'.png';
  mRes := mrYes;
  bFileExists := false;
  repeat
    if not pngSavedlg.execute then
      mRes := mrCancel
    else
    begin
      if Length(Sizes)=1 then
        bFileExists := TFile.Exists(pngSaveDlg.FileName)
      else
        for size in Sizes do
          bFileExists := bFileExists or TFile.Exists(StringReplace(pngSaveDlg.FileName,'.png','-'+INtToStr(Size)+'.png',[]));
      if bFileExists then
        mRes := Application.MessageBox('There is already a file with the same name in the target location.  Do you want to overwrite the file?',
          'Confirm Overwrite', MB_YESNOCANCEL + MB_ICONWARNING + MB_DEFBUTTON2);
    end;
  until mRes in [mrCancel,mrYes];
  if mRes = mrYes then
  begin
    for size in Sizes do
    begin
      LBitmap := TBitmap.Create;
      LBitmap.SetSize(Size, Size);
      LBitmap.SkiaDraw(
        procedure (const ACanvas: ISKCanvas)
        var
          LSvgBrush: TSkSvgBrush;
        begin
          LSvgBrush := TSkSvgBrush.Create;
          try
            LSvgBrush.Source := fList.Source[ControlList1.itemindex];
            LSvgBrush.Render(ACanvas, RectF(0, 0, LBitmap.Width, LBitmap.Height), 1);
          finally
            LSvgBrush.Free;
          end;
        end);
      pngImg := TWICImage.Create;
      try
        LBitmap.AlphaFormat := afDefined;
        pngImg.Assign(LBitmap);
        pngImg.ImageFormat := wifPng;
        if Length(Sizes) > 1 then
          pngImg.SaveToFile(StringReplace(pngSaveDlg.FileName,'.png','-'+INtToStr(Size)+'.png',[]))
        else
          pngImg.SaveToFile(pngSaveDlg.FileName);
      finally
        pngImg.Free;
      end;
    end;
  end;
end;

procedure TForm4.mniSaveSVGFileClick(Sender: TObject);
var
  mres : TModalREsult;
begin
  svgSaveDlg.title := 'Save '+fList.name[ControlList1.itemindex]+' as SVG file';
  svgSavedlg.filename := STringReplace(fList.name[ControlList1.itemindex],#32,'_',[rfReplaceAll])+'.svg';
  repeat
    mRes := mrYes;
    if svgSaveDlg.execute then
    begin
      if TFile.exists(svgSaveDlg.filename) then
        mRes := Application.MessageBox('There is already a file with the same name in the target location.  Do you want to overwrite the file?',
          'Confirm Overwrite', MB_YESNOCANCEL + MB_ICONWARNING + MB_DEFBUTTON2);
      if mRes = mrYes then
        TFile.WriteAllText(svgSaveDlg.filename,fList.Source[Controllist1.itemindex]);
    end;
  until mRes in [mrCancel,mrYes];
end;

procedure TForm4.pmIconPopup(Sender: TObject);
begin
  mniCopyIconName.enabled := ControlList1.ItemIndex <> -1;
  mniCopySvgClipboard.enabled := ControlList1.itemindex <> -1;
  mniSaveSVGFile.enabled := ControlList1.itemindex <> -1;
  mniSavePNGToFile.enabled := ControlList1.itemindex <> -1;
end;

procedure TForm4.pmLibraryPopup(Sender: TObject);
var
  ix : integer;
  mitem : TMenuItem;
begin
  pmLibrary.Items.Clear;
  if pmLibrary.items.count = 0 then
    begin
      for ix := 0 to fIconLibrary.CollectionCount-1 do
        begin
          mItem := TMenuItem.Create(pmLibrary);
          mItem.Caption := fIconLibrary.CollectioName(ix);
          if fCollectionIdx = ix then
            mItem.Default := true;
          mItem.tag := ix;
          mItem.ImageIndex := 6;
          mItem.OnClick := SelectCollection;
          pmLibrary.items.Add(mItem);
        end;
    end;
end;

procedure TForm4.SaveFormPosition;
begin
  fSettings.SetOptionInt('mainform.width',width);
  fSettings.SetoptionInt('mainform.height',height);
  fSettings.SetOptionInt('mainform.left',left);
  fSettings.SetOptionInt('mainform.top',top);
end;

procedure TForm4.SearchBox1InvokeSearch(Sender: TObject);
var
  SearchList : ISVGSearchList;
begin
  if not Supports(fList,ISVGSearchList,SearchList) then
    Raise ENotImplemented.create('Search is not supported for the current list');
  SearchList.SearchText := SearchBox1.Text;
  SearchBox1.SelectAll;
  ControlList1.ItemCount := fList.count;
  lblAvailableIconCount.caption := IntToStr(fList.Count);
  ControlList1.Invalidate;
end;

procedure TForm4.pmSelectFillColorClick(Sender: TObject);
begin
  dlgColor.color := fFillColor;
  dlgColor.Tag := 1;
  if dlgColor.Execute then
    begin
      SetFillColor(dlgColor.Color);
      fSettings.SetOptionColor('fillcolor',fFillColor);
    end;
end;

procedure TForm4.pmSelectFillNoneClick(Sender: TObject);
begin
  SetFillColor(clNone);
  fSettings.SetOptionColor('fillcolor',fFillColor);
end;

procedure TForm4.SelectCollection(Sender: TObject);
var
  FolderList : ISVGUserFolderList;
  bShowImageCollection : boolean;
  bTwoToneEnabled, bFilledEnabled : boolean;
begin
  if Sender is TMenuItem then
    fCollectionIdx := TMenuItem(Sender).tag;
  fCollection := fIconLibrary.Collection(fCollectionIdx);
  bShowImageCollection := false;
  if Supports(fCollection,ISVGUserFolderList,FolderList) then
    begin
      FolderList.Directory := fUserDir;
      bShowImageCollection := true;
    end;
  fRightToolbar.CopyCodeEnabled := bShowImageCollection;
  Caption := C_CAPTION +' : '+fCollection.Name;
  bTwoToneEnabled := ltTwoTone in fCollection.Available;
  bFilledEnabled := ltFilled in fCollection.Available;
  if (not bFilledEnabled) and (fStyle = ltFilled) then
    fStyle := ltOutline;
  if (not bTwoToneEnabled) and (fstyle = ltTwoTone) then
    fStyle := ltOutline;
  case fStyle of
    ltOutline : SelectRegular;
    ltFilled : SelectFilled;
    ltTwoTone : selectTwoTone;
  end;
  lstIconTypes.Invalidate;
end;

procedure TForm4.SelectFilled;
begin
  fStyle := ltFilled;
  lstIconTypes.itemIndex := 1;
  fRightToolbar.ToneColorEnabled := false;
  SetList(fCollection.list[ltFilled]);
  fList.FillColor := fFillColor;
  UpdateList;
end;

procedure TForm4.SelectRegular;
begin
  fStyle := ltOutline;
  lstIconTypes.itemIndex := 0;
  fRightToolbar.ToneColorEnabled := false;
  SetList(fCollection.list[ltOutline]);
  fList.FillColor := fFillColor;
  UpdateList;
end;

procedure TForm4.SelectTwoTone;
var
  IconTone : ISVGTwoToneIconList;
begin
  fStyle := ltTwoTone;
  lstIconTypes.itemIndex := 2;
  fRightToolbar.ToneColorEnabled := True;
  SetList(fCollection.list[ltTwoTone]);
  if Supports(fList,ISVGTwoToneIconList,IconTone) then
    IconTone.ToneColor := fToneColor;
  fList.FillColor := fFillColor;
  UpdateList;
end;

procedure TForm4.SetBackColor(Value: TColor);
begin
  ControlList1.Color := Value;
  fRightToolbar.BackColor := value;
end;

procedure TForm4.SetFillColor(Value: TColor);
begin
  fFillColor := Value;
  fList.FillColor := fFillColor;
  fRightToolbar.FillColor := value;
  ControlList1.Invalidate;
end;

procedure TForm4.SetList(Value: ISVGIconList);
var
  SearchList : ISVGSearchList;
begin
  if assigned(fList) and Supports(fList,ISVGSearchList,SearchList) then
    SearchList.BaseList := Value
  else
    fList := Value;
end;

procedure TForm4.SetToneColor(Value: TColor);
var
  iconTone : ISVGTwoToneIconList;
begin
  fToneColor := Value;
  fRightToolbar.ToneColor := value;
  fSettings.SetOptionColor('tonecolor',fToneColor);
  if Supports(fList,ISVGTwoToneIconList,IconTone) then
    IconTone.ToneColor := fToneColor;
  ControlList1.invalidate;
end;

procedure TForm4.ClickBackColor(Sender: TObject);
begin
  dlgColor.color := ControlList1.Color;
  dlgColor.Tag := 0;
  if dlgColor.Execute then
    begin
      SetBackColor(dlgColor.Color);
      fSettings.SetOptionColor('backcolor',ControlList1.Color);
    end;
end;

procedure TForm4.svgFilledClick(Sender: TObject);
begin
  SelectFilled;
end;

procedure TForm4.svgRegularClick(Sender: TObject);
begin
  SelectRegular;
end;

procedure TForm4.svgTwoToneClick(Sender: TObject);
begin
  SelectTwoTone;
end;

procedure TForm4.UpdateColorSvg(aSvg: TSkSvg; aColor: TColor);
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

procedure TForm4.Updatelist;
begin
  lblAvailableIconCount.caption := IntToSTr(fList.Count);
  ControlList1.Itemindex := -1;
  ControlList1.ItemCount := fList.Count;
  ControlList1.Invalidate;
end;

end.
