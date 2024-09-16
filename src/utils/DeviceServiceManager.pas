unit DeviceServiceManager;

interface

uses
  Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, Androidapi.JNI.Os,
  Androidapi.Helpers, FMX.Helpers.Android, FMX.Dialogs,
  Androidapi.JNI.GraphicsContentViewText, System.SysUtils,
  sk210.bridge.topwise.cloudpos;

type
  // ServiceConnection para gerenciar a conexão com o serviço
  TMyServiceConnection = class(TJavaLocal, JServiceConnection)
  private
    FOnServiceConnected: TProc<JComponentName, JIBinder>;
    FOnServiceDisconnected: TProc;
  public
    constructor Create(AOnServiceConnected: TProc<JComponentName, JIBinder>;
      AOnServiceDisconnected: TProc);
    procedure onServiceConnected(name: JComponentName; service: JIBinder); cdecl;
    procedure onServiceDisconnected(name: JComponentName); cdecl;
    procedure onBindingDied(name: JComponentName); cdecl;
    procedure onNullBinding(name: JComponentName); cdecl;
  end;

  // Gerenciador do serviço de dispositivo (DeviceServiceManager)
  TDeviceServiceManager = class
  private
    FContext: JContext;
    FDeviceService: JAidlDeviceService;
    FIsBind: Boolean;
  public
    class function GetInstance: TDeviceServiceManager;
    function BindDeviceService(AContext: JContext; AOnServiceConnected: TProc): Boolean;
    procedure UnbindDeviceService;
    function GetDeviceService: JAidlDeviceService;
    function IsBind: Boolean;
    function GetPrintManager: JAidlPrinter; // Novo método para obter o PrintManager
  end;

implementation

uses
  Androidapi.Log;

{ TMyServiceConnection }

constructor TMyServiceConnection.Create(AOnServiceConnected: TProc<JComponentName, JIBinder>;
  AOnServiceDisconnected: TProc);
begin
  inherited Create;
  FOnServiceConnected := AOnServiceConnected;
  FOnServiceDisconnected := AOnServiceDisconnected;
end;

procedure TMyServiceConnection.onBindingDied(name: JComponentName);
begin
  // Se necessário, adicione um código para lidar com a morte da ligação
  __android_log_write(ANDROID_LOG_INFO, 'TMyServiceConnection', 'Binding died');
end;

procedure TMyServiceConnection.onNullBinding(name: JComponentName);
begin
  // Implementação do onNullBinding, caso a ligação ao serviço seja nula
  __android_log_write(ANDROID_LOG_INFO, 'TMyServiceConnection', 'Null binding occurred');
end;

procedure TMyServiceConnection.onServiceConnected(name: JComponentName; service: JIBinder);
begin
  if Assigned(FOnServiceConnected) then
    FOnServiceConnected(name, service);
end;

procedure TMyServiceConnection.onServiceDisconnected(name: JComponentName);
begin
  if Assigned(FOnServiceDisconnected) then
    FOnServiceDisconnected;
end;

{ TDeviceServiceManager }

class function TDeviceServiceManager.GetInstance: TDeviceServiceManager;
begin
  Result := TDeviceServiceManager.Create;
end;

// Novo método para obter o PrintManager
function TDeviceServiceManager.GetPrintManager: JAidlPrinter;
begin
  Result := nil;
  if Assigned(FDeviceService) then
  begin
    try
      // Tenta obter o PrintManager a partir do DeviceService
      Result := TJAidlPrinter_Stub.JavaClass.asInterface(FDeviceService.getPrinter);
    except
      on E: Exception do
        ShowMessage('Erro ao obter o PrintManager: ' + E.Message);
    end;
  end
  else
    ShowMessage('O serviço de dispositivo não está disponível.');
end;


function TDeviceServiceManager.BindDeviceService(AContext: JContext; AOnServiceConnected: TProc): Boolean;
var
  Intent: JIntent;
begin
  Result := False;

  FContext := AContext;
  Intent := TJIntent.JavaClass.init;
  Intent.setAction(StringToJString('topwise_cloudpos_device_service'));
  Intent.setClassName(StringToJString('com.android.topwise.topusdkservice'),
    StringToJString('com.android.topwise.topusdkservice.service.DeviceService'));

  Result := TAndroidHelper.Context.bindService(Intent, TMyServiceConnection.Create(
    procedure(name: JComponentName; service: JIBinder)
    begin
      FDeviceService := TJAidlDeviceService_Stub.JavaClass.asInterface(service);

      if Assigned(FDeviceService) then
      begin
        FIsBind := True;

        // Chama o callback após a vinculação bem-sucedida
        if Assigned(AOnServiceConnected) then
          AOnServiceConnected;
      end
      else
        __android_log_write(ANDROID_LOG_INFO, 'TMyServiceConnection', 'FDeviceService não instanciado');
    end,
    procedure
    begin
      __android_log_write(ANDROID_LOG_INFO, 'TMyServiceConnection', 'Falha ao vincular o serviço.');
      FDeviceService := nil;
      FIsBind := False;
    end
  ), TJContext.JavaClass.BIND_AUTO_CREATE);
end;

procedure TDeviceServiceManager.UnbindDeviceService;
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

function TDeviceServiceManager.IsBind: Boolean;
begin
  Result := FIsBind;
end;

end.

