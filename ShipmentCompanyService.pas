// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/ShipmentCompanyService.wsdl
//  >Import : https://api.n11.com/ws/ShipmentCompanyService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (30.01.2020 00:44:10 - - $Rev: 96726 $)
// ************************************************************************ //

unit ShipmentCompanyService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  GetShipmentCompaniesRequest = class;          { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetShipmentCompaniesResponse = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ShipmentCompanyData  = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }



  // ************************************************************************ //
  // XML       : GetShipmentCompaniesRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetShipmentCompaniesRequest = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  ShipmentCompanyList = array of ShipmentCompanyData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetShipmentCompaniesResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetShipmentCompaniesResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FshipmentCompanies: ShipmentCompanyList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:            ResultInfo           Index (IS_UNQL) read Fresult write Fresult;
    property shipmentCompanies: ShipmentCompanyList  Index (IS_UNQL) read FshipmentCompanies write FshipmentCompanies;
  end;



  // ************************************************************************ //
  // XML       : ShipmentCompanyData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ShipmentCompanyData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FshortName: string;
  published
    property id:        Int64   Index (IS_UNQL) read Fid write Fid;
    property name_:     string  Index (IS_UNQL) read Fname_ write Fname_;
    property shortName: string  Index (IS_UNQL) read FshortName write FshortName;
  end;



  // ************************************************************************ //
  // XML       : ResultInfo, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ResultInfo = class(TRemotable)
  private
    Fstatus: string;
    Fstatus_Specified: boolean;
    FerrorCode: string;
    FerrorCode_Specified: boolean;
    FerrorMessage: string;
    FerrorMessage_Specified: boolean;
    FerrorCategory: string;
    FerrorCategory_Specified: boolean;
    procedure Setstatus(Index: Integer; const Astring: string);
    function  status_Specified(Index: Integer): boolean;
    procedure SeterrorCode(Index: Integer; const Astring: string);
    function  errorCode_Specified(Index: Integer): boolean;
    procedure SeterrorMessage(Index: Integer; const Astring: string);
    function  errorMessage_Specified(Index: Integer): boolean;
    procedure SeterrorCategory(Index: Integer; const Astring: string);
    function  errorCategory_Specified(Index: Integer): boolean;
  published
    property status:        string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
    property errorCode:     string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FerrorCode write SeterrorCode stored errorCode_Specified;
    property errorMessage:  string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FerrorMessage write SeterrorMessage stored errorMessage_Specified;
    property errorCategory: string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FerrorCategory write SeterrorCategory stored errorCategory_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ShipmentCompanyServicePortSoap11
  // service   : ShipmentCompanyServicePortService
  // port      : ShipmentCompanyServicePortSoap11
  // URL       : https://api.n11.com/ws/shipmentCompanyService/
  // ************************************************************************ //
  ShipmentCompanyServicePort = interface(IInvokable)
  ['{1B470676-146A-06F6-6D1A-D7025D324D15}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetShipmentCompanies(const GetShipmentCompaniesRequest: GetShipmentCompaniesRequest): GetShipmentCompaniesResponse; stdcall;
  end;

function GetShipmentCompanyServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ShipmentCompanyServicePort;


implementation
  uses System.SysUtils;

function GetShipmentCompanyServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ShipmentCompanyServicePort;
const
  defWSDL = 'https://api.n11.com/ws/ShipmentCompanyService.wsdl';
  defURL  = 'https://api.n11.com/ws/shipmentCompanyService/';
  defSvc  = 'ShipmentCompanyServicePortService';
  defPrt  = 'ShipmentCompanyServicePortSoap11';
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
    Result := (RIO as ShipmentCompanyServicePort);
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


constructor GetShipmentCompaniesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetShipmentCompaniesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetShipmentCompaniesResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FshipmentCompanies)-1 do
    System.SysUtils.FreeAndNil(FshipmentCompanies[I]);
  System.SetLength(FshipmentCompanies, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

procedure ResultInfo.Setstatus(Index: Integer; const Astring: string);
begin
  Fstatus := Astring;
  Fstatus_Specified := True;
end;

function ResultInfo.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure ResultInfo.SeterrorCode(Index: Integer; const Astring: string);
begin
  FerrorCode := Astring;
  FerrorCode_Specified := True;
end;

function ResultInfo.errorCode_Specified(Index: Integer): boolean;
begin
  Result := FerrorCode_Specified;
end;

procedure ResultInfo.SeterrorMessage(Index: Integer; const Astring: string);
begin
  FerrorMessage := Astring;
  FerrorMessage_Specified := True;
end;

function ResultInfo.errorMessage_Specified(Index: Integer): boolean;
begin
  Result := FerrorMessage_Specified;
end;

procedure ResultInfo.SeterrorCategory(Index: Integer; const Astring: string);
begin
  FerrorCategory := Astring;
  FerrorCategory_Specified := True;
end;

function ResultInfo.errorCategory_Specified(Index: Integer): boolean;
begin
  Result := FerrorCategory_Specified;
end;

initialization
  { ShipmentCompanyServicePort }
  InvRegistry.RegisterInterface(TypeInfo(ShipmentCompanyServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ShipmentCompanyServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ShipmentCompanyServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ShipmentCompanyServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(GetShipmentCompaniesRequest, 'http://www.n11.com/ws/schemas', 'GetShipmentCompaniesRequest');
  RemClassRegistry.RegisterSerializeOptions(GetShipmentCompaniesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ShipmentCompanyList), 'http://www.n11.com/ws/schemas', 'ShipmentCompanyList');
  RemClassRegistry.RegisterXSClass(GetShipmentCompaniesResponse, 'http://www.n11.com/ws/schemas', 'GetShipmentCompaniesResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetShipmentCompaniesResponse), 'shipmentCompanies', '[ArrayItemName="shipmentCompany"]');
  RemClassRegistry.RegisterSerializeOptions(GetShipmentCompaniesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ShipmentCompanyData, 'http://www.n11.com/ws/schemas', 'ShipmentCompanyData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ShipmentCompanyData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');

end.