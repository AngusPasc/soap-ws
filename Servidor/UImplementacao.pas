unit UImplementacao;

interface

uses
  InvokeRegistry;

type

  Iinterface = interface(IInvokable)
{   id da interface gerada pelo delphi CTRL + SHIFT + G}
  ['{0E756257-0A15-47C2-8EE2-A172A60E5B2D}']
{                param   param   type       return   deixa disponivel para o ws}
  function somar(valorA, valorB: Integer) : Integer; stdcall;

  end;
{                        herda            implementa}
  Timplementacao = class(TInvokableClass, IInterface)
{                   CTRL + SHIFT + C cria a funcao}
    public function somar(valorA, valorB : Integer) : Integer; stdcall;
  end;

implementation

function Timplementacao.somar(valorA, valorB: Integer): Integer;
begin
  Result := valorA + valorB;
end;

{ ao inicializar a classe registra a interface e a implementacao }
initialization
  InvRegistry.RegisterInvokableClass(Timplementacao);
  InvRegistry.RegisterInterface(TypeInfo(Iinterface));
end.
