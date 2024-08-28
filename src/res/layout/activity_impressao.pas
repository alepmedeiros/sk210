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
  sk210.adpter.printer;

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
  private
    FPrintTemplate: TPrinterManager;
  public
    { Public declarations }
  end;

var
  ActivityImpressao: TActivityImpressao;

implementation

{$R *.fmx}

procedure TActivityImpressao.btnImpTextoClick(Sender: TObject);
begin
  FPrintTemplate.PrintText(edtTexto.Text);
//  FPrintTemplate.Clear;
//  FPrintTemplate.Add('\n\n');
//  FPrintTemplate.Add('\n\n');
//  FPrintTemplate.Add(edtTexto.Text, 60, TAlinhamento.CENTRALIZADO);
//  FPrintTemplate.Print;
end;

procedure TActivityImpressao.FormCreate(Sender: TObject);
begin
  FPrintTemplate := TPrinterManager.Create;
end;

end.
