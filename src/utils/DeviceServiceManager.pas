unit DeviceServiceManager;

interface

uses
  Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, Androidapi.JNI.Os,
  Androidapi.Helpers, System.SysUtils, Androidapi.Log,
  Androidapi.JNI.GraphicsContentViewText, sk210.bridge.topwise.AidlDeviceService,
  sk210.bridge.topwise.AidlPrinter, sk210.bridge.topwise.AidlSystem,
  sk210.bridge.topwise.AidlCameraScanCode, FMX.Dialogs;

type
  TMyServiceConnection = class(TJavaLocal, JServiceConnection)
  private
    FOnServiceConnected: TProc<JComponentName, JIBinder>;
    FOnServiceDisconnected: TProc;
  public
    constructor Create(AOnServiceConnected: TProc<JComponentName, JIBinder>; AOnServiceDisconnected: TProc);
    procedure onServiceConnected(name: JComponentName; service: JIBinder); cdecl;
    procedure onServiceDisconnected(name: JComponentName); cdecl;
    procedure onBindingDied(name: JComponentName); cdecl;
    procedure onNullBinding(name: JComponentName); cdecl;
  end;

  TDeviceServiceManager = class
  private
    class var FInstance: TDeviceServiceManager;
    FDeviceService: JAidlDeviceService;
    FIsBind: Boolean;
    FContext: JContext;

    constructor Create; // Construtor privado para reforçar o singleton

    const
      ACTION_DEVICE_SERVICE = 'topwise_cloudpos_device_service';
      DEVICE_SERVICE_CLASS_NAME = 'com.android.topwise.topusdkservice.service.DeviceService';
      DEVICE_SERVICE_PACKAGE_NAME = 'com.android.topwise.topusdkservice';
  public
    class function GetInstance: TDeviceServiceManager;
    class procedure FreeInstance;
    function IsBind: Boolean;
    function BindDeviceService(AContext: JContext; AOnServiceConnected: TProc): Boolean;
    procedure UnBindDeviceService;
    function GetDeviceService: JAidlDeviceService;
    function GetPrintManager: JAidlPrinter;
    function GetSystemManager: JAidlSystem;
    function GetCameraManager: JAidlCameraScanCode;
  end;

implementation

{ TMyServiceConnection }

constructor TMyServiceConnection.Create(AOnServiceConnected: TProc<JComponentName, JIBinder>; AOnServiceDisconnected: TProc);
begin
  inherited Create;
  FOnServiceConnected := AOnServiceConnected;
  FOnServiceDisconnected := AOnServiceDisconnected;
end;

procedure TMyServiceConnection.onServiceConnected(name: JComponentName; service: JIBinder); cdecl;
begin
  if Assigned(FOnServiceConnected) then
    FOnServiceConnected(name, service);
end;

procedure TMyServiceConnection.onServiceDisconnected(name: JComponentName); cdecl;
begin
  if Assigned(FOnServiceDisconnected) then
    FOnServiceDisconnected;
end;

procedure TMyServiceConnection.onBindingDied(name: JComponentName); cdecl;
begin
  __android_log_write(ANDROID_LOG_INFO, 'TMyServiceConnection', 'Binding died');
end;

procedure TMyServiceConnection.onNullBinding(name: JComponentName); cdecl;
begin
  __android_log_write(ANDROID_LOG_INFO, 'TMyServiceConnection', 'Null binding occurred');
end;

{ TDeviceServiceManager }

constructor TDeviceServiceManager.Create;
begin
  inherited Create;
end;

class function TDeviceServiceManager.GetInstance: TDeviceServiceManager;
begin
  if not Assigned(FInstance) then
    FInstance := TDeviceServiceManager.Create;
  Result := FInstance;
end;

class procedure TDeviceServiceManager.FreeInstance;
begin
  FreeAndNil(FInstance);
end;

function TDeviceServiceManager.BindDeviceService(AContext: JContext; AOnServiceConnected: TProc): Boolean;
var
  Intent: JIntent;
begin
  Result := False;

  FContext := AContext;
  Intent := TJIntent.JavaClass.init;
  Intent.setAction(StringToJString(ACTION_DEVICE_SERVICE));
  Intent.setClassName(StringToJString(DEVICE_SERVICE_PACKAGE_NAME),
    StringToJString(DEVICE_SERVICE_CLASS_NAME));

  ShowMessage('Tentando vincular ao serviço de impressão...');

  Result := TAndroidHelper.Context.bindService(Intent, TMyServiceConnection.Create(
    procedure(name: JComponentName; service: JIBinder)
    begin
      FDeviceService := TJAidlDeviceService_Stub.JavaClass.asInterface(service);

      if Assigned(FDeviceService) then
      begin
        ShowMessage('Serviço vinculado com sucesso.');
        FIsBind := True;

        if Assigned(AOnServiceConnected) then
          AOnServiceConnected;
      end
      else
        ShowMessage('FDeviceService não foi inicializado.');
    end,
    procedure
    begin
      ShowMessage('Falha ao vincular o serviço.');
      FDeviceService := nil;
      FIsBind := False;
    end
  ), TJContext.JavaClass.BIND_AUTO_CREATE);
end;

procedure TDeviceServiceManager.UnBindDeviceService;
begin
  if FIsBind then
  begin
    FContext.unbindService(TMyServiceConnection.Create(nil, nil));
    FIsBind := False;
  end;
end;

function TDeviceServiceManager.GetDeviceService: JAidlDeviceService;
begin
  Result := FDeviceService;
end;

function TDeviceServiceManager.GetPrintManager: JAidlPrinter;
begin
  if Assigned(FDeviceService) then
  begin
    Result := TJAidlPrinter_Stub.JavaClass.asInterface(FDeviceService.getPrinter);
    if not Assigned(Result) then
      ShowMessage('Não foi possível inicializar o serviço de impressão.');
  end
  else
    Result := nil;
end;

function TDeviceServiceManager.GetSystemManager: JAidlSystem;
begin
  if Assigned(FDeviceService) then
    Result := TJAidlSystem_Stub.JavaClass.asInterface(FDeviceService.getKeyManager);
end;

function TDeviceServiceManager.GetCameraManager: JAidlCameraScanCode;
begin
  if Assigned(FDeviceService) then
    Result := TJAidlCameraScanCode_Stub.JavaClass.asInterface(FDeviceService.getCameraManager);
end;

function TDeviceServiceManager.IsBind: Boolean;
begin
  Result := FIsBind;
end;

initialization
  TDeviceServiceManager.FInstance := nil;

finalization
  TDeviceServiceManager.FreeInstance;

end.

