unit activity_scanner;

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
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Objects,
  FMX.Layouts,
  Androidapi.JNI.JavaTypes,
  ScannerManager;

type
  TActivityScanner = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    btnStart: TButton;
    btnStop: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  private
    { Private declarations }
  public
    FScannerManager: TScannerManager;
  end;

var
  ActivityScanner: TActivityScanner;

implementation

uses
  sk210.bridge.topwise.AidlCameraScanCode, DeviceServiceManager;

{$R *.fmx}

procedure TActivityScanner.btnStartClick(Sender: TObject);
begin
  FScannerManager.StartDecode;
end;

procedure TActivityScanner.btnStopClick(Sender: TObject);
begin
  FScannerManager.StopDecode;
end;

procedure TActivityScanner.FormCreate(Sender: TObject);
begin
  // Obtém o serviço de câmera através do DeviceServiceManager
  FScannerManager := TScannerManager.Create(TDeviceServiceManager.GetInstance.GetCameraManager);
end;

procedure TActivityScanner.FormDestroy(Sender: TObject);
begin
  FScannerManager.Free;
end;

end.
