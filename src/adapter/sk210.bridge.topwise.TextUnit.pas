unit sk210.bridge.topwise.TextUnit;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes;

type
// ===== Forward declarations =====

  JAlign = interface;//com.topwise.cloudpos.aidl.printer.Align
  JTextUnit = interface;//com.topwise.cloudpos.aidl.printer.TextUnit

// ===== Interface declarations =====

  JAlignClass = interface(JEnumClass)
    ['{BC9CA574-9C31-46ED-8BD8-8B58378FE719}']
    {class} function _GetCENTER: JAlign; cdecl;
    {class} function _GetLEFT: JAlign; cdecl;
    {class} function _GetRIGHT: JAlign; cdecl;
    {class} function valueOf(string_: JString): JAlign; cdecl;
    {class} function values: TJavaObjectArray<JAlign>; cdecl;//Deprecated
    {class} property CENTER: JAlign read _GetCENTER;
    {class} property LEFT: JAlign read _GetLEFT;
    {class} property RIGHT: JAlign read _GetRIGHT;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/Align')]
  JAlign = interface(JEnum)
    ['{7C85F1F1-950A-4765-A7D4-F37134C96B0F}']
    function getValue: Integer; cdecl;
  end;
  TJAlign = class(TJavaGenericImport<JAlignClass, JAlign>) end;

  JTextUnitClass = interface(JObjectClass)
    ['{1C9B26E0-03F8-4B44-8DCA-2D5266F1B7AE}']
    {class} function init(string_: JString): JTextUnit; cdecl; overload;
    {class} function init(string_: JString; i: Integer): JTextUnit; cdecl; overload;
    {class} function init(string_: JString; align: JAlign): JTextUnit; cdecl; overload;
    {class} function init(string_: JString; i: Integer; align: JAlign): JTextUnit; cdecl; overload;
    {class} procedure setAlign(align: JAlign); cdecl;
    {class} procedure setFontSize(i: Integer); cdecl;
    {class} function setLineSpacing(i: Integer): JTextUnit; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/TextUnit')]
  JTextUnit = interface(JObject)
    ['{6CC1D219-B1FD-4F74-9128-3840F83DDDEF}']
    procedure copyValue(textUnit: JTextUnit); cdecl;
    function getAlign: JAlign; cdecl;
    function getFontSize: Integer; cdecl;
    function getFontType: JTypeface; cdecl;
    function getLetterSpacing: Integer; cdecl;
    function getLineSpacing: Integer; cdecl;
    function getScaleX: Single; cdecl;
    function getScaleY: Single; cdecl;
    function getText: JString; cdecl;
    function isBold: Boolean; cdecl;
    function isReverse: Boolean; cdecl;
    function isUnderline: Boolean; cdecl;
    function isWordWrap: Boolean; cdecl;
    function setBold(b: Boolean): JTextUnit; cdecl;
    function setFontType(typeface: JTypeface): JTextUnit; cdecl;
    function setLetterSpacing(i: Integer): JTextUnit; cdecl;
    function setReverse(b: Boolean): JTextUnit; cdecl;
    function setScaleX(f: Single): JTextUnit; cdecl;
    function setScaleY(f: Single): JTextUnit; cdecl;
    procedure setText(string_: JString); cdecl;
    function setUnderline(b: Boolean): JTextUnit; cdecl;
    function setWordWrap(b: Boolean): JTextUnit; cdecl;
  end;
  TJTextUnit = class(TJavaGenericImport<JTextUnitClass, JTextUnit>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('sk210.bridge.topwise.TextUnit.JAlign', TypeInfo(sk210.bridge.topwise.TextUnit.JAlign));
  TRegTypes.RegisterType('sk210.bridge.topwise.TextUnit.JTextUnit', TypeInfo(sk210.bridge.topwise.TextUnit.JTextUnit));
end;

initialization
  RegisterTypes;
end.

