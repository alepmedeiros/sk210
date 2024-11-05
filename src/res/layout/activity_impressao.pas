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
  Androidapi.Helpers;

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
    procedure btnImpTextoClick(Sender: TObject);
  private

  public

  end;

var
  ActivityImpressao: TActivityImpressao;

implementation

uses
  Androidapi.JNI.GraphicsContentViewText, ImpressoraManager, sk210.utils.enums;

{$R *.fmx}

procedure TActivityImpressao.btnImpTextoClick(Sender: TObject);
begin
  var lPrint := TPrinterHelper.Create;
  lPrint.ImprimirTexto('Teste de impressão', CENTRALIZADO);
end;

end.
