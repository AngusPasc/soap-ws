program Cliente;

uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {Form1},
  ClienteInterface in 'ClienteInterface.pas',
  ClienteBanco in 'ClienteBanco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
