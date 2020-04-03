// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/ProductSellingService.wsdl
//  >Import : https://api.n11.com/ws/ProductSellingService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (25.01.2020 19:40:41 - - $Rev: 96726 $)
// ************************************************************************ //

unit ProductSellingService;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  StartSellingProductBySellerCodeResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StopSellingProductBySellerCodeResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StartSellingProductBySellerCodeRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StopSellingProductBySellerCodeRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StartSellingProductByProductIdResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StopSellingProductByProductIdResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductSkuBasicRequest = class;               { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSkuBasic      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductBasic         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  StartSellingProductByProductIdRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StopSellingProductByProductIdRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductAttribute     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSku           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSkuList       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }

  {$SCOPEDENUMS ON}
  {$SCOPEDENUMS OFF}



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
  // XML       : StartSellingProductBySellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartSellingProductBySellerCodeResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproduct: ProductBasic;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:  ResultInfo    Index (IS_UNQL) read Fresult write Fresult;
    property product: ProductBasic  Index (IS_UNQL) read Fproduct write Fproduct;
  end;



  // ************************************************************************ //
  // XML       : StopSellingProductBySellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StopSellingProductBySellerCodeResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproduct: ProductBasic;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:  ResultInfo    Index (IS_UNQL) read Fresult write Fresult;
    property product: ProductBasic  Index (IS_UNQL) read Fproduct write Fproduct;
  end;



  // ************************************************************************ //
  // XML       : StartSellingProductBySellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartSellingProductBySellerCodeRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductSellerCode: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:              Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property productSellerCode: string          Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
  end;



  // ************************************************************************ //
  // XML       : StopSellingProductBySellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StopSellingProductBySellerCodeRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductSellerCode: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:              Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property productSellerCode: string          Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
  end;



  // ************************************************************************ //
  // XML       : StartSellingProductByProductIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartSellingProductByProductIdResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproduct: ProductBasic;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:  ResultInfo    Index (IS_UNQL) read Fresult write Fresult;
    property product: ProductBasic  Index (IS_UNQL) read Fproduct write Fproduct;
  end;



  // ************************************************************************ //
  // XML       : StopSellingProductByProductIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StopSellingProductByProductIdResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproduct: ProductBasic;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:  ResultInfo    Index (IS_UNQL) read Fresult write Fresult;
    property product: ProductBasic  Index (IS_UNQL) read Fproduct write Fproduct;
  end;

  ProductSkuItemList = array of ProductSku;     { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : ProductSkuBasicRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductSkuBasicRequest = class(TRemotable)
  private
    FsellerStockCode: string;
    FoptionPrice: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property sellerStockCode: string      Index (IS_UNQL) read FsellerStockCode write FsellerStockCode;
    property optionPrice:     TXSDecimal  Index (IS_UNQL) read FoptionPrice write FoptionPrice;
  end;



  // ************************************************************************ //
  // XML       : ProductSkuBasic, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductSkuBasic = class(ProductSkuBasicRequest)
  private
    FcurrencyAmount: TXSDecimal;
    FdisplayPrice: TXSDecimal;
    FoldOptionPrice: TXSDecimal;
    Fgtin: string;
    Fmpn: string;
    Foem: string;
    Fbundle: Boolean;
  public
    destructor Destroy; override;
  published
    property currencyAmount: TXSDecimal  Index (IS_UNQL) read FcurrencyAmount write FcurrencyAmount;
    property displayPrice:   TXSDecimal  Index (IS_UNQL) read FdisplayPrice write FdisplayPrice;
    property oldOptionPrice: TXSDecimal  Index (IS_UNQL) read FoldOptionPrice write FoldOptionPrice;
    property gtin:           string      Index (IS_UNQL) read Fgtin write Fgtin;
    property mpn:            string      Index (IS_UNQL) read Fmpn write Fmpn;
    property oem:            string      Index (IS_UNQL) read Foem write Foem;
    property bundle:         Boolean     Index (IS_UNQL) read Fbundle write Fbundle;
  end;



  // ************************************************************************ //
  // XML       : ProductBasic, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductBasic = class(TRemotable)
  private
    Fid: Int64;
    FproductSellerCode: string;
    Ftitle: string;
    Fsubtitle: string;
    Fprice: TXSDecimal;
    FdisplayPrice: TXSDecimal;
    FisDomestic: Boolean;
    FsaleStatus: Int64;
    FapprovalStatus: Int64;
    FstockItems: ProductSkuList;
    FoldPrice: TXSDecimal;
    FcurrencyAmount: TXSDecimal;
    FcurrencyType: Int64;
  public
    destructor Destroy; override;
  published
    property id:                Int64           Index (IS_UNQL) read Fid write Fid;
    property productSellerCode: string          Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property title:             string          Index (IS_UNQL) read Ftitle write Ftitle;
    property subtitle:          string          Index (IS_UNQL) read Fsubtitle write Fsubtitle;
    property price:             TXSDecimal      Index (IS_UNQL) read Fprice write Fprice;
    property displayPrice:      TXSDecimal      Index (IS_UNQL) read FdisplayPrice write FdisplayPrice;
    property isDomestic:        Boolean         Index (IS_UNQL) read FisDomestic write FisDomestic;
    property saleStatus:        Int64           Index (IS_UNQL) read FsaleStatus write FsaleStatus;
    property approvalStatus:    Int64           Index (IS_NLBL or IS_UNQL) read FapprovalStatus write FapprovalStatus;
    property stockItems:        ProductSkuList  Index (IS_UNQL) read FstockItems write FstockItems;
    property oldPrice:          TXSDecimal      Index (IS_UNQL) read FoldPrice write FoldPrice;
    property currencyAmount:    TXSDecimal      Index (IS_UNQL) read FcurrencyAmount write FcurrencyAmount;
    property currencyType:      Int64           Index (IS_UNQL) read FcurrencyType write FcurrencyType;
  end;



  // ************************************************************************ //
  // XML       : StartSellingProductByProductIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartSellingProductByProductIdRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductId: Int64;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:      Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property productId: Int64           Index (IS_UNQL) read FproductId write FproductId;
  end;



  // ************************************************************************ //
  // XML       : StopSellingProductByProductIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StopSellingProductByProductIdRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductId: Int64;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:      Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property productId: Int64           Index (IS_UNQL) read FproductId write FproductId;
  end;



  // ************************************************************************ //
  // XML       : ProductAttribute, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductAttribute = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    Fvalue: string;
  published
    property id:    Int64   Index (IS_UNQL) read Fid write Fid;
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property value: string  Index (IS_UNQL) read Fvalue write Fvalue;
  end;

  ProductAttributeList = array of ProductAttribute;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : ProductSku, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductSku = class(ProductSkuBasic)
  private
    Fid: Int64;
    Fversion: Int64;
    Fquantity: Int64;
    Fattributes: ProductAttributeList;
  public
    destructor Destroy; override;
  published
    property id:         Int64                 Index (IS_UNQL) read Fid write Fid;
    property version:    Int64                 Index (IS_UNQL) read Fversion write Fversion;
    property quantity:   Int64                 Index (IS_UNQL) read Fquantity write Fquantity;
    property attributes: ProductAttributeList  Index (IS_UNQL) read Fattributes write Fattributes;
  end;



  // ************************************************************************ //
  // XML       : ProductSkuList, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductSkuList = class(TRemotable)
  private
    Fid: Int64;
    FstockItem: ProductSkuItemList;
    FproductSellerCode: string;
  public
    destructor Destroy; override;
  published
    property id:                Int64               Index (IS_UNQL) read Fid write Fid;
    property stockItem:         ProductSkuItemList  Index (IS_UNBD or IS_UNQL) read FstockItem write FstockItem;
    property productSellerCode: string              Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ProductSellingServicePortSoap11
  // service   : ProductSellingServicePortService
  // port      : ProductSellingServicePortSoap11
  // URL       : https://api.n11.com/ws/productSellingService/
  // ************************************************************************ //
  ProductSellingServicePort = interface(IInvokable)
  ['{B4E81992-3251-3539-9E82-55FDBB65D684}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  StopSellingProductByProductId(const StopSellingProductByProductIdRequest: StopSellingProductByProductIdRequest): StopSellingProductByProductIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  StopSellingProductBySellerCode(const StopSellingProductBySellerCodeRequest: StopSellingProductBySellerCodeRequest): StopSellingProductBySellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  StartSellingProductByProductId(const StartSellingProductByProductIdRequest: StartSellingProductByProductIdRequest): StartSellingProductByProductIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  StartSellingProductBySellerCode(const StartSellingProductBySellerCodeRequest: StartSellingProductBySellerCodeRequest): StartSellingProductBySellerCodeResponse; stdcall;
  end;

function GetProductSellingServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ProductSellingServicePort;


implementation
  uses System.SysUtils;

function GetProductSellingServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ProductSellingServicePort;
const
  defWSDL = 'https://api.n11.com/ws/ProductSellingService.wsdl';
  defURL  = 'https://api.n11.com/ws/productSellingService/';
  defSvc  = 'ProductSellingServicePortService';
  defPrt  = 'ProductSellingServicePortSoap11';
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
    Result := (RIO as ProductSellingServicePort);
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

constructor StartSellingProductBySellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StartSellingProductBySellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor StopSellingProductBySellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StopSellingProductBySellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor StartSellingProductBySellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StartSellingProductBySellerCodeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor StopSellingProductBySellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StopSellingProductBySellerCodeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor StartSellingProductByProductIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StartSellingProductByProductIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor StopSellingProductByProductIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StopSellingProductByProductIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

destructor ProductSkuBasicRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FoptionPrice);
  inherited Destroy;
end;

destructor ProductSkuBasic.Destroy;
begin
  System.SysUtils.FreeAndNil(FcurrencyAmount);
  System.SysUtils.FreeAndNil(FdisplayPrice);
  System.SysUtils.FreeAndNil(FoldOptionPrice);
  inherited Destroy;
end;

destructor ProductBasic.Destroy;
begin
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(FdisplayPrice);
  System.SysUtils.FreeAndNil(FstockItems);
  System.SysUtils.FreeAndNil(FoldPrice);
  System.SysUtils.FreeAndNil(FcurrencyAmount);
  inherited Destroy;
end;

constructor StartSellingProductByProductIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StartSellingProductByProductIdRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor StopSellingProductByProductIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StopSellingProductByProductIdRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

destructor ProductSku.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  inherited Destroy;
end;

destructor ProductSkuList.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItem)-1 do
    System.SysUtils.FreeAndNil(FstockItem[I]);
  System.SetLength(FstockItem, 0);
  inherited Destroy;
