unit sk210.adpter.printer;

interface

uses
  System.SysUtils,
  sk210.bridge.topwise.cloudpos, // Unit gerada
  FMX.Graphics, // Manipulação de bitmaps no FireMonkey
  FMX.Surfaces,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Util,
  Androidapi.Helpers,
  sk210.utils.deviceservicemanager;

type
  TPrinterManager = class
  private
    FTemplate: JPrintTemplate; // Usado para manipular o PrintTemplate
    FPrinter: JPrinter;

    FDeviceManager: TDeviceServiceManager;
  public
    constructor Create;
    destructor Destroy; override;

    procedure PrintText(const AText: string);
  end;

implementation

uses
  Androidapi.JNI.GraphicsContentViewText, // Importa para manipular bitmaps no Android
  Androidapi.Bitmap,
  System.UITypes,
  System.Math.Vectors, System.Types;

{ TPrinterManager }


function DegToRad(Degrees: Single): Single;
begin
  Result := Degrees * (PI / 180);
end;

function RotateBitmap(const Original: JBitmap; const Degrees: Single): JBitmap;
var
  Matrix: JMatrix;
  RotatedBitmap: JBitmap;
begin
  Matrix := TJMatrix.JavaClass.init;
  Matrix.preRotate(Degrees);

  RotatedBitmap := TJBitmap.JavaClass.createBitmap(
    Original, 0, 0, Original.getWidth, Original.getHeight, Matrix, True);

  Result := RotatedBitmap;
end;

function BitmapToJBitmap(const ABitmap: TBitmap): JBitmap;
var
  BitmapData: TBitmapData;
  AndroidBitmap: JBitmap;
  Row, Col: Integer;
  PixelColor: TAlphaColor;
begin
  // Verifica se o TBitmap tem conteúdo
  if (ABitmap.IsEmpty) then
    raise Exception.Create('Bitmap está vazio.');

  // Trava o bitmap para leitura de pixels
  if not ABitmap.Map(TMapAccess.Read, BitmapData) then
    raise Exception.Create('Falha ao mapear o Bitmap.');

  try
    // Cria um JBitmap com a mesma dimensão do TBitmap
    AndroidBitmap := TJBitmap.JavaClass.createBitmap(ABitmap.Width, ABitmap.Height, TJBitmap_Config.JavaClass.ARGB_8888);

    for Row := 0 to ABitmap.Height - 1 do
    begin
      for Col := 0 to ABitmap.Width - 1 do
      begin
        // Obtém a cor do pixel no TBitmap
        PixelColor := BitmapData.GetPixel(Col, Row);

        // Define o pixel no JBitmap no formato ARGB
        AndroidBitmap.setPixel(Col, Row, PixelColor);
      end;
    end;

    Result := AndroidBitmap;
  finally
    // Libera o bitmap mapeado
    ABitmap.Unmap(BitmapData);
  end;
end;

constructor TPrinterManager.Create;
begin
  inherited Create;
  // Inicialize o PrintTemplate
  FTemplate := TJPrintTemplate.JavaClass.getInstance;
  FTemplate.init(TAndroidHelper.Context);
  FDeviceManager := TDeviceServiceManager.Create;
end;

destructor TPrinterManager.Destroy;
begin
  // Limpe os recursos
  FTemplate.clear;
  inherited Destroy;
end;

procedure TPrinterManager.PrintText(const AText: string);
var
  TextUnit: JTextUnit;
begin
  TextUnit := TJTextUnit.JavaClass.init(StringToJString(AText));
  FTemplate.add(TextUnit);

  // Enviar o comando de impressão
  try
    // Adicione o código para interagir com o serviço de impressão aqui
    FDeviceManager.GetPrintManager.addRuiImage(RotateBitmap(FTemplate.getPrintBitmap,180),0);
    var lListener := TJAidlPrinterListener.Create;

    FDeviceManager.GetPrintManager.printRuiQueue(lListener);
  except
    on E: Exception do
      raise Exception.Create('Erro ao imprimir texto: ' + E.Message);
  end;
end;

end.

