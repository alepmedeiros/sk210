unit AidlPrinterListenerStub;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  Androidapi.Helpers;

type
  // Interface para o AidlPrinterListener
  JAidlPrinterListener = interface(IJavaInstance)
    ['{A842FD3D-447F-4A9E-94F3-55E95CC1C01C}']
    procedure onError(errorCode: Integer); cdecl;
    procedure onPrintFinish; cdecl;
  end;

  // Stub da interface AidlPrinterListener, para ser usada como ponte entre Delphi e Java
  JAidlPrinterListener_Stub = interface(JBinder)
    ['{9DF5D978-F9C4-4324-A925-E45AB8FF2B5B}']
    function asBinder: JIBinder; cdecl;
  end;

  // Implementação da classe Proxy da interface AidlPrinterListener
  TJAidlPrinterListener_Proxy = class(TJavaLocal, JAidlPrinterListener)
  private
    FRemote: JIBinder;
  public
    constructor Create(Remote: JIBinder); overload;
    function asBinder: JIBinder; cdecl;
    procedure onError(errorCode: Integer); cdecl;
    procedure onPrintFinish; cdecl;
    class function asInterface(binder: JIBinder): JAidlPrinterListener; cdecl; static;
  end;

implementation

uses
  System.SysUtils, Androidapi.Log;

{ TJAidlPrinterListener_Proxy }

constructor TJAidlPrinterListener_Proxy.Create(Remote: JIBinder);
begin
  inherited Create;
  FRemote := Remote;
end;

function TJAidlPrinterListener_Proxy.asBinder: JIBinder;
begin
  Result := FRemote;
end;

procedure TJAidlPrinterListener_Proxy.onError(errorCode: Integer);
var
  _data, _reply: JParcel;
begin
  _data := TJParcel.JavaClass.obtain;
  _reply := TJParcel.JavaClass.obtain;
  try
    _data.writeInterfaceToken(StringToJString('com.topwise.cloudpos.aidl.printer.AidlPrinterListener'));
    _data.writeInt(errorCode);
    FRemote.transact(1, _data, _reply, 0);
    _reply.readException;
  finally
    _data.recycle;
    _reply.recycle;
  end;
end;

procedure TJAidlPrinterListener_Proxy.onPrintFinish;
var
  _data, _reply: JParcel;
begin
  _data := TJParcel.JavaClass.obtain;
  _reply := TJParcel.JavaClass.obtain;
  try
    _data.writeInterfaceToken(StringToJString('com.topwise.cloudpos.aidl.printer.AidlPrinterListener'));
    FRemote.transact(2, _data, _reply, 0);
    _reply.readException;
  finally
    _data.recycle;
    _reply.recycle;
  end;
end;

class function TJAidlPrinterListener_Proxy.asInterface(binder: JIBinder): JAidlPrinterListener;
var
  iin: IInterface;
begin
  if binder = nil then
    Exit(nil);

  iin := binder.queryLocalInterface(StringToJString('com.topwise.cloudpos.aidl.printer.AidlPrinterListener'));
  if (iin <> nil) and (Supports(iin, JAidlPrinterListener)) then
    Result := JAidlPrinterListener(iin)
  else
    Result := TJAidlPrinterListener_Proxy.Create(binder);
end;

end.

