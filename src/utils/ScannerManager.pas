unit ScannerManager;

interface

uses
  System.SysUtils, System.Classes, Androidapi.JNIBridge, Androidapi.JNI.JavaTypes,
  Androidapi.Helpers, sk210.bridge.topwise.AidlCameraScanCode, sk210.bridge.topwise.AidlSystem,
  FMX.Dialogs, Androidapi.JNI.Os;

type
  // Classe para gerenciar o escaneamento
  TScannerManager = class
  private
    FDecodeManager: JAidlCameraScanCode;
    FIsDecoding: Boolean;
    procedure HandleDecodeResult(const Result: string);
  public
    constructor Create(ADeviceService: JAidlCameraScanCode);
    procedure StartDecode;
    procedure StopDecode;
  end;

  // Listener para capturar o resultado do escaneamento
  TDecodeCallbackListener = class(TJavaLocal, JAidlDecodeCallBack)
  private
    FScannerManager: TScannerManager;
  public
    constructor Create(AScannerManager: TScannerManager);
    procedure onResult(string_: JString); cdecl;
    procedure onError(i: Integer); cdecl;
    function asBinder: JIBinder; cdecl;
  end;

implementation

{ TScannerManager }

constructor TScannerManager.Create(ADeviceService: JAidlCameraScanCode);
begin
  inherited Create;
  FDecodeManager := ADeviceService;
  FIsDecoding := False;
end;

procedure TScannerManager.StartDecode;
var
  DecodeParams: JDecodeParameter;
  DecodeCallback: TDecodeCallbackListener;
begin
  if not FIsDecoding then
  begin
    if not Assigned(FDecodeManager) then
    begin
      ShowMessage('Serviço de escaneamento não disponível.');
      Exit;
    end;

    // Configura os parâmetros de decodificação
    DecodeParams := TJDecodeParameter.Create;
    DecodeParams.setDecodeMode(TJDecodeMode.JavaClass.MODE_SINGLE_SCAN_CODE);
    DecodeParams.setFlashLightTimeout($FFFFFFFF); // Timeout do flash

    // Cria o callback do escaneamento
    DecodeCallback := TDecodeCallbackListener.Create(Self);

    try
      // Inicia o processo de escaneamento
      FDecodeManager.startDecode(DecodeParams, DecodeCallback);
      FIsDecoding := True;
    except
      on E: Exception do
        ShowMessage('Erro ao iniciar o escaneamento: ' + E.Message);
    end;
  end;
end;

procedure TScannerManager.StopDecode;
begin
  if Assigned(FDecodeManager) and FIsDecoding then
  begin
    FDecodeManager.stopDecode;
    FIsDecoding := False;
  end;
end;

procedure TScannerManager.HandleDecodeResult(const Result: string);
begin
  ShowMessage('Resultado do escaneamento: ' + Result);
end;

{ TDecodeCallbackListener }

constructor TDecodeCallbackListener.Create(AScannerManager: TScannerManager);
begin
  inherited Create;
  FScannerManager := AScannerManager;
end;

procedure TDecodeCallbackListener.onResult(string_: JString);
begin
  FScannerManager.HandleDecodeResult(JStringToString(string_));
end;

procedure TDecodeCallbackListener.onError(i: Integer);
begin
  ShowMessage('Erro no escaneamento: ' + IntToStr(i));
end;

function TDecodeCallbackListener.asBinder: JIBinder;
begin
  Result := nil; // Implementação fictícia para compatibilidade
end;

end.

