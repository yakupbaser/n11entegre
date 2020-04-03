// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/ProductStockService.wsdl
//  >Import : https://api.n11.com/ws/ProductStockService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (26.01.2020 15:32:11 - - $Rev: 96726 $)
// ************************************************************************ //

unit ProductStockService;

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
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  IncreaseStockByStockAttributesRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DeleteAndUpdateStockByStockAttributesRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductStockByProductSellerCodeResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductStockByProductIdResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  IncreaseStockByStockIdRequest = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductSkuBasicRequest = class;               { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetProductStockByProductSellerCodeRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  StockItem            = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetProductStockByProductIdRequest = class;    { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StockItemForAddStockWithId = class;           { "http://www.n11.com/ws/schemas"[GblCplx] }
  StockItemForUpdateStockWithId = class;        { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSkuBasic      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSku           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  UpdateStockByStockIdRequest = class;          { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StockAttribute       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  IncreaseStockByStockIdResponse = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  IncreaseStockByStockSellerCodeResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateStockByStockSellerCodeResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DeleteAndUpdateStockByStockAttributesResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateStockByStockIdResponse = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  IncreaseStockByStockAttributesResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductAttribute     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductWithIdAndStockAttributesForUpdate = class;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductWithIdAndStockAttributes = class;      { "http://www.n11.com/ws/schemas"[GblCplx] }
  IncreaseStockByStockSellerCodeRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StockItemForUpdateStockWithSellerStockCode = class;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  StockItemForAddStockWithSellerStockCode = class;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  UpdateStockByStockSellerCodeRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  StockItemForUpdateStockWithAttributes = class;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  StockItemForAddStockWithAttributes = class;   { "http://www.n11.com/ws/schemas"[GblCplx] }

  {$SCOPEDENUMS ON}
  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : IncreaseStockByStockAttributesRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IncreaseStockByStockAttributesRequest = class(TRemotable)
  private
    Fauth: Authentication;
    Fproduct: ProductWithIdAndStockAttributes;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:    Authentication                   Index (IS_UNQL) read Fauth write Fauth;
    property product: ProductWithIdAndStockAttributes  Index (IS_UNQL) read Fproduct write Fproduct;
  end;



  // ************************************************************************ //
  // XML       : DeleteAndUpdateStockByStockAttributesRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteAndUpdateStockByStockAttributesRequest = class(TRemotable)
  private
    Fauth: Authentication;
    Fproduct: ProductWithIdAndStockAttributesForUpdate;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:    Authentication                            Index (IS_UNQL) read Fauth write Fauth;
    property product: ProductWithIdAndStockAttributesForUpdate  Index (IS_UNQL) read Fproduct write Fproduct;
  end;

  ProductSkuItemList = array of ProductSku;     { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetProductStockByProductSellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductStockByProductSellerCodeResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: ProductSkuItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo          Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: ProductSkuItemList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : GetProductStockByProductIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductStockByProductIdResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: ProductSkuItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo          Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: ProductSkuItemList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;

  StockItemForAddStockWithIdList = array of StockItemForAddStockWithId;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : IncreaseStockByStockIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IncreaseStockByStockIdRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FstockItems: StockItemForAddStockWithIdList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication                  Index (IS_UNQL) read Fauth write Fauth;
    property stockItems: StockItemForAddStockWithIdList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;



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
  // XML       : GetProductStockByProductSellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductStockByProductSellerCodeRequest = class(TRemotable)
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
  // XML       : StockItem, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockItem = class(TRemotable)
  private
    Fid: Int64;
  published
    property id: Int64  Index (IS_UNQL) read Fid write Fid;
  end;



  // ************************************************************************ //
  // XML       : GetProductStockByProductIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductStockByProductIdRequest = class(TRemotable)
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
  // XML       : StockItemForAddStockWithId, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockItemForAddStockWithId = class(TRemotable)
  private
    Fid: Int64;
    FquantityToIncrease: Int64;
    Fversion: Int64;
  published
    property id:                 Int64  Index (IS_UNQL) read Fid write Fid;
    property quantityToIncrease: Int64  Index (IS_UNQL) read FquantityToIncrease write FquantityToIncrease;
    property version:            Int64  Index (IS_UNQL) read Fversion write Fversion;
  end;



  // ************************************************************************ //
  // XML       : StockItemForUpdateStockWithId, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockItemForUpdateStockWithId = class(TRemotable)
  private
    Fid: Int64;
    Fquantity: Int64;
    Fversion: Int64;
    Fdelist: Boolean;
  published
    property id:       Int64    Index (IS_UNQL) read Fid write Fid;
    property quantity: Int64    Index (IS_UNQL) read Fquantity write Fquantity;
    property version:  Int64    Index (IS_UNQL) read Fversion write Fversion;
    property delist:   Boolean  Index (IS_NLBL or IS_UNQL) read Fdelist write Fdelist;
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

  StockItemForUpdateStockWithIdList = array of StockItemForUpdateStockWithId;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : UpdateStockByStockIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateStockByStockIdRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FstockItems: StockItemForUpdateStockWithIdList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication                     Index (IS_UNQL) read Fauth write Fauth;
    property stockItems: StockItemForUpdateStockWithIdList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : StockAttribute, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockAttribute = class(TRemotable)
  private
    Fname_: string;
    Fvalue: string;
  published
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property value: string  Index (IS_UNQL) read Fvalue write Fvalue;
  end;

  StockItemForUpdateStockWithAttributesList = array of StockItemForUpdateStockWithAttributes;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  StockItemForAddStockWithAttributesList = array of StockItemForAddStockWithAttributes;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  StockItemList = array of StockItem;           { "http://www.n11.com/ws/schemas"[GblCplx] }
  Array_Of_StockItemList = array of StockItemList;   { "http://www.n11.com/ws/schemas"[GblUbnd] }


  // ************************************************************************ //
  // XML       : IncreaseStockByStockIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IncreaseStockByStockIdResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: Array_Of_StockItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo              Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: Array_Of_StockItemList  Index (IS_UNBD or IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : IncreaseStockByStockSellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IncreaseStockByStockSellerCodeResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: Array_Of_StockItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo              Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: Array_Of_StockItemList  Index (IS_UNBD or IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : UpdateStockByStockSellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateStockByStockSellerCodeResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: Array_Of_StockItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo              Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: Array_Of_StockItemList  Index (IS_UNBD or IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : DeleteAndUpdateStockByStockAttributesResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteAndUpdateStockByStockAttributesResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: Array_Of_StockItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo              Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: Array_Of_StockItemList  Index (IS_UNBD or IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : UpdateStockByStockIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateStockByStockIdResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: Array_Of_StockItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo              Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: Array_Of_StockItemList  Index (IS_UNBD or IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : IncreaseStockByStockAttributesResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IncreaseStockByStockAttributesResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FstockItems: Array_Of_StockItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo              Index (IS_UNQL) read Fresult write Fresult;
    property stockItems: Array_Of_StockItemList  Index (IS_UNBD or IS_UNQL) read FstockItems write FstockItems;
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



  // ************************************************************************ //
  // XML       : ProductWithIdAndStockAttributesForUpdate, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductWithIdAndStockAttributesForUpdate = class(TRemotable)
  private
    Fid: Int64;
    FstockItems: StockItemForUpdateStockWithAttributesList;
  public
    destructor Destroy; override;
  published
    property id:         Int64                                      Index (IS_UNQL) read Fid write Fid;
    property stockItems: StockItemForUpdateStockWithAttributesList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : ProductWithIdAndStockAttributes, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductWithIdAndStockAttributes = class(TRemotable)
  private
    Fid: Int64;
    FstockItems: StockItemForAddStockWithAttributesList;
  public
    destructor Destroy; override;
  published
    property id:         Int64                                   Index (IS_UNQL) read Fid write Fid;
    property stockItems: StockItemForAddStockWithAttributesList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;

  StockItemForAddStockWithSellerStockCodeList = array of StockItemForAddStockWithSellerStockCode;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : IncreaseStockByStockSellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  IncreaseStockByStockSellerCodeRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FstockItems: StockItemForAddStockWithSellerStockCodeList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication                               Index (IS_UNQL) read Fauth write Fauth;
    property stockItems: StockItemForAddStockWithSellerStockCodeList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : StockItemForUpdateStockWithSellerStockCode, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockItemForUpdateStockWithSellerStockCode = class(TRemotable)
  private
    FsellerStockCode: string;
    Fquantity: Int64;
    Fversion: Int64;
  published
    property sellerStockCode: string  Index (IS_UNQL) read FsellerStockCode write FsellerStockCode;
    property quantity:        Int64   Index (IS_UNQL) read Fquantity write Fquantity;
    property version:         Int64   Index (IS_UNQL) read Fversion write Fversion;
  end;



  // ************************************************************************ //
  // XML       : StockItemForAddStockWithSellerStockCode, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockItemForAddStockWithSellerStockCode = class(TRemotable)
  private
    FsellerStockCode: string;
    FquantityToIncrease: Int64;
    Fversion: Int64;
  published
    property sellerStockCode:    string  Index (IS_UNQL) read FsellerStockCode write FsellerStockCode;
    property quantityToIncrease: Int64   Index (IS_UNQL) read FquantityToIncrease write FquantityToIncrease;
    property version:            Int64   Index (IS_UNQL) read Fversion write Fversion;
  end;

  StockItemForUpdateStockWithSellerStockCodeList = array of StockItemForUpdateStockWithSellerStockCode;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : UpdateStockByStockSellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateStockByStockSellerCodeRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FstockItems: StockItemForUpdateStockWithSellerStockCodeList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication                                  Index (IS_UNQL) read Fauth write Fauth;
    property stockItems: StockItemForUpdateStockWithSellerStockCodeList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;

  StockAttributeList = array of StockAttribute;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : StockItemForUpdateStockWithAttributes, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockItemForUpdateStockWithAttributes = class(TRemotable)
  private
    Fattributes: StockAttributeList;
    Fquantity: Int64;
    Fversion: Int64;
  public
    destructor Destroy; override;
  published
    property attributes: StockAttributeList  Index (IS_UNQL) read Fattributes write Fattributes;
    property quantity:   Int64               Index (IS_UNQL) read Fquantity write Fquantity;
    property version:    Int64               Index (IS_UNQL) read Fversion write Fversion;
  end;



  // ************************************************************************ //
  // XML       : StockItemForAddStockWithAttributes, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  StockItemForAddStockWithAttributes = class(TRemotable)
  private
    Fattributes: StockAttributeList;
    FquantityToIncrease: Int64;
    Fversion: Int64;
  public
    destructor Destroy; override;
  published
    property attributes:         StockAttributeList  Index (IS_UNQL) read Fattributes write Fattributes;
    property quantityToIncrease: Int64               Index (IS_UNQL) read FquantityToIncrease write FquantityToIncrease;
    property version:            Int64               Index (IS_UNQL) read Fversion write Fversion;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ProductStockServicePortSoap11
  // service   : ProductStockServicePortService
  // port      : ProductStockServicePortSoap11
  // URL       : https://api.n11.com/ws/productStockService/
  // ************************************************************************ //
  ProductStockServicePort = interface(IInvokable)
  ['{B9645133-35FE-9C30-47C9-1D1AB8DB6F99}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetProductStockByProductId(const GetProductStockByProductIdRequest: GetProductStockByProductIdRequest): GetProductStockByProductIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetProductStockByProductSellerCode(const GetProductStockByProductSellerCodeRequest: GetProductStockByProductSellerCodeRequest): GetProductStockByProductSellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  IncreaseStockByStockId(const IncreaseStockByStockIdRequest: IncreaseStockByStockIdRequest): IncreaseStockByStockIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  IncreaseStockByStockSellerCode(const IncreaseStockByStockSellerCodeRequest: IncreaseStockByStockSellerCodeRequest): IncreaseStockByStockSellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  IncreaseStockByStockAttributes(const IncreaseStockByStockAttributesRequest: IncreaseStockByStockAttributesRequest): IncreaseStockByStockAttributesResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateStockByStockId(const UpdateStockByStockIdRequest: UpdateStockByStockIdRequest): UpdateStockByStockIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateStockByStockSellerCode(const UpdateStockByStockSellerCodeRequest: UpdateStockByStockSellerCodeRequest): UpdateStockByStockSellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  DeleteAndUpdateStockByStockAttributes(const DeleteAndUpdateStockByStockAttributesRequest: DeleteAndUpdateStockByStockAttributesRequest): DeleteAndUpdateStockByStockAttributesResponse; stdcall;
  end;

function GetProductStockServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ProductStockServicePort;


implementation
  uses System.SysUtils;

function GetProductStockServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ProductStockServicePort;
const
  defWSDL = 'https://api.n11.com/ws/ProductStockService.wsdl';
  defURL  = 'https://api.n11.com/ws/productStockService/';
  defSvc  = 'ProductStockServicePortService';
  defPrt  = 'ProductStockServicePortSoap11';
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
    Result := (RIO as ProductStockServicePort);
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


constructor IncreaseStockByStockAttributesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IncreaseStockByStockAttributesRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor DeleteAndUpdateStockByStockAttributesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteAndUpdateStockByStockAttributesRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor GetProductStockByProductSellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductStockByProductSellerCodeResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor GetProductStockByProductIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductStockByProductIdResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor IncreaseStockByStockIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IncreaseStockByStockIdRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

destructor ProductSkuBasicRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FoptionPrice);
  inherited Destroy;
end;

constructor GetProductStockByProductSellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductStockByProductSellerCodeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
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

constructor GetProductStockByProductIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductStockByProductIdRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

destructor ProductSkuBasic.Destroy;
begin
  System.SysUtils.FreeAndNil(FcurrencyAmount);
  System.SysUtils.FreeAndNil(FdisplayPrice);
  System.SysUtils.FreeAndNil(FoldOptionPrice);
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

constructor UpdateStockByStockIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateStockByStockIdRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor IncreaseStockByStockIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IncreaseStockByStockIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor IncreaseStockByStockSellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IncreaseStockByStockSellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor UpdateStockByStockSellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateStockByStockSellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor DeleteAndUpdateStockByStockAttributesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteAndUpdateStockByStockAttributesResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor UpdateStockByStockIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateStockByStockIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor IncreaseStockByStockAttributesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IncreaseStockByStockAttributesResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

destructor ProductWithIdAndStockAttributesForUpdate.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  inherited Destroy;
end;

destructor ProductWithIdAndStockAttributes.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  inherited Destroy;
end;

constructor IncreaseStockByStockSellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IncreaseStockByStockSellerCodeRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor UpdateStockByStockSellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateStockByStockSellerCodeRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

destructor StockItemForUpdateStockWithAttributes.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  inherited Destroy;
end;

destructor StockItemForAddStockWithAttributes.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  inherited Destroy;
end;

initialization
  { ProductStockServicePort }
  InvRegistry.RegisterInterface(TypeInfo(ProductStockServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ProductStockServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ProductStockServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ProductStockServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(IncreaseStockByStockAttributesRequest, 'http://www.n11.com/ws/schemas', 'IncreaseStockByStockAttributesRequest');
  RemClassRegistry.RegisterSerializeOptions(IncreaseStockByStockAttributesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteAndUpdateStockByStockAttributesRequest, 'http://www.n11.com/ws/schemas', 'DeleteAndUpdateStockByStockAttributesRequest');
  RemClassRegistry.RegisterSerializeOptions(DeleteAndUpdateStockByStockAttributesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductSkuItemList), 'http://www.n11.com/ws/schemas', 'ProductSkuItemList');
  RemClassRegistry.RegisterXSClass(GetProductStockByProductSellerCodeResponse, 'http://www.n11.com/ws/schemas', 'GetProductStockByProductSellerCodeResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetProductStockByProductSellerCodeResponse), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(GetProductStockByProductSellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductStockByProductIdResponse, 'http://www.n11.com/ws/schemas', 'GetProductStockByProductIdResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetProductStockByProductIdResponse), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(GetProductStockByProductIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockItemForAddStockWithIdList), 'http://www.n11.com/ws/schemas', 'StockItemForAddStockWithIdList');
  RemClassRegistry.RegisterXSClass(IncreaseStockByStockIdRequest, 'http://www.n11.com/ws/schemas', 'IncreaseStockByStockIdRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IncreaseStockByStockIdRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(IncreaseStockByStockIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProductSkuBasicRequest, 'http://www.n11.com/ws/schemas', 'ProductSkuBasicRequest');
  RemClassRegistry.RegisterXSClass(GetProductStockByProductSellerCodeRequest, 'http://www.n11.com/ws/schemas', 'GetProductStockByProductSellerCodeRequest');
  RemClassRegistry.RegisterSerializeOptions(GetProductStockByProductSellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(StockItem, 'http://www.n11.com/ws/schemas', 'StockItem');
  RemClassRegistry.RegisterXSClass(GetProductStockByProductIdRequest, 'http://www.n11.com/ws/schemas', 'GetProductStockByProductIdRequest');
  RemClassRegistry.RegisterSerializeOptions(GetProductStockByProductIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StockItemForAddStockWithId, 'http://www.n11.com/ws/schemas', 'StockItemForAddStockWithId');
  RemClassRegistry.RegisterXSClass(StockItemForUpdateStockWithId, 'http://www.n11.com/ws/schemas', 'StockItemForUpdateStockWithId');
  RemClassRegistry.RegisterXSClass(ProductSkuBasic, 'http://www.n11.com/ws/schemas', 'ProductSkuBasic');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductAttributeList), 'http://www.n11.com/ws/schemas', 'ProductAttributeList');
  RemClassRegistry.RegisterXSClass(ProductSku, 'http://www.n11.com/ws/schemas', 'ProductSku');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductSku), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockItemForUpdateStockWithIdList), 'http://www.n11.com/ws/schemas', 'StockItemForUpdateStockWithIdList');
  RemClassRegistry.RegisterXSClass(UpdateStockByStockIdRequest, 'http://www.n11.com/ws/schemas', 'UpdateStockByStockIdRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpdateStockByStockIdRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(UpdateStockByStockIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StockAttribute, 'http://www.n11.com/ws/schemas', 'StockAttribute');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StockAttribute), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockItemForUpdateStockWithAttributesList), 'http://www.n11.com/ws/schemas', 'StockItemForUpdateStockWithAttributesList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockItemForAddStockWithAttributesList), 'http://www.n11.com/ws/schemas', 'StockItemForAddStockWithAttributesList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockItemList), 'http://www.n11.com/ws/schemas', 'StockItemList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_StockItemList), 'http://www.n11.com/ws/schemas', 'Array_Of_StockItemList');
  RemClassRegistry.RegisterXSClass(IncreaseStockByStockIdResponse, 'http://www.n11.com/ws/schemas', 'IncreaseStockByStockIdResponse');
  RemClassRegistry.RegisterSerializeOptions(IncreaseStockByStockIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IncreaseStockByStockSellerCodeResponse, 'http://www.n11.com/ws/schemas', 'IncreaseStockByStockSellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(IncreaseStockByStockSellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateStockByStockSellerCodeResponse, 'http://www.n11.com/ws/schemas', 'UpdateStockByStockSellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateStockByStockSellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteAndUpdateStockByStockAttributesResponse, 'http://www.n11.com/ws/schemas', 'DeleteAndUpdateStockByStockAttributesResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteAndUpdateStockByStockAttributesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateStockByStockIdResponse, 'http://www.n11.com/ws/schemas', 'UpdateStockByStockIdResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateStockByStockIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IncreaseStockByStockAttributesResponse, 'http://www.n11.com/ws/schemas', 'IncreaseStockByStockAttributesResponse');
  RemClassRegistry.RegisterSerializeOptions(IncreaseStockByStockAttributesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProductAttribute, 'http://www.n11.com/ws/schemas', 'ProductAttribute');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductAttribute), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(ProductWithIdAndStockAttributesForUpdate, 'http://www.n11.com/ws/schemas', 'ProductWithIdAndStockAttributesForUpdate');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductWithIdAndStockAttributesForUpdate), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterXSClass(ProductWithIdAndStockAttributes, 'http://www.n11.com/ws/schemas', 'ProductWithIdAndStockAttributes');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductWithIdAndStockAttributes), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockItemForAddStockWithSellerStockCodeList), 'http://www.n11.com/ws/schemas', 'StockItemForAddStockWithSellerStockCodeList');
  RemClassRegistry.RegisterXSClass(IncreaseStockByStockSellerCodeRequest, 'http://www.n11.com/ws/schemas', 'IncreaseStockByStockSellerCodeRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IncreaseStockByStockSellerCodeRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(IncreaseStockByStockSellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StockItemForUpdateStockWithSellerStockCode, 'http://www.n11.com/ws/schemas', 'StockItemForUpdateStockWithSellerStockCode');
  RemClassRegistry.RegisterXSClass(StockItemForAddStockWithSellerStockCode, 'http://www.n11.com/ws/schemas', 'StockItemForAddStockWithSellerStockCode');
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockItemForUpdateStockWithSellerStockCodeList), 'http://www.n11.com/ws/schemas', 'StockItemForUpdateStockWithSellerStockCodeList');
  RemClassRegistry.RegisterXSClass(UpdateStockByStockSellerCodeRequest, 'http://www.n11.com/ws/schemas', 'UpdateStockByStockSellerCodeRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpdateStockByStockSellerCodeRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(UpdateStockByStockSellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(StockAttributeList), 'http://www.n11.com/ws/schemas', 'StockAttributeList');
  RemClassRegistry.RegisterXSClass(StockItemForUpdateStockWithAttributes, 'http://www.n11.com/ws/schemas', 'StockItemForUpdateStockWithAttributes');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StockItemForUpdateStockWithAttributes), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterXSClass(StockItemForAddStockWithAttributes, 'http://www.n11.com/ws/schemas', 'StockItemForAddStockWithAttributes');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StockItemForAddStockWithAttributes), 'attributes', '[ArrayItemName="attribute"]');

end.