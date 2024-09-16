program sk210;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  sk210.utils in 'src\utils\sk210.utils.pas',
  sk210.bridge.topwise.cloudpos in 'src\adapter\sk210.bridge.topwise.cloudpos.pas',
  activity_impressao in 'src\res\layout\activity_impressao.pas' {ActivityImpressao},
  activity_main in 'src\res\layout\activity_main.pas' {ActivityMain},
  sk210.adpter.interfaces in 'src\adapter\sk210.adpter.interfaces.pas',
  sk210.utils.enums in 'src\utils\sk210.utils.enums.pas',
  ImpressoraManager in 'src\adapter\ImpressoraManager.pas',
  DeviceServiceManager in 'src\utils\DeviceServiceManager.pas',
  DeviceServiceManager_novo in 'src\utils\DeviceServiceManager_novo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TActivityMain, ActivityMain);
  Application.Run;
end.
