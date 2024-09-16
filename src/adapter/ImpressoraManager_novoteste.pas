unit ImpressoraManager_novoteste;

interface

uses
  Androidapi.JNIBridge, Androidapi.JNI.JavaTypes, Androidapi.Helpers,
  Androidapi.JNI.GraphicsContentViewText, Androidapi.JNI.App,
  FMX.Helpers.Android, FMX.Dialogs, DeviceServiceManager,
  sk210.bridge.topwise.cloudpos, System.SysUtils, Androidapi.JNI.Os;

type
  // Listener para capturar os eventos de impressão (erro e sucesso)
  TPrinterListener = class(TJavaLocal, JAidlPrinterListener)
  private
    FOnError: TProc<Integer>;
    FOnPrintFinish: TProc;
  public
    constructor Create(AOnError: TProc<Integer>; AOnPrintFinish: TProc);
    procedure onError(i: Integer); cdecl;
    procedure onPrintFinish; cdecl;
    function asBinder: JIBinder; cdecl; // Implementação do método exigido
    function getInterfaceDescriptor: JString; cdecl; // Implementação do método getInterfaceDescriptor
  end;

  // Gerenciador de impressora
  TImpressoraManager = class
  private
    FContext: JContext;
    FDeviceServiceManager: TDeviceServiceManager;
    FPrinterService: JAidlPrinter;
    procedure VerificarServicoDeImpressao;
  public
    constructor Create(AContext: JContext; ADeviceServiceManager: TDeviceServiceManager);
    procedure ImprimirTexto(const ATexto: string);
    procedure ImprimirTextoSimples;
  end;

implementation

uses
  Androidapi.Log;

{ TPrinterListener }

function TPrinterListener.asBinder: JIBinder;
begin
Result := nil;
end;

constructor TPrinterListener.Create(AOnError: TProc<Integer>; AOnPrintFinish: TProc);
begin
  inherited Create;
  FOnError := AOnError;
  FOnPrintFinish := AOnPrintFinish;
  ShowMessage('Listener de impressão criado com sucesso.');
end;

function TPrinterListener.getInterfaceDescriptor: JString;
begin
 Result := StringToJString('com/topwise/cloudpos/aidl/printer/AidlPrinterListener')
end;

procedure TPrinterListener.onError(i: Integer);
begin
  if Assigned(FOnError) then
  begin
    ShowMessage('Erro na impressão.');
    FOnError(i);
  end;
end;

procedure TPrinterListener.onPrintFinish;
begin
  if Assigned(FOnPrintFinish) then
  begin
    ShowMessage('Impressão concluída.');
    FOnPrintFinish;
  end;
end;

{ TImpressoraManager }

constructor TImpressoraManager.Create(AContext: JContext; ADeviceServiceManager: TDeviceServiceManager);
begin
  inherited Create;
  FContext := AContext;
  FDeviceServiceManager := ADeviceServiceManager;
end;

procedure TImpressoraManager.VerificarServicoDeImpressao;
var
  DeviceService: JAidlDeviceService;
begin
  // Verifica se o serviço foi vinculado corretamente
  if not FDeviceServiceManager.IsBind then
  begin
    ShowMessage('Serviço de impressão não está vinculado.');
    Exit;
  end;

  // Obtém o DeviceService
  DeviceService := FDeviceServiceManager.GetDeviceService;

  if not Assigned(DeviceService) then
  begin
    ShowMessage('Serviço de impressão não está disponível.');
    Exit;
  end;

  // Tenta obter o PrinterService a partir do DeviceService
  FPrinterService := TJAidlPrinter_Stub.JavaClass.asInterface(DeviceService.getPrinter);

  if not Assigned(FPrinterService) then
  begin
    ShowMessage('Falha ao inicializar o serviço de impressão.');
    Exit;
  end;

  ShowMessage('Serviço de impressão inicializado com sucesso.');
end;

procedure TImpressoraManager.ImprimirTexto(const ATexto: string);
var
  Template: JPrintTemplate;
begin
  // Vincula o serviço e, quando vinculado, realiza a impressão
  FDeviceServiceManager.BindDeviceService(FContext,
    procedure
    begin
      // Serviço de impressão foi vinculado com sucesso, agora podemos obter o FPrinterService
      VerificarServicoDeImpressao;

      if not Assigned(FPrinterService) then
      begin
        ShowMessage('Serviço de impressão não disponível.');
        Exit;
      end;

      // Continua com o processo de impressão
      try
        // Inicializa o template de impressão
        Template := TJPrintTemplate.JavaClass.getInstance;
        Template.init(FContext);
        Template.clear;

        // Adiciona o texto ao template
        Template.add(TJTextUnit.JavaClass.init(StringToJString(ATexto), 60, TJAlign.JavaClass.CENTER));

        // Verifica se o bitmap de impressão foi criado corretamente
        if not Assigned(Template.getPrintBitmap) then
        begin
          ShowMessage('Falha ao criar o bitmap de impressão.');
          Exit;
        end;

        // Envia o template para impressão como uma imagem
        FPrinterService.addRuiImage(Template.getPrintBitmap, 0);

        // Adiciona o listener para gerenciar os eventos de erro e finalização
        FPrinterService.printRuiQueue(TPrinterListener.Create(
          procedure(i: Integer)
          begin
            ShowMessage('Erro ao imprimir: ' + IntToStr(i));
          end,
          procedure
          begin
            FPrinterService.cuttingPaper(TJPrintCuttingMode.JavaClass.CUTTING_MODE_HALT);
            ShowMessage('Impressão concluída com sucesso.');
          end
        ));
      except
        on E: Exception do
          ShowMessage('Erro ao imprimir: ' + E.Message);
      end;
    end
  );
end;

procedure TImpressoraManager.ImprimirTextoSimples;
begin
  FDeviceServiceManager.BindDeviceService(FContext,
    procedure
    begin
      VerificarServicoDeImpressao;

      if not Assigned(FPrinterService) then
      begin
        ShowMessage('Serviço de impressão não disponível.');
        Exit;
      end;

      // Teste simples de impressão sem o uso de templates complexos
      FPrinterService.printRuiQueue(TPrinterListener.Create(
        procedure(i: Integer)
        begin
          ShowMessage('Erro ao imprimir: ' + IntToStr(i));
        end,
        procedure
        begin
          ShowMessage('Impressão concluída com sucesso.');
        end
      ));
    end
  );
end;

end.

