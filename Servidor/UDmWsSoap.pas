Unit UDmWsSoap;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm;

type
  IDmWsSoap = interface(IAppServerSOAP)
    ['{26477BFC-D09F-4AC1-A128-2F969E8CA8DB}']

    function insereRegistro(id : integer; nome: string ) :boolean; stdcall;
  end;

  TDmWsSoap = class(TSoapDataModule, IDmWsSoap, IAppServerSOAP, IAppServer)
  private

  public
    function insereRegistro(id : integer; nome: string ) :boolean; stdcall;
  end;

implementation

{$R *.DFM}

procedure TDmWsSoapCreateInstance(out obj: TObject);
begin
 obj := TDmWsSoap.Create(nil);
end;

{ TDmWsSoap }

function TDmWsSoap.insereRegistro(id: integer; nome: string): boolean;
begin
  Result := (id = 10) and (nome = 'Juliana');
end;

initialization
   InvRegistry.RegisterInvokableClass(TDmWsSoap, TDmWsSoapCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IDmWsSoap));
end.
