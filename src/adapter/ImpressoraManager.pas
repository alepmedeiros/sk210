unit ImpressoraManager;

interface

uses
  sk210.bridge.topwise.AidlPrinter, // Tipos Java
  Androidapi.JNIBridge, // JNI para comunicação com o Android
  Androidapi.Helpers, // Ajuda na conversão entre tipos
  Androidapi.JNI.GraphicsContentViewText, // Manipulação de gráficos
  sk210.utils.enums;

type
  TPrinterHelper = class
  private
    FPrinter: JAidlPrinter;
    procedure InitializePrinter;
  public
    constructor Create;
    procedure ImprimirTexto(const Texto: string; Alinhamento: TAlinhamento);
  end;

implementation

uses
  DeviceServiceManager,
  sk210.bridge.topwise.TextUnit,
  System.SysUtils,
  Androidapi.JNI.JavaTypes,
  FMX.Dialogs,
  Androidapi.JNI.Os, AidlPrinterListenerProxy;

{ TPrinterHelper }

constructor TPrinterHelper.Create;
begin
  inherited;
  InitializePrinter;
end;

procedure TPrinterHelper.InitializePrinter;
begin
  // Obtém a instância do serviço de impressão (aqui presumimos que o DeviceServiceManager está inicializado)
  FPrinter := TDeviceServiceManager.GetInstance.GetPrintManager;
end;

function AidlPrinterListenerAsInterface(Remote: JIBinder): JAidlPrinterListener;
var
  Local: IInterface;
begin
  if Remote = nil then
    Exit(nil);

  // Verifica se o IBinder tem uma interface local
  Local := Remote.queryLocalInterface(StringToJString('com.topwise.cloudpos.aidl.printer.AidlPrinterListener'));

  // Usa Supports para verificar se Local implementa JAidlPrinterListener
  if Supports(Local, JAidlPrinterListener, Result) then
    Exit(Result)  // Se Local suporta JAidlPrinterListener, retorna Result
  else
    Result := TAidlPrinterListenerProxy.Create(Remote) as JAidlPrinterListener;  // Cria uma proxy para o IBinder remoto
end;



procedure TPrinterHelper.ImprimirTexto(const Texto: string;
  Alinhamento: TAlinhamento);
var
  TextList: JArrayList;
  JListText: JList;
  JTexto: JString;
  PrintCuttingMode: JPrintCuttingMode;
begin
  // Verifique se o serviço de impressão está conectado
  if FPrinter = nil then
  begin
    ShowMessage('Serviço de impressão não está conectado.');
    Exit;
  end;

  // Converter o texto para JString
  JTexto := StringToJString(Texto);

  // Criar a JArrayList para o texto a ser impresso
  TextList := TJArrayList.Create;
  TextList.add(JTexto);

  // Fazer o cast explícito para JList
  JListText := TJList.Wrap((TextList as ILocalObject).GetObjectID);

  // Enviar o comando de impressão diretamente (sem listener)
  FPrinter.printText(JListText, nil);  // Segundo parâmetro é nil, sem listener

  // Enviar o comando de corte de papel após a impressão
  PrintCuttingMode := TJPrintCuttingMode.JavaClass.CUTTING_MODE_FULL;  // Corte completo
  FPrinter.cuttingPaper(PrintCuttingMode);  // Envia o comando de corte de papel

  ShowMessage('Impressão enviada e corte de papel realizado.');
end;

end.
