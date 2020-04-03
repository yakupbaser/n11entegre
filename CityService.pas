// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/CityService.wsdl
//  >Import : https://api.n11.com/ws/CityService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (19.01.2020 02:07:38 - - $Rev: 96726 $)
// ************************************************************************ //

unit CityService;

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
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  GetCityRequest       = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetCitiesRequest     = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetCityResponse      = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetDistrictRequest   = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetDistrictResponse  = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetNeighborhoodsRequest = class;              { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetCitiesResponse    = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DistrictData         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  CityData             = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetNeighborhoodsResponse = class;             { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  NeighborhoodData     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }



  // ************************************************************************ //
  // XML       : GetCityRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCityRequest = class(TRemotable)
  private
    FcityCode: Int64;
  public
    constructor Create; override;
  published
    property cityCode: Int64  Index (IS_UNQL) read FcityCode write FcityCode;
  end;



  // ************************************************************************ //
  // XML       : GetCitiesRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCitiesRequest = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetCityResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCityResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fcity: CityData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
    property city:   CityData    Index (IS_UNQL) read Fcity write Fcity;
  end;



  // ************************************************************************ //
  // XML       : GetDistrictRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDistrictRequest = class(TRemotable)
  private
    FcityCode: Int64;
  public
    constructor Create; override;
  published
    property cityCode: Int64  Index (IS_UNQL) read FcityCode write FcityCode;
  end;

  DistrictList = array of DistrictData;         { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetDistrictResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDistrictResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fdistricts: DistrictList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:    ResultInfo    Index (IS_UNQL) read Fresult write Fresult;
    property districts: DistrictList  Index (IS_UNQL) read Fdistricts write Fdistricts;
  end;



  // ************************************************************************ //
  // XML       : GetNeighborhoodsRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNeighborhoodsRequest = class(TRemotable)
  private
    FdistrictId: Int64;
  public
    constructor Create; override;
  published
    property districtId: Int64  Index (IS_UNQL) read FdistrictId write FdistrictId;
  end;

  CityList   = array of CityData;               { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetCitiesResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCitiesResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fcities: CityList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
    property cities: CityList    Index (IS_UNQL) read Fcities write Fcities;
  end;



  // ************************************************************************ //
  // XML       : DistrictData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DistrictData = class(TRemotable)
  private
    Fname_: string;
    Fid: Int64;
  published
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property id:    Int64   Index (IS_UNQL) read Fid write Fid;
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
  // XML       : CityData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CityData = class(TRemotable)
  private
    FcityCode: string;
    FcityId: Int64;
    FcityName: string;
  published
    property cityCode: string  Index (IS_UNQL) read FcityCode write FcityCode;
    property cityId:   Int64   Index (IS_UNQL) read FcityId write FcityId;
    property cityName: string  Index (IS_UNQL) read FcityName write FcityName;
  end;

  NeighborhoodListData = array of NeighborhoodData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetNeighborhoodsResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNeighborhoodsResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fneighborhoods: NeighborhoodListData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:        ResultInfo            Index (IS_UNQL) read Fresult write Fresult;
    property neighborhoods: NeighborhoodListData  Index (IS_UNQL) read Fneighborhoods write Fneighborhoods;
  end;



  // ************************************************************************ //
  // XML       : NeighborhoodData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  NeighborhoodData = class(TRemotable)
  private
    Fname_: string;
    Fid: Int64;
  published
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property id:    Int64   Index (IS_UNQL) read Fid write Fid;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : CityServicePortSoap11
  // service   : CityServicePortService
  // port      : CityServicePortSoap11
  // URL       : https://api.n11.com/ws/cityService/
  // ************************************************************************ //
  CityServicePort = interface(IInvokable)
  ['{2EEA8613-D347-DAD1-584B-8167DDCA06A9}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetCities(const GetCitiesRequest: GetCitiesRequest): GetCitiesResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetCity(const GetCityRequest: GetCityRequest): GetCityResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetDistrict(const GetDistrictRequest: GetDistrictRequest): GetDistrictResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetNeighborhoods(const GetNeighborhoodsRequest: GetNeighborhoodsRequest): GetNeighborhoodsResponse; stdcall;
  end;

function GetCityServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CityServicePort;


implementation
  uses System.SysUtils;

function GetCityServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CityServicePort;
const
  defWSDL = 'https://api.n11.com/ws/CityService.wsdl';
  defURL  = 'https://api.n11.com/ws/cityService/';
  defSvc  = 'CityServicePortService';
  defPrt  = 'CityServicePortSoap11';
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
    Result := (RIO as CityServicePort);
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


constructor GetCityRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetCitiesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetCityResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCityResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fcity);
  inherited Destroy;
end;

constructor GetDistrictRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDistrictResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDistrictResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdistricts)-1 do
    System.SysUtils.FreeAndNil(Fdistricts[I]);
  System.SetLength(Fdistricts, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor GetNeighborhoodsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetCitiesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCitiesResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fcities)-1 do
    System.SysUtils.FreeAndNil(Fcities[I]);
  System.SetLength(Fcities, 0);
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

constructor GetNeighborhoodsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNeighborhoodsResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fneighborhoods)-1 do
    System.SysUtils.FreeAndNil(Fneighborhoods[I]);
  System.SetLength(Fneighborhoods, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

initialization
  { CityServicePort }
  InvRegistry.RegisterInterface(TypeInfo(CityServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CityServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(CityServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(CityServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(GetCityRequest, 'http://www.n11.com/ws/schemas', 'GetCityRequest');
  RemClassRegistry.RegisterSerializeOptions(GetCityRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCitiesRequest, 'http://www.n11.com/ws/schemas', 'GetCitiesRequest');
  RemClassRegistry.RegisterSerializeOptions(GetCitiesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCityResponse, 'http://www.n11.com/ws/schemas', 'GetCityResponse');
  RemClassRegistry.RegisterSerializeOptions(GetCityResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDistrictRequest, 'http://www.n11.com/ws/schemas', 'GetDistrictRequest');
  RemClassRegistry.RegisterSerializeOptions(GetDistrictRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DistrictList), 'http://www.n11.com/ws/schemas', 'DistrictList');
  RemClassRegistry.RegisterXSClass(GetDistrictResponse, 'http://www.n11.com/ws/schemas', 'GetDistrictResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetDistrictResponse), 'districts', '[ArrayItemName="district"]');
  RemClassRegistry.RegisterSerializeOptions(GetDistrictResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNeighborhoodsRequest, 'http://www.n11.com/ws/schemas', 'GetNeighborhoodsRequest');
  RemClassRegistry.RegisterSerializeOptions(GetNeighborhoodsRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(CityList), 'http://www.n11.com/ws/schemas', 'CityList');
  RemClassRegistry.RegisterXSClass(GetCitiesResponse, 'http://www.n11.com/ws/schemas', 'GetCitiesResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetCitiesResponse), 'cities', '[ArrayItemName="city"]');
  RemClassRegistry.RegisterSerializeOptions(GetCitiesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DistrictData, 'http://www.n11.com/ws/schemas', 'DistrictData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DistrictData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(CityData, 'http://www.n11.com/ws/schemas', 'CityData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NeighborhoodListData), 'http://www.n11.com/ws/schemas', 'NeighborhoodListData');
  RemClassRegistry.RegisterXSClass(GetNeighborhoodsResponse, 'http://www.n11.com/ws/schemas', 'GetNeighborhoodsResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetNeighborhoodsResponse), 'neighborhoods', '[ArrayItemName="neighborhood"]');
  RemClassRegistry.RegisterSerializeOptions(GetNeighborhoodsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NeighborhoodData, 'http://www.n11.com/ws/schemas', 'NeighborhoodData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NeighborhoodData), 'name_', '[ExtName="name"]');

end.