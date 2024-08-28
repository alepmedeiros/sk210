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
  TActivityMain = class(TForm)
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

  public
    { Public declarations }
  end;

var
  ActivityMain: TActivityMain;

implementation

uses
  System.Rtti,
  sk210.utils, activity_impressao;

{$R *.fmx}
{ TForm3 }

procedure TActivityMain.itemCameraClick(Sender: TObject);
begin
  ShowMessage('Usando Camera');
end;

procedure TActivityMain.itemImpressoaClick(Sender: TObject);
begin
  Application.CreateForm(TActivityImpressao, ActivityImpressao);
  ActivityImpressao.Show;
  Application.MainForm := ActivityImpressao;
end;

procedure TActivityMain.itemScannerClick(Sender: TObject);
begin
  ShowMessage('Usando Scanner');
end;

procedure TActivityMain.itemsensorbobinaClick(Sender: TObject);
begin
  ShowMessage('Usando sensor de bobina');
end;

procedure TActivityMain.itemsensorpresencaClick(Sender: TObject);
begin
  ShowMessage('Usando sendor de presença');
end;

procedure TActivityMain.itemtefClick(Sender: TObject);
begin
  ShowMessage('Usando tef');
end;

end.
