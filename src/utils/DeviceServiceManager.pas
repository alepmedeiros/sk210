unit DeviceServiceManager;

interface

uses
  System.SysUtils, Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, sk210.bridge.topwise.cloudpos;

type
  TDeviceServiceManager = class
  private
    FDeviceService: JAidlDeviceService;
    function GetDeviceService: JAidlDeviceService;
    function GetPrintManager: JAidlPrinter;
  public
    constructor Create;
    destructor Destroy; override;
    procedure ImprimirTexto(const ATexto: string);
  end;

implementation

uses
  Androidapi.Helpers;

{ TDeviceServiceManager }

constructor TDeviceServiceManager.Create;
begin
  inherited Create;
  FDeviceService := GetDeviceService;
end;

destructor TDeviceServiceManager.Destroy;
begin
  // Lógica de limpeza, se necessário
  inherited Destroy;
end;

function TDeviceServiceManager.GetDeviceService: JAidlDeviceService;
var
  Service: JObject;
begin
  // Obtendo o serviço usando métodos do SDK
  Service := TAndroidHelper.Context.getSystemService(StringToJString('com.android.topwise.topusdkservice.service.DeviceService'));
  if Service = nil then
    raise Exception.Create('Serviço de dispositivo não encontrado.');

  Result := TJDeviceService.Stub.asInterface(TJBinder.Wrap((Service as ILocalObject).GetObjectID));
end;

function TDeviceServiceManager.GetPrintManager: JAidlPrinter;
begin
  if FDeviceService <> nil then
    Result := FDeviceService.getPrinter
  else
    raise Exception.Create('Serviço de impressão não disponível.');
end;

procedure TDeviceServiceManager.ImprimirTexto(const ATexto: string);
var
  Printer: JAidlPrinter;
begin
  Printer := GetPrintManager;
  if Printer <> nil then
  begin
    Printer.printText(StringToJString(ATexto));
  end
  else
    raise Exception.Create('Gerenciador de impressão não encontrado.');
end;

end.

