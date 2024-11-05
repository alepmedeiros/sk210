
unit sk210.bridge.topwise.AidlDeviceService;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JAidlDeviceService = interface;//com.topwise.cloudpos.aidl.AidlDeviceService
  JAidlDeviceService_Stub = interface;//com.topwise.cloudpos.aidl.AidlDeviceService$Stub

// ===== Interface declarations =====

  JAidlDeviceServiceClass = interface(JIInterfaceClass)
    ['{BEA8AD1D-6436-4BB8-9AD4-12B95EE3DD2B}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/AidlDeviceService')]
  JAidlDeviceService = interface(JIInterface)
    ['{15607D9A-ECDB-4C0E-931E-08C9B2A4C30E}']
    function expandFunction(bundle: JBundle): JBundle; cdecl;
    function getBuzzer: JIBinder; cdecl;
    function getCPUCard: JIBinder; cdecl;
    function getCameraManager: JIBinder; cdecl;
    function getCheckCard: JIBinder; cdecl;
    function getDecoder: JIBinder; cdecl;
    function getFingerprint: JIBinder; cdecl;
    function getInsertCardReader: JIBinder; cdecl;
    function getKLD: JIBinder; cdecl;
    function getKeyManager: JIBinder; cdecl;
    function getL2Amex: JIBinder; cdecl;
    function getL2Dpas: JIBinder; cdecl;
    function getL2Emv: JIBinder; cdecl;
    function getL2Entry: JIBinder; cdecl;
    function getL2JCB: JIBinder; cdecl;
    function getL2Mir: JIBinder; cdecl;
    function getL2Paypass: JIBinder; cdecl;
    function getL2Paywave: JIBinder; cdecl;
    function getL2Pure: JIBinder; cdecl;
    function getL2Qpboc: JIBinder; cdecl;
    function getL2Rupay: JIBinder; cdecl;
    function getLed: JIBinder; cdecl;
    function getMagCardReader: JIBinder; cdecl;
    function getPM: JIBinder; cdecl;
    function getPSAMReader(i: Integer): JIBinder; cdecl;
    function getPedestal: JIBinder; cdecl;
    function getPinPad(i: Integer): JIBinder; cdecl;
    function getPosTriggerStatus: JIBinder; cdecl;
    function getPrinter: JIBinder; cdecl;
    function getRFIDReader: JIBinder; cdecl;
    function getScanner: JIBinder; cdecl;
    function getSerialPort(i: Integer): JIBinder; cdecl;
    function getShellMonitor: JIBinder; cdecl;
    function getSystemService: JIBinder; cdecl;
    function getTM: JIBinder; cdecl;
  end;
  TJAidlDeviceService = class(TJavaGenericImport<JAidlDeviceServiceClass, JAidlDeviceService>) end;

  JAidlDeviceService_StubClass = interface(JBinderClass)
    ['{D2888703-25AF-41C7-A95C-35310EDED211}']
    {class} function _GetTRANSACTION_expandFunction: Integer; cdecl;
    {class} function _GetTRANSACTION_getBuzzer: Integer; cdecl;
    {class} function _GetTRANSACTION_getCPUCard: Integer; cdecl;
    {class} function _GetTRANSACTION_getCameraManager: Integer; cdecl;
    {class} function _GetTRANSACTION_getCheckCard: Integer; cdecl;
    {class} function _GetTRANSACTION_getDecoder: Integer; cdecl;
    {class} function _GetTRANSACTION_getFingerprint: Integer; cdecl;
    {class} function _GetTRANSACTION_getInsertCardReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getKLD: Integer; cdecl;
    {class} function _GetTRANSACTION_getKeyManager: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Amex: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Dpas: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Emv: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Entry: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2JCB: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Mir: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Paypass: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Paywave: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Pure: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Qpboc: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Rupay: Integer; cdecl;
    {class} function _GetTRANSACTION_getLed: Integer; cdecl;
    {class} function _GetTRANSACTION_getMagCardReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getPM: Integer; cdecl;
    {class} function _GetTRANSACTION_getPSAMReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getPedestal: Integer; cdecl;
    {class} function _GetTRANSACTION_getPinPad: Integer; cdecl;
    {class} function _GetTRANSACTION_getPosTriggerStatus: Integer; cdecl;
    {class} function _GetTRANSACTION_getPrinter: Integer; cdecl;
    {class} function _GetTRANSACTION_getRFIDReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getScanner: Integer; cdecl;
    {class} function _GetTRANSACTION_getSerialPort: Integer; cdecl;
    {class} function _GetTRANSACTION_getShellMonitor: Integer; cdecl;
    {class} function _GetTRANSACTION_getTM: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlDeviceService; cdecl;
    {class} function init: JAidlDeviceService_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_expandFunction: Integer read _GetTRANSACTION_expandFunction;
    {class} property TRANSACTION_getBuzzer: Integer read _GetTRANSACTION_getBuzzer;
    {class} property TRANSACTION_getCPUCard: Integer read _GetTRANSACTION_getCPUCard;
    {class} property TRANSACTION_getCameraManager: Integer read _GetTRANSACTION_getCameraManager;
    {class} property TRANSACTION_getCheckCard: Integer read _GetTRANSACTION_getCheckCard;
    {class} property TRANSACTION_getDecoder: Integer read _GetTRANSACTION_getDecoder;
    {class} property TRANSACTION_getFingerprint: Integer read _GetTRANSACTION_getFingerprint;
    {class} property TRANSACTION_getInsertCardReader: Integer read _GetTRANSACTION_getInsertCardReader;
    {class} property TRANSACTION_getKLD: Integer read _GetTRANSACTION_getKLD;
    {class} property TRANSACTION_getKeyManager: Integer read _GetTRANSACTION_getKeyManager;
    {class} property TRANSACTION_getL2Amex: Integer read _GetTRANSACTION_getL2Amex;
    {class} property TRANSACTION_getL2Dpas: Integer read _GetTRANSACTION_getL2Dpas;
    {class} property TRANSACTION_getL2Emv: Integer read _GetTRANSACTION_getL2Emv;
    {class} property TRANSACTION_getL2Entry: Integer read _GetTRANSACTION_getL2Entry;
    {class} property TRANSACTION_getL2JCB: Integer read _GetTRANSACTION_getL2JCB;
    {class} property TRANSACTION_getL2Mir: Integer read _GetTRANSACTION_getL2Mir;
    {class} property TRANSACTION_getL2Paypass: Integer read _GetTRANSACTION_getL2Paypass;
    {class} property TRANSACTION_getL2Paywave: Integer read _GetTRANSACTION_getL2Paywave;
    {class} property TRANSACTION_getL2Pure: Integer read _GetTRANSACTION_getL2Pure;
    {class} property TRANSACTION_getL2Qpboc: Integer read _GetTRANSACTION_getL2Qpboc;
    {class} property TRANSACTION_getL2Rupay: Integer read _GetTRANSACTION_getL2Rupay;
    {class} property TRANSACTION_getLed: Integer read _GetTRANSACTION_getLed;
    {class} property TRANSACTION_getMagCardReader: Integer read _GetTRANSACTION_getMagCardReader;
    {class} property TRANSACTION_getPM: Integer read _GetTRANSACTION_getPM;
    {class} property TRANSACTION_getPSAMReader: Integer read _GetTRANSACTION_getPSAMReader;
    {class} property TRANSACTION_getPedestal: Integer read _GetTRANSACTION_getPedestal;
    {class} property TRANSACTION_getPinPad: Integer read _GetTRANSACTION_getPinPad;
    {class} property TRANSACTION_getPosTriggerStatus: Integer read _GetTRANSACTION_getPosTriggerStatus;
    {class} property TRANSACTION_getPrinter: Integer read _GetTRANSACTION_getPrinter;
    {class} property TRANSACTION_getRFIDReader: Integer read _GetTRANSACTION_getRFIDReader;
    {class} property TRANSACTION_getScanner: Integer read _GetTRANSACTION_getScanner;
    {class} property TRANSACTION_getSerialPort: Integer read _GetTRANSACTION_getSerialPort;
    {class} property TRANSACTION_getShellMonitor: Integer read _GetTRANSACTION_getShellMonitor;
    {class} property TRANSACTION_getTM: Integer read _GetTRANSACTION_getTM;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/AidlDeviceService$Stub')]
  JAidlDeviceService_Stub = interface(JBinder)
    ['{A5428558-551D-4BA4-9FBD-EDE48E9BEC37}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlDeviceService_Stub = class(TJavaGenericImport<JAidlDeviceService_StubClass, JAidlDeviceService_Stub>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlDeviceService.JAidlDeviceService', TypeInfo(sk210.bridge.topwise.AidlDeviceService.JAidlDeviceService));
end;

initialization
  RegisterTypes;
end.

