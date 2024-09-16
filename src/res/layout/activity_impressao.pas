unit activity_impressao;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Layouts,
  Androidapi.Helpers,
  ImpressoraManager, DeviceServiceManager;

type
  TActivityImpressao = class(TForm)
    Layout1: TLayout;
    edtTexto: TEdit;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    btnImpTexto: TButton;
    btnImpBarCode: TButton;
    btnImpQR: TButton;
    btnImpFrase: TButton;
    btnImpImagem: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnImpTextoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FImpressoraManager: TImpressoraManager;
    FDeviceServiceManager: TDeviceServiceManager;
  public

  end;

var
  ActivityImpressao: TActivityImpressao;

implementation

uses
  Androidapi.JNI.GraphicsContentViewText;

{$R *.fmx}

procedure TActivityImpressao.btnImpTextoClick(Sender: TObject);
begin
//  FImpressoraManager.ImprimirTexto('Texto de exemplo para impressão');
  FImpressoraManager.TestarImpressaoUsandoProxy('Texto de exemplo para impressão');
end;

procedure TActivityImpressao.FormCreate(Sender: TObject);
begin
  // Inicializa o gerenciador do serviço de dispositivo
  FDeviceServiceManager := TDeviceServiceManager.GetInstance;

  FImpressoraManager := TImpressoraManager.Create(TAndroidHelper.Context, FDeviceServiceManager);
end;

procedure TActivityImpressao.FormDestroy(Sender: TObject);
begin
  FImpressoraManager.Free;
end;

end.
