// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/ws/WS.dll/wsdl/IDmWsSoap
//  >Import : http://localhost/ws/WS.dll/wsdl/IDmWsSoap:0
// Encoding : utf-8
// Version  : 1.0
// (02/12/2013 13:45:16 - * $Rev: 5154 $)
// ************************************************************************ //

unit ClienteBanco;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, SOAPMidas;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : urn:UDmWsSoap-IDmWsSoap
  // soapAction: urn:UDmWsSoap-IDmWsSoap#insereRegistro
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IDmWsSoapbinding
  // service   : IDmWsSoapservice
  // port      : IDmWsSoapPort
  // URL       : http://localhost/ws/WS.dll/soap/IDmWsSoap
  // ************************************************************************ //
  IDmWsSoap = interface(IAppServerSOAP)
  ['{16D8B6A2-D6B9-C359-B2A0-F2171C1C6787}']
    function  insereRegistro(const id: Integer; const nome: WideString): Boolean; stdcall;
  end;



implementation
  uses SysUtils;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IDmWsSoap), 'urn:UDmWsSoap-IDmWsSoap', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IDmWsSoap), 'urn:UDmWsSoap-IDmWsSoap#insereRegistro');

end.