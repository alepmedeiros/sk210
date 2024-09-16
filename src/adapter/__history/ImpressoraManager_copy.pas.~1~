unit ImpressoraManager_copy;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  System.SysUtils,
  Androidapi.Helpers,
  Androidapi.JNI.Widget,
  Androidapi.Log,
  sk210.bridge.topwise.cloudpos,
  DeviceServiceManager; // Aqui importamos a classe TDeviceServiceManager

type
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

  TImpressoraManager = class
  private
    FContext: JContext;
    FDeviceServiceManager: TDeviceServiceManager;
    FPrinterService: JAidlPrinter;
    procedure Imprimir(template: JPrintTemplate);
    procedure VerificarServicoDeImpressao;
  public
    constructor Create(AContext: JContext; ADeviceServiceManager: TDeviceServiceManager);

    // Métodos de impressão
    procedure ImprimirTexto(const ATexto: string);
    procedure ImprimirImagem(AImagem: JBitmap);
    procedure ImprimirFrase;
    procedure ImprimirQRCode(const AQRCode: string);
    procedure ImprimirCodigoDeBarras(const ACodigo: string);
    procedure ImprimirNFC;

    // Rotacionar Bitmap
    function RotateBitmap(ABitmap: JBitmap; ADegrees: Single): JBitmap;

    // Gerar QR Code
    function GerarQRCode(const ATexto: string; AWidth, AHeight: Integer): JBitmap;

    // Gerar Código de Barras
    function GerarCodigoDeBarras(const ACodigo: string; AWidth, AHeight: Integer): JBitmap;
  end;

implementation

uses
  FMX.Dialogs;

{ TPrinterListener }

function TPrinterListener.asBinder: JIBinder;
begin
  // Se o método não for utilizado no seu fluxo, pode retornar nil
  Result := nil;
end;

constructor TPrinterListener.Create(AOnError: TProc<Integer>; AOnPrintFinish: TProc);
begin
  inherited Create;
  FOnError := AOnError;
  FOnPrintFinish := AOnPrintFinish;
end;

function TPrinterListener.getInterfaceDescriptor: JString;
begin
  Result := StringToJString('com/topwise/cloudpos/aidl/printer/AidlPrinterListener');
end;

procedure TPrinterListener.onError(i: Integer);
begin
  if Assigned(FOnError) then
    FOnError(i);
end;

procedure TPrinterListener.onPrintFinish;
begin
  if Assigned(FOnPrintFinish) then
    FOnPrintFinish;
end;

{ TImpressoraManager }

constructor TImpressoraManager.Create(AContext: JContext; ADeviceServiceManager: TDeviceServiceManager);
begin
  inherited Create;
  FContext := AContext;
  FDeviceServiceManager := ADeviceServiceManager;
end;

procedure TImpressoraManager.Imprimir(template: JPrintTemplate);
begin
  if Assigned(FPrinterService) then
  begin
    FPrinterService.addRuiImage(RotateBitmap(template.getPrintBitmap, 180), 0);
    FPrinterService.printRuiQueue(TPrinterListener.Create(
      procedure(i: Integer)
      begin
        // Lida com erro de impressão
      end,
      procedure
      begin
        FPrinterService.cuttingPaper(TJPrintCuttingMode.JavaClass.CUTTING_MODE_HALT);
      end
    ));
  end;
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

        // Verifica se a imagem do template está sendo criada corretamente
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
            // Confirma que a impressão foi concluída com sucesso
            ShowMessage('Impressão concluída com sucesso.');
            // Realiza o corte do papel (caso aplicável)
            FPrinterService.cuttingPaper(TJPrintCuttingMode.JavaClass.CUTTING_MODE_HALT);
          end
        ));
      except
        on E: Exception do
          ShowMessage('Erro ao imprimir: ' + E.Message);
      end;
    end
  );
end;

procedure TImpressoraManager.ImprimirImagem(AImagem: JBitmap);
var
  Template: JPrintTemplate;
begin
  Template := TJPrintTemplate.JavaClass.getInstance;
  Template.init(FContext);
  Template.clear;
  Template.add(TJImageUnit.JavaClass.init(AImagem, 400, 200));
  Imprimir(Template);
end;

procedure TImpressoraManager.ImprimirFrase;
var
  Template: JPrintTemplate;
  Frase: string;
begin
  Frase := 'O Smart Kiosk SK210 é a solução ideal para quem busca' + #13#10 +
    'inovar no atendimento com um baixo investimento e' + #13#10 +
    'facilidade de instalação';
  Template := TJPrintTemplate.JavaClass.getInstance;
  Template.init(FContext);
  Template.clear;
  Template.add(TJTextUnit.JavaClass.init(StringToJString(Frase), 34, TJAlign.JavaClass.CENTER));
  Imprimir(Template);
