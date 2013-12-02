library WS;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  ModuleWsSoap in 'ModuleWsSoap.pas' {WebModule1: TWebModule},
  UImplementacao in 'UImplementacao.pas',
  UDmWsSoap in 'UDmWsSoap.pas' {DmWsSoap: TSoapDataModule};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
