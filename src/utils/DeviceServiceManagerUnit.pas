unit DeviceServiceManagerUnit;

interface

uses
  Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, Androidapi.JNI.Os,
  Androidapi.Helpers, FMX.Helpers.Android, System.SysUtils, Androidapi.Log,
  Androidapi.JNI.GraphicsContentViewText, BridgeDeviceServiceManager;

type
  // ServiceConnection para gerenciar a conexão com o serviço
  TMyServiceConnection = class(TJavaLocal, JServiceConnection)
  private
    FDeviceService: JAidlDeviceService;
    FIsBind: Boolean;
    FOnServiceConnected: TProc;
    FOnServiceDisconnected: TProc;
  public
    constructor Create(AOnServiceConnected, AOnServiceDisconnected: TProc);
    procedure onServiceConnected(name: JComponentName; service: JIBinder); cdecl;
    procedure onServiceDisconnected(name: JComponentName); cdecl;
    property DeviceService: JAidlDeviceService read FDeviceService;
    property IsBind: Boolean read FIsBind;
  end;

  // Gerenciador do serviço de dispositivo
  TDeviceServiceManager = class
  private
    FContext: JContext;
    FServiceConnection: TMyServiceConnection;
    class var FInstance: TDeviceServiceManager;
  public
    class function GetInstance: TDeviceServiceManager;
    function BindDeviceService(AContext: JContext; AOnServiceConnected, AOnServiceDisconnected: TProc): Boolean;
    procedure UnbindDeviceService;
    function GetPrintManager: JAidlPrinter;
    function GetSystemManager: JAidlSystem;
    function GetCameraManager: JAidlCameraScanCode;
    function IsBind: Boolean;
  end;

implementation

{ TMyServiceConnection }

constructor TMyServiceConnection.Create(AOnServiceConnected, AOnServiceDisconnected: TProc);
begin
  inherited Create;
  FOnServiceConnected := AOnServiceConnected;
  FOnServiceDisconnected := AOnServiceDisconnected;
end;

procedure TMyServiceConnection.onServiceConnected(name: JComponentName; service: JIBinder);
begin
  // Converter o IBinder para AidlDeviceService
  FDeviceService := TJAidlDeviceService_Stub.asInterface(service);
  FIsBind := True;

  if Assigned(FOnServiceConnected) then
    FOnServiceConnected();
end;

procedure TMyServiceConnection.onServiceDisconnected(name: JComponentName);
begin
  FDeviceService := nil;
  FIsBind := False;

  if Assigned(FOnServiceDisconnected) then
    FOnServiceDisconnected();
end;

{ TDeviceServiceManager }

class function TDeviceServiceManager.GetInstance: TDeviceServiceManager;
begin
  if FInstance = nil then
    FInstance := TDeviceServiceManager.Create;
  Result := FInstance;
end;

function TDeviceServiceManager.BindDeviceService(AContext: JContext; AOnServiceConnected, AOnServiceDisconnected: TProc): Boolean;
var
  Intent: JIntent;
begin
  Result := False;

  FContext := AContext;
  Intent := TJIntent.JavaClass.init;
  Intent.setAction(StringToJString('topwise_cloudpos_device_service'));
  Intent.setClassName(StringToJString('com.android.topwise.topusdkservice'),
    StringToJString('com.android.topwise.topusdkservice.service.DeviceService'));

  // Criar a conexão de serviço
  FServiceConnection := TMyServiceConnection.Create(AOnServiceConnected, AOnServiceDisconnected);

  // Vincular ao serviço
  Result := TAndroidHelper.Context.bindService(Intent, FServiceConnection, TJContext.JavaClass.BIND_AUTO_CREATE);
end;

procedure TDeviceServiceManager.UnbindDeviceService;
begin
  if FServiceConnection.IsBind then
  begin
    FContext.unbindService(FServiceConnection);
  end;
end;

function TDeviceServiceManager.GetPrintManager: JAidlPrinter;
begin
  if Assigned(FServiceConnection) and Assigned(FServiceConnection.DeviceService) then
    Result := TJAidlPrinter_Stub.asInterface(FServiceConnection.DeviceService.getPrinter)
  else
    Result := nil;
end;

function TDeviceServiceManager.GetSystemManager: JAidlSystem;
begin
  if Assigned(FServiceConnection) and Assigned(FServiceConnection.DeviceService) then
    Result := TJAidlSystem_Stub.asInterface(FServiceConnection.DeviceService.getSystemService)
  else
    Result := nil;
end;

function TDeviceServiceManager.GetCameraManager: JAidlCameraScanCode;
begin
  if Assigned(FServiceConnection) and Assigned(FServiceConnection.DeviceService) then
    Result := TJAidlCameraScanCode_Stub.asInterface(FServiceConnection.DeviceService.getCameraManager)
  else
    Result := nil;
end;

function TDeviceServiceManager.IsBind: Boolean;
begin
  Result := FServiceConnection.IsBind;
end;

end.

