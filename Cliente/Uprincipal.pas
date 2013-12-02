unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InvokeRegistry, Rio, SOAPHTTPClient, StdCtrls, ExtCtrls, StrUtils;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edValorA: TEdit;
    edValorB: TEdit;
    btnCalcular: TButton;
    Label3: TLabel;
    edResultado: TEdit;
    httpRioSoma: THTTPRIO;
    panelsoma: TPanel;
    panelBanco: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    edId: TEdit;
    edNome: TEdit;
    btnInserir: TButton;
    Label6: TLabel;
    edResultadoBanco: TEdit;
    httpRioBanco: THTTPRIO;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ClienteInterface, ClienteBanco;


{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  resultado : integer;

begin

  try
    resultado := (httpRioSoma as Iinterface).somar(strtoint(edvalorA.text), strtoint(edvalorB.text));
    edResultado.text := inttostr(resultado);

  except
    on E: Exception do
      ShowMessage(E.Message);
  end;

end;

procedure TForm1.btnInserirClick(Sender: TObject);
var
  resultado : boolean;

begin
  try
    resultado := (httpRioBanco as IDmWsSoap).insereRegistro(strtoint(edId.text), edNome.Text);
    edResultadoBanco.Text := ifthen(resultado, 'Registro incluido', 'Resgistro não incluido');

  except
    on e : Exception do
      ShowMessage(e.Message);

  end;

end;

end.
