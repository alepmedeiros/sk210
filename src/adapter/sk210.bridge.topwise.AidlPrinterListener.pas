unit sk210.bridge.topwise.AidlPrinterListener;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JAidlPrinterListener = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinterListener

// ===== Interface declarations =====

  JAidlPrinterListenerClass = interface(JIInterfaceClass)
    ['{C77368E5-2A59-45EF-96AD-1FC75B81674C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinterListener')]
  JAidlPrinterListener = interface(JIInterface)
    ['{630219B0-BCE1-4B68-9928-B50876456338}']
    procedure onError(i: Integer); cdecl;
    procedure onPrintFinish; cdecl;
  end;
  TJAidlPrinterListener = class(TJavaGenericImport<JAidlPrinterListenerClass, JAidlPrinterListener>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlPrinterListener.JAidlPrinterListener', TypeInfo(sk210.bridge.topwise.AidlPrinterListener.JAidlPrinterListener));
end;

initialization
  RegisterTypes;
end.