end;

initialization
  { ProductSellingServicePort }
  InvRegistry.RegisterInterface(TypeInfo(ProductSellingServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ProductSellingServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ProductSellingServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ProductSellingServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSClass(StartSellingProductBySellerCodeResponse, 'http://www.n11.com/ws/schemas', 'StartSellingProductBySellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(StartSellingProductBySellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StopSellingProductBySellerCodeResponse, 'http://www.n11.com/ws/schemas', 'StopSellingProductBySellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(StopSellingProductBySellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StartSellingProductBySellerCodeRequest, 'http://www.n11.com/ws/schemas', 'StartSellingProductBySellerCodeRequest');
  RemClassRegistry.RegisterSerializeOptions(StartSellingProductBySellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StopSellingProductBySellerCodeRequest, 'http://www.n11.com/ws/schemas', 'StopSellingProductBySellerCodeRequest');
  RemClassRegistry.RegisterSerializeOptions(StopSellingProductBySellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StartSellingProductByProductIdResponse, 'http://www.n11.com/ws/schemas', 'StartSellingProductByProductIdResponse');
  RemClassRegistry.RegisterSerializeOptions(StartSellingProductByProductIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StopSellingProductByProductIdResponse, 'http://www.n11.com/ws/schemas', 'StopSellingProductByProductIdResponse');
  RemClassRegistry.RegisterSerializeOptions(StopSellingProductByProductIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductSkuItemList), 'http://www.n11.com/ws/schemas', 'ProductSkuItemList');
  RemClassRegistry.RegisterXSClass(ProductSkuBasicRequest, 'http://www.n11.com/ws/schemas', 'ProductSkuBasicRequest');
  RemClassRegistry.RegisterXSClass(ProductSkuBasic, 'http://www.n11.com/ws/schemas', 'ProductSkuBasic');
  RemClassRegistry.RegisterXSClass(ProductBasic, 'http://www.n11.com/ws/schemas', 'ProductBasic');
  RemClassRegistry.RegisterXSClass(StartSellingProductByProductIdRequest, 'http://www.n11.com/ws/schemas', 'StartSellingProductByProductIdRequest');
  RemClassRegistry.RegisterSerializeOptions(StartSellingProductByProductIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StopSellingProductByProductIdRequest, 'http://www.n11.com/ws/schemas', 'StopSellingProductByProductIdRequest');
  RemClassRegistry.RegisterSerializeOptions(StopSellingProductByProductIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProductAttribute, 'http://www.n11.com/ws/schemas', 'ProductAttribute');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductAttribute), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductAttributeList), 'http://www.n11.com/ws/schemas', 'ProductAttributeList');
  RemClassRegistry.RegisterXSClass(ProductSku, 'http://www.n11.com/ws/schemas', 'ProductSku');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductSku), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterXSClass(ProductSkuList, 'http://www.n11.com/ws/schemas', 'ProductSkuList');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductSkuList), 'stockItem', '[ArrayItemName="stockItem"]');

end.