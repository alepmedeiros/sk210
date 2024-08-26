unit activity_main;

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
  FMX.Objects,
  FMX.Layouts,
  FMX.ListBox,
  FMX.TabControl;

type
  TForm3 = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Image1: TImage;
    ListBox1: TListBox;
    itemCamera: TListBoxItem;
    Image2: TImage;
    Layout4: TLayout;
    Text1: TText;
    Line1: TLine;
    itemScanner: TListBoxItem;
    Image3: TImage;
    Layout5: TLayout;
    Text2: TText;
    Line2: TLine;
    itemImpressoa: TListBoxItem;
    Image4: TImage;
    Layout6: TLayout;
    Text3: TText;
    Line3: TLine;
    itemtef: TListBoxItem;
    Image5: TImage;
    Layout7: TLayout;
    Text4: TText;
    Line4: TLine;
    itemsensorpresenca: TListBoxItem;
    Image6: TImage;
    Layout8: TLayout;
    Text5: TText;
    Line5: TLine;
    itemsensorbobina: TListBoxItem;
    Image7: TImage;
    Layout9: TLayout;
    Text6: TText;
    Line6: TLine;
    procedure itemCameraClick(Sender: TObject);
    procedure itemScannerClick(Sender: TObject);
    procedure itemImpressoaClick(Sender: TObject);
    procedure itemtefClick(Sender: TObject);
    procedure itemsensorpresencaClick(Sender: TObject);
    procedure itemsensorbobinaClick(Sender: TObject);
  private
    {
    ListaItemBox
    Camera
    Scanner
    Impressao
    Tef
    Sensor de Presen�a
    Sensor de Bobina
    }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  System.Rtti,
  sk210.utils;

{$R *.fmx}
{ TForm3 }


procedure TForm3.itemCameraClick(Sender: TObject);
begin
  ShowMessage('Usando Camera');
end;

procedure TForm3.itemImpressoaClick(Sender: TObject);
begin
  ShowMessage('Usando Impressao');
end;

procedure TForm3.itemScannerClick(Sender: TObject);
begin
  ShowMessage('Usando Scanner');
end;

procedure TForm3.itemsensorbobinaClick(Sender: TObject);
begin
  ShowMessage('Usando sensor de bobina');
end;

procedure TForm3.itemsensorpresencaClick(Sender: TObject);
begin
  ShowMessage('Usando sendor de presen�a');
end;

procedure TForm3.itemtefClick(Sender: TObject);
begin
  ShowMessage('Usando tef');
end;

end.
