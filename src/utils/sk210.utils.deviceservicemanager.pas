unit sk210.utils.deviceservicemanager;

interface

uses
  System.SysUtils,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  sk210.bridge.topwise.cloudpos,
  Androidapi.JNI.GraphicsContentViewText;

type
  TDeviceServiceManager = class
  private
    FContext: JContext;
    FDeviceService: JAidlDeviceService;

    function GetDeviceService: JAidlDeviceService;
  public
    constructor Create;
    destructor Destroy; override;

    function GetPrintManager: JAidlPrinter;
  end;

implementation

uses
  Androidapi.Helpers, Androidapi.JNI.Os;

{ TDeviceServiceManager }

constructor TDeviceServiceManager.Create;
begin
  inherited Create;
  FDeviceService := GetDeviceService;
end;

destructor TDeviceServiceManager.Destroy;
begin

  inherited;
end;

function TDeviceServiceManager.GetDeviceService: JAidlDeviceService;
var
  Service: JObject;
begin
  // Obtendo o serviço usando métodos do SDK
  Service := TAndroidHelper.Context.getSystemService(StringToJString('topwise_cloudpos_device_service'));
  if Service = nil then
    raise Exception.Create('Serviço de dispositivo não encontrado.');

  Result := TJAidlDeviceService_Stub.JavaClass.asInterface(TJIBinder.Wrap((Service as ILocalObject).GetObjectID));
end;

function TDeviceServiceManager.GetPrintManager: JAidlPrinter;
begin
  if FDeviceService <> nil then
    Result := TJAidlPrinter_Stub.JavaClass.asInterface(FDeviceService.getPrinter)
  else
    raise Exception.Create('Serviço de impressão não disponível.');
end;

end.
