// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/ShipmentService.wsdl
//  >Import : https://api.n11.com/ws/ShipmentService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (30.01.2020 00:55:46 - - $Rev: 96726 $)
// ************************************************************************ //

unit ShipmentService;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  CreateOrUpdateShipmentTemplateRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetShipmentTemplateListRequest = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetShipmentTemplateResponse = class;          { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetShipmentTemplateRequest = class;           { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  CreateOrUpdateShipmentTemplateResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ShipmentSaveAddress  = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ShipmentCompanyApiModel = class;              { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetShipmentTemplateListResponse = class;      { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DistrictApiModel     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ShipmentApiModel     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  CityApiModel         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }



  // ************************************************************************ //
  // XML       : CreateOrUpdateShipmentTemplateRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateOrUpdateShipmentTemplateRequest = class(TRemotable)
  private
    Fauth: Authentication;
    Fshipment: ShipmentApiModel;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:     Authentication    Index (IS_UNQL) read Fauth write Fauth;
    property shipment: ShipmentApiModel  Index (IS_UNQL) read Fshipment write Fshipment;
  end;



  // ************************************************************************ //
  // XML       : Authentication, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  Authentication = class(TRemotable)
  private
    FappKey: string;
    FappSecret: string;
  published
    property appKey:    string  Index (IS_UNQL) read FappKey write FappKey;
    property appSecret: string  Index (IS_UNQL) read FappSecret write FappSecret;
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
  // XML       : GetShipmentTemplateListRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetShipmentTemplateListRequest = class(TRemotable)
  private
    Fauth: Authentication;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth: Authentication  Index (IS_UNQL) read Fauth write Fauth;
  end;



  // ************************************************************************ //
  // XML       : GetShipmentTemplateResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetShipmentTemplateResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FshipmentTemplate: ShipmentApiModel;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:           ResultInfo        Index (IS_UNQL) read Fresult write Fresult;
    property shipmentTemplate: ShipmentApiModel  Index (IS_UNQL) read FshipmentTemplate write FshipmentTemplate;
  end;



  // ************************************************************************ //
  // XML       : GetShipmentTemplateRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetShipmentTemplateRequest = class(TRemotable)
  private
    Fauth: Authentication;
    Fname_: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:  Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property name_: string          Index (IS_UNQL) read Fname_ write Fname_;
  end;



  // ************************************************************************ //
  // XML       : CreateOrUpdateShipmentTemplateResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateOrUpdateShipmentTemplateResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FshipmentTemplate: ShipmentApiModel;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:           ResultInfo        Index (IS_UNQL) read Fresult write Fresult;
    property shipmentTemplate: ShipmentApiModel  Index (IS_UNQL) read FshipmentTemplate write FshipmentTemplate;
  end;



  // ************************************************************************ //
  // XML       : ShipmentSaveAddress, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ShipmentSaveAddress = class(TRemotable)
  private
    Ftitle: string;
    Faddress: string;
    Fdistrict: DistrictApiModel;
    Fcity: CityApiModel;
    FpostalCode: string;
  public
    destructor Destroy; override;
  published
    property title:      string            Index (IS_UNQL) read Ftitle write Ftitle;
    property address:    string            Index (IS_UNQL) read Faddress write Faddress;
    property district:   DistrictApiModel  Index (IS_UNQL) read Fdistrict write Fdistrict;
    property city:       CityApiModel      Index (IS_UNQL) read Fcity write Fcity;
    property postalCode: string            Index (IS_UNQL) read FpostalCode write FpostalCode;
  end;



  // ************************************************************************ //
  // XML       : ShipmentCompanyApiModel, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ShipmentCompanyApiModel = class(TRemotable)
  private
    Fname_: string;
    FshortName: string;
  published
    property name_:     string  Index (IS_UNQL) read Fname_ write Fname_;
    property shortName: string  Index (IS_UNQL) read FshortName write FshortName;
  end;

  CityApiModelList = array of CityApiModel;     { "http://www.n11.com/ws/schemas"[GblCplx] }
  ShipmentCompanyApiModelList = array of ShipmentCompanyApiModel;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  ShipmentTemplateList = array of ShipmentApiModel;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetShipmentTemplateListResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetShipmentTemplateListResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FshipmentTemplates: ShipmentTemplateList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:            ResultInfo            Index (IS_UNQL) read Fresult write Fresult;
    property shipmentTemplates: ShipmentTemplateList  Index (IS_UNQL) read FshipmentTemplates write FshipmentTemplates;
  end;



  // ************************************************************************ //
  // XML       : DistrictApiModel, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DistrictApiModel = class(TRemotable)
  private
    Fname_: string;
    Fid: Int64;
  published
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property id:    Int64   Index (IS_UNQL) read Fid write Fid;
  end;



  // ************************************************************************ //
  // XML       : ShipmentApiModel, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ShipmentApiModel = class(TRemotable)
  private
    FtemplateName: string;
    FinstallmentInfo: string;
    FexchangeInfo: string;
    FshippingInfo: string;
    FspecialDelivery: Boolean;
    FdeliveryFeeType: string;
    FcombinedShipmentAllowed: Boolean;
    FshipmentMethod: string;
    FwarehouseAddress: ShipmentSaveAddress;
    FexchangeAddress: ShipmentSaveAddress;
    FshipmentCompanies: ShipmentCompanyApiModelList;
    FdeliverableCities: CityApiModelList;
    FclaimShipmentCompany: ShipmentCompanyApiModel;
    FcargoAccountNo: string;
    FuseDmallCargo: Boolean;
  public
    destructor Destroy; override;
  published
    property templateName:            string                       Index (IS_UNQL) read FtemplateName write FtemplateName;
    property installmentInfo:         string                       Index (IS_UNQL) read FinstallmentInfo write FinstallmentInfo;
    property exchangeInfo:            string                       Index (IS_UNQL) read FexchangeInfo write FexchangeInfo;
    property shippingInfo:            string                       Index (IS_UNQL) read FshippingInfo write FshippingInfo;
    property specialDelivery:         Boolean                      Index (IS_UNQL) read FspecialDelivery write FspecialDelivery;
    property deliveryFeeType:         string                       Index (IS_UNQL) read FdeliveryFeeType write FdeliveryFeeType;
    property combinedShipmentAllowed: Boolean                      Index (IS_UNQL) read FcombinedShipmentAllowed write FcombinedShipmentAllowed;
    property shipmentMethod:          string                       Index (IS_UNQL) read FshipmentMethod write FshipmentMethod;
    property warehouseAddress:        ShipmentSaveAddress          Index (IS_UNQL) read FwarehouseAddress write FwarehouseAddress;
    property exchangeAddress:         ShipmentSaveAddress          Index (IS_UNQL) read FexchangeAddress write FexchangeAddress;
    property shipmentCompanies:       ShipmentCompanyApiModelList  Index (IS_UNQL) read FshipmentCompanies write FshipmentCompanies;
    property deliverableCities:       CityApiModelList             Index (IS_NLBL or IS_UNQL) read FdeliverableCities write FdeliverableCities;
    property claimShipmentCompany:    ShipmentCompanyApiModel      Index (IS_UNQL) read FclaimShipmentCompany write FclaimShipmentCompany;
    property cargoAccountNo:          string                       Index (IS_NLBL or IS_UNQL) read FcargoAccountNo write FcargoAccountNo;
    property useDmallCargo:           Boolean                      Index (IS_UNQL) read FuseDmallCargo write FuseDmallCargo;
  end;



  // ************************************************************************ //
  // XML       : CityApiModel, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CityApiModel = class(TRemotable)
  private
    Fname_: string;
    Fcode: Int64;
  published
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property code:  Int64   Index (IS_UNQL) read Fcode write Fcode;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ShipmentServicePortSoap11
  // service   : ShipmentServicePortService
  // port      : ShipmentServicePortSoap11
  // URL       : https://api.n11.com/ws/shipmentService/
  // ************************************************************************ //
  ShipmentServicePort = interface(IInvokable)
  ['{F69A130D-3132-99E6-D104-A3D3613064D1}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  CreateOrUpdateShipmentTemplate(const CreateOrUpdateShipmentTemplateRequest: CreateOrUpdateShipmentTemplateRequest): CreateOrUpdateShipmentTemplateResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetShipmentTemplate(const GetShipmentTemplateRequest: GetShipmentTemplateRequest): GetShipmentTemplateResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetShipmentTemplateList(const GetShipmentTemplateListRequest: GetShipmentTemplateListRequest): GetShipmentTemplateListResponse; stdcall;
  end;

function GetShipmentServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ShipmentServicePort;


implementation
  uses System.SysUtils;

function GetShipmentServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ShipmentServicePort;
const
  defWSDL = 'https://api.n11.com/ws/ShipmentService.wsdl';
  defURL  = 'https://api.n11.com/ws/shipmentService/';
  defSvc  = 'ShipmentServicePortService';
  defPrt  = 'ShipmentServicePortSoap11';
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
    Result := (RIO as ShipmentServicePort);
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


constructor CreateOrUpdateShipmentTemplateRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateOrUpdateShipmentTemplateRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fshipment);
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

constructor GetShipmentTemplateListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetShipmentTemplateListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetShipmentTemplateResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetShipmentTemplateResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FshipmentTemplate);
  inherited Destroy;
end;

constructor GetShipmentTemplateRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetShipmentTemplateRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor CreateOrUpdateShipmentTemplateResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateOrUpdateShipmentTemplateResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FshipmentTemplate);
  inherited Destroy;
end;

destructor ShipmentSaveAddress.Destroy;
begin
  System.SysUtils.FreeAndNil(Fdistrict);
  System.SysUtils.FreeAndNil(Fcity);
  inherited Destroy;
end;

constructor GetShipmentTemplateListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetShipmentTemplateListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FshipmentTemplates)-1 do
    System.SysUtils.FreeAndNil(FshipmentTemplates[I]);
  System.SetLength(FshipmentTemplates, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

destructor ShipmentApiModel.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FshipmentCompanies)-1 do
    System.SysUtils.FreeAndNil(FshipmentCompanies[I]);
  System.SetLength(FshipmentCompanies, 0);
  for I := 0 to System.Length(FdeliverableCities)-1 do
    System.SysUtils.FreeAndNil(FdeliverableCities[I]);
  System.SetLength(FdeliverableCities, 0);
  System.SysUtils.FreeAndNil(FwarehouseAddress);
  System.SysUtils.FreeAndNil(FexchangeAddress);
  System.SysUtils.FreeAndNil(FclaimShipmentCompany);
  inherited Destroy;
