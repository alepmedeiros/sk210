
unit sk210.bridge.topwise.AidlPrinter;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JAidlPrinter = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinter
  JAidlPrinterListener = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinterListener
  JPrintCuttingMode = interface;//com.topwise.cloudpos.aidl.printer.PrintCuttingMode
  JPrinterMessage = interface;//com.topwise.cloudpos.aidl.printer.PrinterMessage
  JAidlPrinter_Stub = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinter$Stub

// ===== Interface declarations =====

  JAidlPrinter_StubClass = interface(JBinderClass)
    ['{D032BF0A-E62B-47B3-B1E4-19B3D4D4008D}']
    {class} function _GetTRANSACTION_addBarcode: Integer; cdecl;
    {class} function _GetTRANSACTION_addHuifuImage: Integer; cdecl;
    {class} function _GetTRANSACTION_addImage: Integer; cdecl;
    {class} function _GetTRANSACTION_addImageFile: Integer; cdecl;
    {class} function _GetTRANSACTION_addLineFeed: Integer; cdecl;
    {class} function _GetTRANSACTION_addQRCode: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiBarCode: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiImage: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiQRCode: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiText: Integer; cdecl;
    {class} function _GetTRANSACTION_addText: Integer; cdecl;
    {class} function _GetTRANSACTION_close: Integer; cdecl;
    {class} function _GetTRANSACTION_cuttingPaper: Integer; cdecl;
    {class} function _GetTRANSACTION_getClearPrinterMileage: Integer; cdecl;
    {class} function _GetTRANSACTION_getPosPrintPaperState: Integer; cdecl;
    {class} function _GetTRANSACTION_getPrinterGray: Integer; cdecl;
    {class} function _GetTRANSACTION_getPrinterMessage: Integer; cdecl;
    {class} function _GetTRANSACTION_goPaper: Integer; cdecl;
    {class} function _GetTRANSACTION_isPosPrinterCoverOpen: Integer; cdecl;
    {class} function _GetTRANSACTION_open: Integer; cdecl;
    {class} function _GetTRANSACTION_printBarCode: Integer; cdecl;
    {class} function _GetTRANSACTION_printBmp: Integer; cdecl;
    {class} function _GetTRANSACTION_printBuf: Integer; cdecl;
    {class} function _GetTRANSACTION_printEnhancedText: Integer; cdecl;
    {class} function _GetTRANSACTION_printQrCode: Integer; cdecl;
    {class} function _GetTRANSACTION_printRollback: Integer; cdecl;
    {class} function _GetTRANSACTION_printRuiQueue: Integer; cdecl;
    {class} function _GetTRANSACTION_printText: Integer; cdecl;
    {class} function _GetTRANSACTION_resetQueue: Integer; cdecl;
    {class} function _GetTRANSACTION_setPrintLedState: Integer; cdecl;
    {class} function _GetTRANSACTION_setPrinterGray: Integer; cdecl;
    {class} function _GetTRANSACTION_start: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPrinter; cdecl;
    {class} function init: JAidlPrinter_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addBarcode: Integer read _GetTRANSACTION_addBarcode;
    {class} property TRANSACTION_addHuifuImage: Integer read _GetTRANSACTION_addHuifuImage;
    {class} property TRANSACTION_addImage: Integer read _GetTRANSACTION_addImage;
    {class} property TRANSACTION_addImageFile: Integer read _GetTRANSACTION_addImageFile;
    {class} property TRANSACTION_addLineFeed: Integer read _GetTRANSACTION_addLineFeed;
    {class} property TRANSACTION_addQRCode: Integer read _GetTRANSACTION_addQRCode;
    {class} property TRANSACTION_addRuiBarCode: Integer read _GetTRANSACTION_addRuiBarCode;
    {class} property TRANSACTION_addRuiImage: Integer read _GetTRANSACTION_addRuiImage;
    {class} property TRANSACTION_addRuiQRCode: Integer read _GetTRANSACTION_addRuiQRCode;
    {class} property TRANSACTION_addRuiText: Integer read _GetTRANSACTION_addRuiText;
    {class} property TRANSACTION_addText: Integer read _GetTRANSACTION_addText;
    {class} property TRANSACTION_close: Integer read _GetTRANSACTION_close;
    {class} property TRANSACTION_cuttingPaper: Integer read _GetTRANSACTION_cuttingPaper;
    {class} property TRANSACTION_getClearPrinterMileage: Integer read _GetTRANSACTION_getClearPrinterMileage;
    {class} property TRANSACTION_getPosPrintPaperState: Integer read _GetTRANSACTION_getPosPrintPaperState;
    {class} property TRANSACTION_getPrinterGray: Integer read _GetTRANSACTION_getPrinterGray;
    {class} property TRANSACTION_getPrinterMessage: Integer read _GetTRANSACTION_getPrinterMessage;
    {class} property TRANSACTION_goPaper: Integer read _GetTRANSACTION_goPaper;
    {class} property TRANSACTION_isPosPrinterCoverOpen: Integer read _GetTRANSACTION_isPosPrinterCoverOpen;
    {class} property TRANSACTION_open: Integer read _GetTRANSACTION_open;
    {class} property TRANSACTION_printBarCode: Integer read _GetTRANSACTION_printBarCode;
    {class} property TRANSACTION_printBmp: Integer read _GetTRANSACTION_printBmp;
    {class} property TRANSACTION_printBuf: Integer read _GetTRANSACTION_printBuf;
    {class} property TRANSACTION_printEnhancedText: Integer read _GetTRANSACTION_printEnhancedText;
    {class} property TRANSACTION_printQrCode: Integer read _GetTRANSACTION_printQrCode;
    {class} property TRANSACTION_printRollback: Integer read _GetTRANSACTION_printRollback;
    {class} property TRANSACTION_printRuiQueue: Integer read _GetTRANSACTION_printRuiQueue;
    {class} property TRANSACTION_printText: Integer read _GetTRANSACTION_printText;
    {class} property TRANSACTION_resetQueue: Integer read _GetTRANSACTION_resetQueue;
    {class} property TRANSACTION_setPrintLedState: Integer read _GetTRANSACTION_setPrintLedState;
    {class} property TRANSACTION_setPrinterGray: Integer read _GetTRANSACTION_setPrinterGray;
    {class} property TRANSACTION_start: Integer read _GetTRANSACTION_start;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinter$Stub')]
  JAidlPrinter_Stub = interface(JBinder)
    ['{3AC15445-090F-4865-B0E6-3F1343267350}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPrinter_Stub = class(TJavaGenericImport<JAidlPrinter_StubClass, JAidlPrinter_Stub>) end;

  JAidlPrinterClass = interface(JIInterfaceClass)
    ['{CEF32601-F5BA-4759-93AA-EC4E69DA388E}']
    {class} function getPrinterState: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinter')]
  JAidlPrinter = interface(JIInterface)
    ['{D25C0A36-C92D-488F-9548-2D0669B19F3D}']
    procedure addBarcode(i: Integer; i1: Integer; string_: JString; i2: Integer; i3: Integer); cdecl;
    function addHuifuImage(bitmap: JBitmap; i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    procedure addImage(i: Integer; bitmap: JBitmap); cdecl;
    procedure addImageFile(i: Integer; string_: JString); cdecl;
    procedure addLineFeed(i: Integer); cdecl;
    procedure addQRCode(i: Integer; i1: Integer; string_: JString); cdecl;
    function addRuiBarCode(string_: JString; i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    function addRuiImage(bitmap: JBitmap; i: Integer): Boolean; cdecl;
    function addRuiQRCode(string_: JString; i: Integer; i1: Integer): Boolean; cdecl;
    function addRuiText(list: JList): Boolean; cdecl;
    procedure addText(i: Integer; i1: Integer; i2: Integer; string_: JString); cdecl;
    procedure close; cdecl;
    function cuttingPaper(printCuttingMode: JPrintCuttingMode): Integer; cdecl;
    function getClearPrinterMileage(i: Integer): Int64; cdecl;
    function getPosPrintPaperState: Integer; cdecl;
    function getPrinterGray: Integer; cdecl;
    function getPrinterMessage: JPrinterMessage; cdecl;
    procedure goPaper(i: Integer); cdecl;
    function isPosPrinterCoverOpen: Boolean; cdecl;
    function open: Integer; cdecl;
    procedure printBarCode(i: Integer; i1: Integer; i2: Integer; i3: Integer; string_: JString; aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printBmp(i: Integer; i1: Integer; i2: Integer; bitmap: JBitmap; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function printBuf(b: TJavaArray<Byte>): Integer; cdecl;
    procedure printEnhancedText(list: JList; aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printQrCode(i: Integer; i1: Integer; i2: Integer; string_: JString; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function printRollback(i: Integer): Integer; cdecl;
    procedure printRuiQueue(aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printText(list: JList; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function resetQueue: Boolean; cdecl;
    function setPrintLedState(b: Boolean; i: Integer): Integer; cdecl;
    procedure setPrinterGray(i: Integer); cdecl;
    procedure start(aidlPrinterListener: JAidlPrinterListener); cdecl;
  end;
  TJAidlPrinter = class(TJavaGenericImport<JAidlPrinterClass, JAidlPrinter>) end;

  JAidlPrinterListenerClass = interface(JIInterfaceClass)
    ['{62D30C1A-4AF7-4E0E-92C7-96035B461A8C}']
    {class} procedure onError(i: Integer); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinterListener')]
  JAidlPrinterListener = interface(JIInterface)
    ['{3A7B1AB2-83D9-47A3-A0CB-9F5FC0BE500A}']
    procedure onPrintFinish; cdecl;
  end;
  TJAidlPrinterListener = class(TJavaGenericImport<JAidlPrinterListenerClass, JAidlPrinterListener>) end;

  JPrintCuttingModeClass = interface(JEnumClass)
    ['{67432ED8-A3B1-4165-8AF8-F75200702FBE}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetCUTTING_MODE_FULL: JPrintCuttingMode; cdecl;
    {class} function _GetCUTTING_MODE_HALT: JPrintCuttingMode; cdecl;
    {class} function valueOf(string_: JString): JPrintCuttingMode; cdecl;
    {class} function values: TJavaObjectArray<JPrintCuttingMode>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property CUTTING_MODE_FULL: JPrintCuttingMode read _GetCUTTING_MODE_FULL;
    {class} property CUTTING_MODE_HALT: JPrintCuttingMode read _GetCUTTING_MODE_HALT;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintCuttingMode')]
  JPrintCuttingMode = interface(JEnum)
    ['{BD385AAE-2512-4925-BCC1-43F3359C88F2}']
    function _Getmode: Integer; cdecl;
    procedure _Setmode(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property mode: Integer read _Getmode write _Setmode;
  end;
  TJPrintCuttingMode = class(TJavaGenericImport<JPrintCuttingModeClass, JPrintCuttingMode>) end;

  JPrinterMessageClass = interface(JParcelableClass)
    ['{ED154B06-FD85-49CE-AF95-5BEE4C77E8AA}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JPrinterMessage; cdecl; overload;//Deprecated
    {class} function init(parcel: JParcel): JPrinterMessage; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrinterMessage')]
  JPrinterMessage = interface(JParcelable)
    ['{69357BCF-B129-4B20-B343-9CAAD923AFED}']
    function _GetprinterCount: Integer; cdecl;
    procedure _SetprinterCount(Value: Integer); cdecl;
    function _GetprinterGray: Integer; cdecl;
    function _GetprinterMileage: Int64; cdecl;
    procedure _SetprinterMileage(Value: Int64); cdecl;
    function _GetprinterTemperature: Integer; cdecl;
    procedure _SetprinterTemperature(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getPrinterCount: Integer; cdecl;
    function getPrinterGray: Integer; cdecl;
    function getPrinterMileage: Int64; cdecl;
    function getPrinterTemperature: Integer; cdecl;
    function getPrinterVoltage: Integer; cdecl;
    procedure setPrinterCount(i: Integer); cdecl;
    procedure setPrinterGray(i: Integer); cdecl;
    procedure setPrinterMileage(l: Int64); cdecl;
    procedure setPrinterTemperature(i: Integer); cdecl;
    procedure setPrinterVoltage(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property printerCount: Integer read _GetprinterCount write _SetprinterCount;
    property printerGray: Integer read _GetprinterGray;
    property printerMileage: Int64 read _GetprinterMileage write _SetprinterMileage;
    property printerTemperature: Integer read _GetprinterTemperature write _SetprinterTemperature;
  end;
  TJPrinterMessage = class(TJavaGenericImport<JPrinterMessageClass, JPrinterMessage>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlPrinter.pas.JAidlPrinter', TypeInfo(sk210.bridge.topwise.AidlPrinter.JAidlPrinter));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlPrinter.pas.JAidlPrinterListener', TypeInfo(sk210.bridge.topwise.AidlPrinter.JAidlPrinterListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlPrinter.pas.JPrintCuttingMode', TypeInfo(sk210.bridge.topwise.AidlPrinter.JPrintCuttingMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlPrinter.pas.JPrinterMessage', TypeInfo(sk210.bridge.topwise.AidlPrinter.JPrinterMessage));
end;

initialization
  RegisterTypes;
end.

