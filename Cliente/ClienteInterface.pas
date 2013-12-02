// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/ws/WS.dll/wsdl/Iinterface
// Encoding : utf-8
// Version  : 1.0
// (02/12/2013 11:27:53 - * $Rev: 5154 $)
// ************************************************************************ //

unit ClienteInterface;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_ATTR = $0010;
  IS_TEXT = $0020;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : urn:UImplementacao-Iinterface
  // soapAction: urn:UImplementacao-Iinterface#somar
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : Iinterfacebinding
  // service   : Iinterfaceservice
  // port      : IinterfacePort
  // URL       : http://localhost/ws/WS.dll/soap/Iinterface
  // ************************************************************************ //
  Iinterface = interface(IInvokable)
  ['{47EBBC2C-7178-1899-49F3-8850D0656D6C}']
    function  somar(const valorA: Integer; const valorB: Integer): Integer; stdcall;
  end;

function GetIinterface(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Iinterface;


implementation
  uses SysUtils;

function GetIinterface(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Iinterface;
const
  defWSDL = 'http://localhost/ws/WS.dll/wsdl/Iinterface';
  defURL  = 'http://localhost/ws/WS.dll/soap/Iinterface';
  defSvc  = 'Iinterfaceservice';
  defPrt  = 'IinterfacePort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as Iinterface);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(Iinterface), 'urn:UImplementacao-Iinterface', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Iinterface), 'urn:UImplementacao-Iinterface#somar');

end.