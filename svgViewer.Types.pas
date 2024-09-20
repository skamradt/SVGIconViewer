unit svgViewer.Types;

interface

uses
  System.Classes,
  Graphics;

type
  TSVGIconListType = (ltOutline,ltFilled,ltTwoTone);
  TSVGIconListTypes = set of TSVGIConListType;

  TRightMainToolbarButtons = (btnFillColor,btnToneColor,btnBackColor,btnCopyCode,btnSettings);


  ISVGViewerRightToolbar = interface
    ['{D47B15B6-F079-4333-B0CB-D8FDFBC75378}']
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
    property FillColor : TColor read GetFillColor write SetFillColor;
    property ToneColor : TColor read GetToneColor write SetToneColor;
    property ToneColorEnabled : Boolean read GetToneColorEnabled write SetToneColorEnabled;
    property BackColor : TColor read GetBackColor write SetBackColor;
    property CopyCodeEnabled : boolean read GetCopyCodeEnabled write SetCopyCodeEnabled;
    property ButtonEvents[aButton:TRightMainToolbarButtons]:TNotifyEvent read GetButtonEvent write SetButtonEvent;
  end;


  ISVGIconList = interface
    ['{D08C9599-A11E-43D8-A480-2FCC3EC4C9A7}']
    function GetCount : integer;
    function GetName(Index:Integer):string;
    function GetSource(Index:Integer):string;
    function GetFillColor : TColor;
    procedure SetFillColor(Value:TColor);
    property Count : integer read GetCount;
    property Name[index:integer] : string read GetName;
    property Source[index:integer] : string read GetSource;
    property FillColor : TColor read GetFillColor write SetFillColor;
  end;

  ISVGTwoToneIconList = interface
    ['{C354CACF-3560-4648-B23A-7EE90A1F5B23}']
    function GetToneColor : TColor;
    procedure SetToneColor(Value:TColor);
    property ToneColor : TColor read GetToneColor write SetToneColor;
  end;

  ISVGSearchList = interface
    ['{1337BDA0-813A-42E9-AAF2-91D3E21CE5D0}']
    function GetSearchText : string;
    procedure SetSearchText(const Value:String);
    function GetBaseList : ISVGIconList;
    procedure SetBaseList(value : ISVGIconLIst);
    property BaseList : ISVGIconList read GetBaseList write SetBaseList;
    property SearchText : string read GetSearchText write SetSearchText;
  end;

  ISVGUserFolderList = interface
    ['{69B3C6BF-21F1-452C-ABE1-ACE395E0A88A}']
    procedure SetDirectory(value:String);
    function GetDirectory:string;
    property Directory : string read GetDirectory write SetDirectory;
  end;

  ISVGLibraryCollection = interface
    ['{EF2D4AFF-137E-4382-8B28-BE5702A4BD7E}']
    Function GetLibraryName : string;
    Function GetTypesAvailable : TSVGIconListTypes;
    Function GetList(ListType:TSVGIconListType) : ISVGIconList;
    property Name : string read GetLibraryName;
    property Available : TSVGIconListTypes read GetTypesAvailable;
    property List[index:TSVGIconListType] : ISVGIconList read GetList;
  end;

  ISVGLibrary = interface
    ['{F13D1D35-1084-4693-B581-19599E9A39D4}']
    procedure RegisterIconCollection(value:ISVGLibraryCollection);
    function CollectionCount : integer;
    function CollectioName(Value:Integer):String;
    function Collection(value:Integer):ISVGLibraryCollection;
  end;

  ISVGIconConfig = interface
    ['{496BEE72-4D85-4B8A-82AE-40E892D425D9}']
    function GetOptionStr(Name:String):String;
    function GetOptionInt(Name:STring):Integer;
    function GetOptionColor(Name:STring):TColor;
    function GetOptionBool(Name:String):Boolean;
    procedure SetOptionStr(Name,value:String);
    procedure SetOptionInt(Name:String;value:Integer);
    procedure SetOptionColor(Name:STring;value:TColor);
    procedure SetOptionBool(Name:String;value:Boolean);
    function GetOptionStrDefault(Name,Default:String):String;
    function GetOptionIntDefault(Name:STring;Default:Integer):Integer;
    function GetOptionColorDefault(Name:STring;Default:TColor):TColor;
    function GetOptionBooleanDefault(Name:STring;Default:Boolean):Boolean;
    property OptionStr[Name:String]:String read GetOptionStr write SetOptionStr;
    property OptionInt[Name:String]:Integer read GetOptionInt write SetOptionInt;
    property OptionColor[Name:String]:TColor read GetOptionColor write SetOptionColor;
    property OptionBoolean[Name:String]:Boolean read GetOptionBool write SetOptionBool;
  end;

implementation

end.
