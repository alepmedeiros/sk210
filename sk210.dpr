program sk210;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  sk210.utils in 'src\utils\sk210.utils.pas',
  sk210.bridge.topwise.cloudpos in 'src\adapter\sk210.bridge.topwise.cloudpos.pas',
  sk210.adpter.printer in 'src\adapter\sk210.adpter.printer.pas',
  sk210.utils.deviceservicemanager in 'src\utils\sk210.utils.deviceservicemanager.pas',
  activity_impressao in 'src\res\layout\activity_impressao.pas' {ActivityImpressao},
  activity_main in 'src\res\layout\activity_main.pas' {ActivityMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TActivityMain, ActivityMain);
  Application.Run;
end.