end;

initialization
  { ShipmentServicePort }
  InvRegistry.RegisterInterface(TypeInfo(ShipmentServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ShipmentServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ShipmentServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ShipmentServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(CreateOrUpdateShipmentTemplateRequest, 'http://www.n11.com/ws/schemas', 'CreateOrUpdateShipmentTemplateRequest');
  RemClassRegistry.RegisterSerializeOptions(CreateOrUpdateShipmentTemplateRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(GetShipmentTemplateListRequest, 'http://www.n11.com/ws/schemas', 'GetShipmentTemplateListRequest');
  RemClassRegistry.RegisterSerializeOptions(GetShipmentTemplateListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetShipmentTemplateResponse, 'http://www.n11.com/ws/schemas', 'GetShipmentTemplateResponse');
  RemClassRegistry.RegisterSerializeOptions(GetShipmentTemplateResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetShipmentTemplateRequest, 'http://www.n11.com/ws/schemas', 'GetShipmentTemplateRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetShipmentTemplateRequest), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterSerializeOptions(GetShipmentTemplateRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateOrUpdateShipmentTemplateResponse, 'http://www.n11.com/ws/schemas', 'CreateOrUpdateShipmentTemplateResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateOrUpdateShipmentTemplateResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ShipmentSaveAddress, 'http://www.n11.com/ws/schemas', 'ShipmentSaveAddress');
  RemClassRegistry.RegisterXSClass(ShipmentCompanyApiModel, 'http://www.n11.com/ws/schemas', 'ShipmentCompanyApiModel');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ShipmentCompanyApiModel), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CityApiModelList), 'http://www.n11.com/ws/schemas', 'CityApiModelList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ShipmentCompanyApiModelList), 'http://www.n11.com/ws/schemas', 'ShipmentCompanyApiModelList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ShipmentTemplateList), 'http://www.n11.com/ws/schemas', 'ShipmentTemplateList');
  RemClassRegistry.RegisterXSClass(GetShipmentTemplateListResponse, 'http://www.n11.com/ws/schemas', 'GetShipmentTemplateListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetShipmentTemplateListResponse), 'shipmentTemplates', '[ArrayItemName="shipmentTemplate"]');
  RemClassRegistry.RegisterSerializeOptions(GetShipmentTemplateListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DistrictApiModel, 'http://www.n11.com/ws/schemas', 'DistrictApiModel');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DistrictApiModel), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(ShipmentApiModel, 'http://www.n11.com/ws/schemas', 'ShipmentApiModel');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ShipmentApiModel), 'shipmentCompanies', '[ArrayItemName="shipmentCompany"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ShipmentApiModel), 'deliverableCities', '[ArrayItemName="city"]');
  RemClassRegistry.RegisterXSClass(CityApiModel, 'http://www.n11.com/ws/schemas', 'CityApiModel');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CityApiModel), 'name_', '[ExtName="name"]');

end.