end;

procedure TImpressoraManager.ImprimirQRCode(const AQRCode: string);
var
  Template: JPrintTemplate;
  QRCodeBitmap: JBitmap;
begin
  QRCodeBitmap := GerarQRCode(AQRCode, 350, 350);
  Template := TJPrintTemplate.JavaClass.getInstance;
  Template.init(FContext);
  Template.clear;
  Template.add(TJImageUnit.JavaClass.init(QRCodeBitmap, 350, 350));
  Imprimir(Template);
end;

procedure TImpressoraManager.ImprimirCodigoDeBarras(const ACodigo: string);
var
  Template: JPrintTemplate;
  CodigoDeBarrasBitmap: JBitmap;
begin
  CodigoDeBarrasBitmap := GerarCodigoDeBarras(ACodigo, 400, 100);
  Template := TJPrintTemplate.JavaClass.getInstance;
  Template.init(FContext);
  Template.clear;
  Template.add(TJImageUnit.JavaClass.init(CodigoDeBarrasBitmap, 400, 100));
  Imprimir(Template);
end;

procedure TImpressoraManager.ImprimirNFC;
var
  Template: JPrintTemplate;
begin
  Template := TJPrintTemplate.JavaClass.getInstance;
  Template.init(FContext);
  Template.clear;
  Template.add(TJTextUnit.JavaClass.init(StringToJString(#13#10), 34, TJAlign.JavaClass.CENTER));
  Template.add(TJTextUnit.JavaClass.init(StringToJString('RAZAO SOCIAL'), 34, TJAlign.JavaClass.CENTER));
  Template.add(TJTextUnit.JavaClass.init(StringToJString('CNPJ:99.999.999/9999-99 IE:99.99.99.99'), 28, TJAlign.JavaClass.CENTER));
  Template.add(TJTextUnit.JavaClass.init(StringToJString('RUA PRINCIPAL, 123 - CENTRO - CAPITAL - RS'), 25, TJAlign.JavaClass.CENTER));
  Template.add(TJTextUnit.JavaClass.init(StringToJString('DANFE NFC-e - Documento Auxiliar da nota Fiscal Eletrônica'), 28, TJAlign.JavaClass.CENTER));
  Imprimir(Template);
end;

function TImpressoraManager.RotateBitmap(ABitmap: JBitmap; ADegrees: Single): JBitmap;
var
  Matrix: JMatrix;
begin
  Matrix := TJMatrix.JavaClass.init;
  Matrix.preRotate(ADegrees);
  Result := TJBitmap.JavaClass.createBitmap(ABitmap, 0, 0, ABitmap.getWidth, ABitmap.getHeight, Matrix, True);
end;

procedure TImpressoraManager.VerificarServicoDeImpressao;
var
  DeviceService: JAidlDeviceService;
begin
  // Verifica se o serviço de impressão foi vinculado
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

  // Tenta obter o PrinterService
  FPrinterService := TJAidlPrinter_Stub.JavaClass.asInterface(DeviceService.getPrinter);

  if not Assigned(FPrinterService) then
  begin
    ShowMessage('Falha ao inicializar o serviço de impressão.');
    Exit;
  end;

  ShowMessage('Serviço de impressão inicializado com sucesso.');
end;

function TImpressoraManager.GerarQRCode(const ATexto: string; AWidth, AHeight: Integer): JBitmap;
//var
//  BitMatrix: JBitMatrix;
//  Writer: JQRCodeWriter;
begin
//  Writer := TJQRCodeWriter.JavaClass.init;
//  BitMatrix := Writer.encode(StringToJString(ATexto), TJBarcodeFormat.JavaClass.QR_CODE, AWidth, AHeight);
//  Result := TJBitmap.JavaClass.createBitmap(AWidth, AHeight, TJBitmap_Config.JavaClass.RGB_565);
  // Implementar lógica para preencher o bitmap conforme o BitMatrix gerado
end;

function TImpressoraManager.GerarCodigoDeBarras(const ACodigo: string; AWidth, AHeight: Integer): JBitmap;
//var
//  BitMatrix: JBitMatrix;
//  Writer: JCode128Writer;
begin
//  Writer := TJCode128Writer.JavaClass.init;
//  BitMatrix := Writer.encode(StringToJString(ACodigo), TJBarcodeFormat.JavaClass.CODE_128, AWidth, AHeight);
//  Result := TJBitmap.JavaClass.createBitmap(AWidth, AHeight, TJBitmap_Config.JavaClass.ARGB_8888);
  // Implementar lógica para preencher o bitmap conforme o BitMatrix gerado
end;

end.

