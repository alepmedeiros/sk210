
unit sk210.bridge.topwise.AidlCameraScanCode;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JAidlCameraScanCode = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCode
  JAidlCameraScanCodeListener = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCodeListener
  JAidlDecodeCallBack = interface;//com.topwise.cloudpos.aidl.camera.AidlDecodeCallBack
  JDecodeMode = interface;//com.topwise.cloudpos.aidl.camera.DecodeMode
  JDecodeParameter = interface;//com.topwise.cloudpos.aidl.camera.DecodeParameter

// ===== Interface declarations =====

  JAidlCameraScanCodeClass = interface(JIInterfaceClass)
    ['{79DABF0F-691C-4800-84D3-00BA2F48CA89}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCode')]
  JAidlCameraScanCode = interface(JIInterface)
    ['{C8C0E16F-B65E-458D-8E1F-D2EB67281BD2}']
    function getDecodeLibVersion: JString; cdecl;
    procedure scanCode(bundle: JBundle; aidlCameraScanCodeListener: JAidlCameraScanCodeListener); cdecl;
    function startDecode(decodeParameter: JDecodeParameter; aidlDecodeCallBack: JAidlDecodeCallBack): Integer; cdecl;
    function stopDecode: Integer; cdecl;
    procedure stopScan; cdecl;
  end;
  TJAidlCameraScanCode = class(TJavaGenericImport<JAidlCameraScanCodeClass, JAidlCameraScanCode>) end;

  JAidlCameraScanCodeListenerClass = interface(JIInterfaceClass)
    ['{7F79DC20-D914-48AC-B1BF-2879B3749CCA}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCodeListener')]
  JAidlCameraScanCodeListener = interface(JIInterface)
    ['{8F0B2C74-1F35-437F-A890-FE67666EB0A6}']
    procedure onCancel; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onResult(string_: JString); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJAidlCameraScanCodeListener = class(TJavaGenericImport<JAidlCameraScanCodeListenerClass, JAidlCameraScanCodeListener>) end;

  JAidlDecodeCallBackClass = interface(JIInterfaceClass)
    ['{C631E6D5-645B-4FE1-85A9-1C5B7675B1C7}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlDecodeCallBack')]
  JAidlDecodeCallBack = interface(JIInterface)
    ['{3277BF40-664D-4679-9533-E5CF9FD75409}']
    procedure onError(i: Integer); cdecl;
    procedure onResult(string_: JString); cdecl;
  end;
  TJAidlDecodeCallBack = class(TJavaGenericImport<JAidlDecodeCallBackClass, JAidlDecodeCallBack>) end;

  JDecodeModeClass = interface(JEnumClass)
    ['{054192C3-8C7E-40ED-B7B3-709E5CDFF866}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetMODE_CONTINUE_SCAN_CODE: JDecodeMode; cdecl;
    {class} function _GetMODE_DEFAULT: JDecodeMode; cdecl;
    {class} function _GetMODE_SINGLE_SCAN_CODE: JDecodeMode; cdecl;
    {class} function valueOf(string_: JString): JDecodeMode; cdecl;
    {class} function values: TJavaObjectArray<JDecodeMode>; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property MODE_CONTINUE_SCAN_CODE: JDecodeMode read _GetMODE_CONTINUE_SCAN_CODE;
    {class} property MODE_DEFAULT: JDecodeMode read _GetMODE_DEFAULT;
    {class} property MODE_SINGLE_SCAN_CODE: JDecodeMode read _GetMODE_SINGLE_SCAN_CODE;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/DecodeMode')]
  JDecodeMode = interface(JEnum)
    ['{07DD58A9-8ECF-4E2E-B93A-1E0CCC6CE841}']
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJDecodeMode = class(TJavaGenericImport<JDecodeModeClass, JDecodeMode>) end;

  JDecodeParameterClass = interface(JParcelableClass)
    ['{F81CEE14-24CE-4A54-B84D-20E1464879D4}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JDecodeParameter; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/DecodeParameter')]
  JDecodeParameter = interface(JParcelable)
    ['{EB7B215B-05D0-4E56-8BC8-6D4154FFDECF}']
    function describeContents: Integer; cdecl;
    function getAutoDetect: Integer; cdecl;
    function getDecodeIntervalTime: Integer; cdecl;
    function getDecodeMode: Integer; cdecl;
    function getDecodeSingleTimeout: Integer; cdecl;
    function getFlashLightTimeout: Integer; cdecl;
    function getNoSupportCodeTypeList: JList; cdecl;
    function getSupportCodeTypeList: JList; cdecl;
    function setAutoDetect(i: Integer): JDecodeParameter; cdecl;
    function setDecodeIntervalTime(i: Integer): JDecodeParameter; cdecl;
    function setDecodeMode(decodeMode: JDecodeMode): JDecodeParameter; cdecl;
    function setDecodeSingleTimeout(i: Integer): JDecodeParameter; cdecl;
    function setFlashLightTimeout(i: Integer): JDecodeParameter; cdecl;
    function setNoSupportCodeTypeList(list: JList): JDecodeParameter; cdecl;
    function setSupportCodeTypeList(list: JList): JDecodeParameter; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJDecodeParameter = class(TJavaGenericImport<JDecodeParameterClass, JDecodeParameter>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlCameraScanCode.JAidlCameraScanCode', TypeInfo(sk210.bridge.topwise.AidlCameraScanCode.JAidlCameraScanCode));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlCameraScanCode.JAidlCameraScanCodeListener', TypeInfo(sk210.bridge.topwise.AidlCameraScanCode.JAidlCameraScanCodeListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlCameraScanCode.JAidlDecodeCallBack', TypeInfo(sk210.bridge.topwise.AidlCameraScanCode.JAidlDecodeCallBack));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlCameraScanCode.JDecodeMode', TypeInfo(sk210.bridge.topwise.AidlCameraScanCode.JDecodeMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlCameraScanCode.JDecodeParameter', TypeInfo(sk210.bridge.topwise.AidlCameraScanCode.JDecodeParameter));
end;

initialization
  RegisterTypes;
end.

