unit svgViewer.GenerateImageCollection;

interface

uses
  System.Types,
  System.SysUtils,
  System.Classes,
  svgViewer.Types,
  Vcl.ImageCollection;

type
  TGenerateImageCollection = class(TInterfacedObject)
  private
    fBaseSize : integer;
    fList : ISVGIconList;
    fSizes : TArray<Integer>;
    fCollection : TImageCollection;
    procedure RenderImages;
    procedure RenderToImageData(aItem:TImageCollectionItem;aindex,aSize:Integer);
    function ComponentToString(aComponent:TComponent) : STring;
  public
    constructor Create(aSourceList:ISVGIconList;BaseSize:Integer);
  end;

implementation

uses
  System.Skia,
  System.StrUtils,
  VCL.Graphics,
  VCL.Skia,
  VCL.Clipbrd;

const
  CRLF = ^M+^J;

{ TGenerateImageCollection }

function TGenerateImageCollection.ComponentToString(
  aComponent: TComponent): STring;
var
  Mem : TMemoryStream;
  Stm : TStringSTream;
begin
  mem := tMemoryStream.create;
  stm := tSTringSTream.create;
  try
    mem.WriteComponent(fCollection);
    mem.Seek(0,soFromBeginning);
    ObjectBinaryToText(mem, Stm);
    Result := stm.DataString;
  finally
    stm.free;
    mem.free;
  end;
end;

constructor TGenerateImageCollection.Create(aSourceList: ISVGIconList;
  BaseSize: Integer);
begin
  inherited Create;
  fList := aSourceList;
  fBaseSize := BaseSize;
  fCollection := TImageCollection.create(nil);
  fCollection.name := 'ImageCollection1';
  SetLength(fSizes,5);
  fSizes[0] := BaseSize;
  fSIzes[1] := Trunc(fSizes[0] * 1.25);
  fSizes[2] := Trunc(fSizes[0] * 1.5);
  fSizes[3] := Trunc(fSizes[0] * 1.75);
  fSizes[4] := Trunc(fSizes[0] * 2);
  RenderImages;
  Clipboard.AsText := ComponentToString(fCollection);
end;

procedure TGenerateImageCollection.RenderImages;
var
  ix : integer;
  size : integer;
  Item : TImageCollectionItem;
begin
  for ix := 0 to fList.Count-1 do
    begin
      Item := fCollection.Images.add;
      Item.Name := fList.Name[ix];
      for size in fSizes do
        RenderToImageData(Item,ix,size);
    end;
end;

procedure TGenerateImageCollection.RenderToImageData(aItem:TImageCollectionItem;aindex,
  aSize: Integer);
var
  LBitmap : TBitmap;
  pngImg : TWICImage;
  Image : TImageCollectionSourceItem;
begin
  LBitmap := TBitmap.Create;
  try
    LBitmap.SetSize(aSize, aSize);
    LBitmap.SkiaDraw(
      procedure (const ACanvas: ISKCanvas)
      var
        LSvgBrush: TSkSvgBrush;
      begin
        LSvgBrush := TSkSvgBrush.Create;
        try
          LSvgBrush.Source := fList.Source[aIndex];
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

      Image := aITem.SourceImages.add;
      Image.Image.assign(pngImg);
    finally
      pngImg.Free;
    end;
  finally
    lBitmap.Free;
  end;
end;

end.
