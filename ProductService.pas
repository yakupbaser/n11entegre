// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/ProductService.wsdl
//  >Import : https://api.n11.com/ws/ProductService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (19.01.2020 10:19:44 - - $Rev: 96726 $)
// ************************************************************************ //

unit ProductService;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  UpdateProductPriceByIdResponse = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  SearchProductsRequest = class;                { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DeleteProductBySellerCodeResponse = class;    { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DeleteProductByIdResponse = class;            { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateProductPriceBySellerCodeResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DeleteProductByIdRequest = class;             { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  RequestPagingData    = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  PagingData           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetProductByProductIdRequest = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductListRequest = class;                { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductBySellerCodeResponse = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductByProductIdResponse = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  AdaptUnificationProductsResponse = class;     { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  AdaptUnificationProductsRequest = class;      { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  SaveProductAnswerResponse = class;            { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductQuestionDetailResponse = class;     { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateProductsByPimsResponse = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductApprovalStatusResponse = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductApprovalStatusRequest = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductQuestionDetailRequest = class;      { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateDiscountValueByProductIdRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateProductBasicResponse = class;           { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  SaveProductRequest   = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  SaveProductResponse  = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductQuestionListRequest = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateDiscountValueBySellerCodeResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateDiscountValueByProductIdResponse = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductQuestionListResponse = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductListResponse = class;               { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  SearchProductsResponse = class;               { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  CategoryRequest      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductQuestionSearch = class;                { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductQuestionDetail = class;                { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductQuestion      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductDiscountRequest = class;               { "http://www.n11.com/ws/schemas"[GblCplx] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  UpdateDiscountValueBySellerCodeRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  SaveProductAnswerRequest = class;             { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetProductBySellerCodeRequest = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  DeleteProductBySellerCodeRequest = class;     { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateProductsByPimsRequest = class;          { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductSkuBasicRequest = class;               { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSkuBasic      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductApprovalStatusApi = class;             { "http://www.n11.com/ws/schemas"[GblCplx] }
  Category             = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  DateRange            = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  UpdateProductBasicRequest = class;            { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ProductSkuList       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductDiscount      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  SpecialProductInfoApiModel = class;           { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSearch        = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductAttributeRequest = class;              { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductAttribute     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  SellerProductDiscount = class;                { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSku           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductImage         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductUpdateSkuBasicRequest = class;         { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSkuRequest    = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductRequest       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductBasic         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  Product              = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  UpdateProductPriceBySellerCodeRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  UpdateProductPriceByIdRequest = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }

  {$SCOPEDENUMS ON}
  { "http://www.n11.com/ws/schemas"[GblSmpl] }
  ProductQuestionStatus = (CLOSED, OPEN);

  { "http://www.n11.com/ws/schemas"[GblSmpl] }
  ProductStatus = (Active, Suspended, Prohibited);


  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : UpdateProductPriceByIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductPriceByIdResponse = class(TRemotable)
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
  // XML       : SearchProductsRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchProductsRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FpagingData: RequestPagingData;
    FproductSearch: ProductSearch;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:          Authentication     Index (IS_UNQL) read Fauth write Fauth;
    property pagingData:    RequestPagingData  Index (IS_UNQL) read FpagingData write FpagingData;
    property productSearch: ProductSearch      Index (IS_UNQL) read FproductSearch write FproductSearch;
  end;



  // ************************************************************************ //
  // XML       : DeleteProductBySellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteProductBySellerCodeResponse = class(TRemotable)
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
  // XML       : DeleteProductByIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteProductByIdResponse = class(TRemotable)
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
  // XML       : UpdateProductPriceBySellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductPriceBySellerCodeResponse = class(TRemotable)
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
  // XML       : DeleteProductByIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteProductByIdRequest = class(TRemotable)
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
  // XML       : RequestPagingData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  RequestPagingData = class(TRemotable)
  private
    FcurrentPage: Integer;
    FpageSize: Integer;
  published
    property currentPage: Integer  Index (IS_NLBL or IS_UNQL) read FcurrentPage write FcurrentPage;
    property pageSize:    Integer  Index (IS_NLBL or IS_UNQL) read FpageSize write FpageSize;
  end;



  // ************************************************************************ //
  // XML       : PagingData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  PagingData = class(TRemotable)
  private
    FcurrentPage: Integer;
    FpageSize: Integer;
    FtotalCount: Int64;
    FpageCount: Integer;
  published
    property currentPage: Integer  Index (IS_NLBL or IS_UNQL) read FcurrentPage write FcurrentPage;
    property pageSize:    Integer  Index (IS_NLBL or IS_UNQL) read FpageSize write FpageSize;
    property totalCount:  Int64    Index (IS_NLBL or IS_UNQL) read FtotalCount write FtotalCount;
    property pageCount:   Integer  Index (IS_NLBL or IS_UNQL) read FpageCount write FpageCount;
  end;



  // ************************************************************************ //
  // XML       : GetProductByProductIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductByProductIdRequest = class(TRemotable)
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
  // XML       : GetProductListRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductListRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FpagingData: RequestPagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication     Index (IS_UNQL) read Fauth write Fauth;
    property pagingData: RequestPagingData  Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : GetProductBySellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductBySellerCodeResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproduct: Product;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:  ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
    property product: Product     Index (IS_UNQL) read Fproduct write Fproduct;
  end;



  // ************************************************************************ //
  // XML       : GetProductByProductIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductByProductIdResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproduct: Product;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:  ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
    property product: Product     Index (IS_UNQL) read Fproduct write Fproduct;
  end;



  // ************************************************************************ //
  // XML       : AdaptUnificationProductsResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AdaptUnificationProductsResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : AdaptUnificationProductsRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AdaptUnificationProductsRequest = class(TRemotable)
  private
    Fauth: Authentication;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth: Authentication  Index (IS_UNQL) read Fauth write Fauth;
  end;



  // ************************************************************************ //
  // XML       : SaveProductAnswerResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SaveProductAnswerResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : GetProductQuestionDetailResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductQuestionDetailResponse = class(TRemotable)
  private
    FproductQuestion: ProductQuestionDetail;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property productQuestion: ProductQuestionDetail  Index (IS_UNQL) read FproductQuestion write FproductQuestion;
  end;



  // ************************************************************************ //
  // XML       : UpdateProductsByPimsResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductsByPimsResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : ProductApprovalStatusResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ProductApprovalStatusResponse = class(TRemotable)
  private
    Fresult: ProductApprovalStatusApi;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ProductApprovalStatusApi  Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : ProductApprovalStatusRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ProductApprovalStatusRequest = class(TRemotable)
  private
    Fauth: Authentication;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth: Authentication  Index (IS_UNQL) read Fauth write Fauth;
  end;



  // ************************************************************************ //
  // XML       : GetProductQuestionDetailRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductQuestionDetailRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductQuestionId: Int64;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:              Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property productQuestionId: Int64           Index (IS_UNQL) read FproductQuestionId write FproductQuestionId;
  end;



  // ************************************************************************ //
  // XML       : UpdateDiscountValueByProductIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateDiscountValueByProductIdRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductId: Int64;
    FproductDiscount: SellerProductDiscount;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:            Authentication         Index (IS_UNQL) read Fauth write Fauth;
    property productId:       Int64                  Index (IS_UNQL) read FproductId write FproductId;
    property productDiscount: SellerProductDiscount  Index (IS_UNQL) read FproductDiscount write FproductDiscount;
  end;



  // ************************************************************************ //
  // XML       : UpdateProductBasicResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductBasicResponse = class(TRemotable)
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
  // XML       : SaveProductRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SaveProductRequest = class(TRemotable)
  private
    Fauth: Authentication;
    Fproduct: ProductRequest;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:    Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property product: ProductRequest  Index (IS_UNQL) read Fproduct write Fproduct;
  end;



  // ************************************************************************ //
  // XML       : SaveProductResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SaveProductResponse = class(TRemotable)
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
  // XML       : GetProductQuestionListRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductQuestionListRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductQuestionSearch: ProductQuestionSearch;
    FpagingData: RequestPagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:                  Authentication         Index (IS_UNQL) read Fauth write Fauth;
    property productQuestionSearch: ProductQuestionSearch  Index (IS_UNQL) read FproductQuestionSearch write FproductQuestionSearch;
    property pagingData:            RequestPagingData      Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : UpdateDiscountValueBySellerCodeResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateDiscountValueBySellerCodeResponse = class(TRemotable)
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
  // XML       : UpdateDiscountValueByProductIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateDiscountValueByProductIdResponse = class(TRemotable)
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

  ProductAttributeRequestList = array of ProductAttributeRequest;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSkuRequestList = array of ProductSkuRequest;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductQuestionList = array of ProductQuestion;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetProductQuestionListResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductQuestionListResponse = class(TRemotable)
  private
    FproductQuestions: ProductQuestionList;
    FpagingData: PagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property productQuestions: ProductQuestionList  Index (IS_UNQL) read FproductQuestions write FproductQuestions;
    property pagingData:       PagingData           Index (IS_UNQL) read FpagingData write FpagingData;
  end;

  ProductBasicList = array of ProductBasic;     { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetProductListResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductListResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproducts: ProductBasicList;
    FpagingData: PagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo        Index (IS_UNQL) read Fresult write Fresult;
    property products:   ProductBasicList  Index (IS_UNQL) read Fproducts write Fproducts;
    property pagingData: PagingData        Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : SearchProductsResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SearchProductsResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fproducts: ProductBasicList;
    FpagingData: PagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo        Index (IS_UNQL) read Fresult write Fresult;
    property products:   ProductBasicList  Index (IS_UNQL) read Fproducts write Fproducts;
    property pagingData: PagingData        Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : CategoryRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CategoryRequest = class(TRemotable)
  private
    Fid: Int64;
  published
    property id: Int64  Index (IS_UNQL) read Fid write Fid;
  end;

  ProductSkuItemList = array of ProductSku;     { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductUpdateSkuBasicRequestItemList = array of ProductUpdateSkuBasicRequest;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  ProductSkuBasicRequestItemList = array of ProductSkuBasicRequest;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : ProductQuestionSearch, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductQuestionSearch = class(TRemotable)
  private
    FproductId: Int64;
    FbuyerEmail: string;
    Fsubject: string;
    Fstatus: ProductQuestionStatus;
    FquestionDate: string;
  published
    property productId:    Int64                  Index (IS_UNQL) read FproductId write FproductId;
    property buyerEmail:   string                 Index (IS_UNQL) read FbuyerEmail write FbuyerEmail;
    property subject:      string                 Index (IS_UNQL) read Fsubject write Fsubject;
    property status:       ProductQuestionStatus  Index (IS_UNQL) read Fstatus write Fstatus;
    property questionDate: string                 Index (IS_UNQL) read FquestionDate write FquestionDate;
  end;



  // ************************************************************************ //
  // XML       : ProductQuestionDetail, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductQuestionDetail = class(TRemotable)
  private
    FproductId: Int64;
    FproductTitle: string;
    FquestionSubject: string;
    Fquestion: string;
    Fanswer: string;
    FfullName: string;
    Femail: string;
    FproductStatus: string;
    Fstatus: string;
    FquestionDate: TXSDate;
    FansweredDate: TXSDate;
    FsellerExpose: string;
    FbuyerExpose: string;
  public
    destructor Destroy; override;
  published
    property productId:       Int64    Index (IS_UNQL) read FproductId write FproductId;
    property productTitle:    string   Index (IS_UNQL) read FproductTitle write FproductTitle;
    property questionSubject: string   Index (IS_UNQL) read FquestionSubject write FquestionSubject;
    property question:        string   Index (IS_UNQL) read Fquestion write Fquestion;
    property answer:          string   Index (IS_UNQL) read Fanswer write Fanswer;
    property fullName:        string   Index (IS_UNQL) read FfullName write FfullName;
    property email:           string   Index (IS_UNQL) read Femail write Femail;
    property productStatus:   string   Index (IS_UNQL) read FproductStatus write FproductStatus;
    property status:          string   Index (IS_UNQL) read Fstatus write Fstatus;
    property questionDate:    TXSDate  Index (IS_UNQL) read FquestionDate write FquestionDate;
    property answeredDate:    TXSDate  Index (IS_UNQL) read FansweredDate write FansweredDate;
    property sellerExpose:    string   Index (IS_UNQL) read FsellerExpose write FsellerExpose;
    property buyerExpose:     string   Index (IS_UNQL) read FbuyerExpose write FbuyerExpose;
  end;



  // ************************************************************************ //
  // XML       : ProductQuestion, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductQuestion = class(TRemotable)
  private
    Fid: Int64;
    FproductId: Int64;
    FproductTitle: string;
    FquestionSubject: string;
    Fquestion: string;
    Fanswer: string;
  published
    property id:              Int64   Index (IS_UNQL) read Fid write Fid;
    property productId:       Int64   Index (IS_UNQL) read FproductId write FproductId;
    property productTitle:    string  Index (IS_UNQL) read FproductTitle write FproductTitle;
    property questionSubject: string  Index (IS_UNQL) read FquestionSubject write FquestionSubject;
    property question:        string  Index (IS_UNQL) read Fquestion write Fquestion;
    property answer:          string  Index (IS_UNQL) read Fanswer write Fanswer;
  end;



  // ************************************************************************ //
  // XML       : ProductDiscountRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductDiscountRequest = class(TRemotable)
  private
    FstartDate: string;
    FendDate: string;
    Ftype_: string;
    Fvalue: string;
  published
    property startDate: string  Index (IS_UNQL) read FstartDate write FstartDate;
    property endDate:   string  Index (IS_UNQL) read FendDate write FendDate;
    property type_:     string  Index (IS_UNQL) read Ftype_ write Ftype_;
    property value:     string  Index (IS_UNQL) read Fvalue write Fvalue;
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
  // XML       : UpdateDiscountValueBySellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateDiscountValueBySellerCodeRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductSellerCode: string;
    FproductDiscount: SellerProductDiscount;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:              Authentication         Index (IS_UNQL) read Fauth write Fauth;
    property productSellerCode: string                 Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property productDiscount:   SellerProductDiscount  Index (IS_UNQL) read FproductDiscount write FproductDiscount;
  end;



  // ************************************************************************ //
  // XML       : SaveProductAnswerRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SaveProductAnswerRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductQuestionId: Int64;
    Fanswer: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:              Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property productQuestionId: Int64           Index (IS_UNQL) read FproductQuestionId write FproductQuestionId;
    property answer:            string          Index (IS_UNQL) read Fanswer write Fanswer;
  end;



  // ************************************************************************ //
  // XML       : GetProductBySellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetProductBySellerCodeRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FsellerCode: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property sellerCode: string          Index (IS_UNQL) read FsellerCode write FsellerCode;
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
  // XML       : DeleteProductBySellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteProductBySellerCodeRequest = class(TRemotable)
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

  ProductIdList = array of Int64;               { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : UpdateProductsByPimsRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductsByPimsRequest = class(TRemotable)
  private
    FproductIdList: ProductIdList;
  public
    constructor Create; override;
  published
    property productIdList: ProductIdList  Index (IS_UNQL) read FproductIdList write FproductIdList;
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
  // XML       : ProductApprovalStatusApi, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductApprovalStatusApi = class(TRemotable)
  private
    FapprovedCount: Int64;
    FunapprovedCount: Int64;
    FwaitingApprovalCount: Int64;
    FwaitingCount: Int64;
    FrejectedCount: Int64;
    FtotalCount: Int64;
  published
    property approvedCount:        Int64  Index (IS_UNQL) read FapprovedCount write FapprovedCount;
    property unapprovedCount:      Int64  Index (IS_UNQL) read FunapprovedCount write FunapprovedCount;
    property waitingApprovalCount: Int64  Index (IS_UNQL) read FwaitingApprovalCount write FwaitingApprovalCount;
    property waitingCount:         Int64  Index (IS_UNQL) read FwaitingCount write FwaitingCount;
    property rejectedCount:        Int64  Index (IS_UNQL) read FrejectedCount write FrejectedCount;
    property totalCount:           Int64  Index (IS_UNQL) read FtotalCount write FtotalCount;
  end;



  // ************************************************************************ //
  // XML       : Category, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  Category = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FfullName: string;
  published
    property id:       Int64   Index (IS_UNQL) read Fid write Fid;
    property name_:    string  Index (IS_UNQL) read Fname_ write Fname_;
    property fullName: string  Index (IS_UNQL) read FfullName write FfullName;
  end;



  // ************************************************************************ //
  // XML       : DateRange, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DateRange = class(TRemotable)
  private
    FstartDate: string;
    FendDate: string;
  published
    property startDate: string  Index (IS_UNQL) read FstartDate write FstartDate;
    property endDate:   string  Index (IS_UNQL) read FendDate write FendDate;
  end;

  ProductImageList = array of ProductImage;     { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : UpdateProductBasicRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductBasicRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductId: Int64;
    FproductSellerCode: string;
    Fprice: TXSDecimal;
    FproductDiscount: SellerProductDiscount;
    FstockItems: ProductUpdateSkuBasicRequestItemList;
    Fdescription: string;
    Fimages: ProductImageList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:              Authentication                        Index (IS_UNQL) read Fauth write Fauth;
    property productId:         Int64                                 Index (IS_UNQL) read FproductId write FproductId;
    property productSellerCode: string                                Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property price:             TXSDecimal                            Index (IS_UNQL) read Fprice write Fprice;
    property productDiscount:   SellerProductDiscount                 Index (IS_UNQL) read FproductDiscount write FproductDiscount;
    property stockItems:        ProductUpdateSkuBasicRequestItemList  Index (IS_UNQL) read FstockItems write FstockItems;
    property description:       string                                Index (IS_UNQL) read Fdescription write Fdescription;
    property images:            ProductImageList                      Index (IS_UNQL) read Fimages write Fimages;
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
  // XML       : ProductDiscount, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductDiscount = class(TRemotable)
  private
    FstartDate: string;
    FendDate: string;
    Ftype_: string;
    Fvalue: string;
    FmaxPurchaseCount: string;
  published
    property startDate:        string  Index (IS_UNQL) read FstartDate write FstartDate;
    property endDate:          string  Index (IS_UNQL) read FendDate write FendDate;
    property type_:            string  Index (IS_UNQL) read Ftype_ write Ftype_;
    property value:            string  Index (IS_UNQL) read Fvalue write Fvalue;
    property maxPurchaseCount: string  Index (IS_UNQL) read FmaxPurchaseCount write FmaxPurchaseCount;
  end;

  ProductAttributeList = array of ProductAttribute;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : SpecialProductInfoApiModel, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SpecialProductInfoApiModel = class(TRemotable)
  private
    Fkey: string;
    Fvalue: string;
  published
    property key:   string  Index (IS_UNQL) read Fkey write Fkey;
    property value: string  Index (IS_UNQL) read Fvalue write Fvalue;
  end;



  // ************************************************************************ //
  // XML       : ProductSearch, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductSearch = class(TRemotable)
  private
    Fname_: string;
    FsaleDate: DateRange;
    FapprovalStatus: ProductStatus;
    Fbundle: Boolean;
    Fmpn: string;
    Fgtin: string;
    Foem: string;
  public
    destructor Destroy; override;
  published
    property name_:          string         Index (IS_UNQL) read Fname_ write Fname_;
    property saleDate:       DateRange      Index (IS_UNQL) read FsaleDate write FsaleDate;
    property approvalStatus: ProductStatus  Index (IS_UNQL) read FapprovalStatus write FapprovalStatus;
    property bundle:         Boolean        Index (IS_NLBL or IS_UNQL) read Fbundle write Fbundle;
    property mpn:            string         Index (IS_NLBL or IS_UNQL) read Fmpn write Fmpn;
    property gtin:           string         Index (IS_NLBL or IS_UNQL) read Fgtin write Fgtin;
    property oem:            string         Index (IS_NLBL or IS_UNQL) read Foem write Foem;
  end;



  // ************************************************************************ //
  // XML       : ProductAttributeRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductAttributeRequest = class(TRemotable)
  private
    Fname_: string;
    Fvalue: string;
  published
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property value: string  Index (IS_UNQL) read Fvalue write Fvalue;
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

  SpecialProductInfoList = array of SpecialProductInfoApiModel;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : SellerProductDiscount, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SellerProductDiscount = class(TRemotable)
  private
    FdiscountType: Int64;
    FdiscountValue: Double;
    FdiscountStartDate: string;
    FdiscountEndDate: string;
  published
    property discountType:      Int64   Index (IS_UNQL) read FdiscountType write FdiscountType;
    property discountValue:     Double  Index (IS_UNQL) read FdiscountValue write FdiscountValue;
    property discountStartDate: string  Index (IS_UNQL) read FdiscountStartDate write FdiscountStartDate;
    property discountEndDate:   string  Index (IS_UNQL) read FdiscountEndDate write FdiscountEndDate;
  end;



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
  // XML       : ProductImage, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductImage = class(TRemotable)
  private
    Furl: string;
    Forder: Int64;
  published
    property url:   string  Index (IS_UNQL) read Furl write Furl;
    property order: Int64   Index (IS_UNQL) read Forder write Forder;
  end;



  // ************************************************************************ //
  // XML       : ProductUpdateSkuBasicRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductUpdateSkuBasicRequest = class(TRemotable)
  private
    FsellerStockCode: string;
    Fid: Int64;
    FoptionPrice: TXSDecimal;
    Fquantity: Int64;
  public
    destructor Destroy; override;
  published
    property sellerStockCode: string      Index (IS_UNQL) read FsellerStockCode write FsellerStockCode;
    property id:              Int64       Index (IS_UNQL) read Fid write Fid;
    property optionPrice:     TXSDecimal  Index (IS_UNQL) read FoptionPrice write FoptionPrice;
    property quantity:        Int64       Index (IS_UNQL) read Fquantity write Fquantity;
  end;



  // ************************************************************************ //
  // XML       : ProductSkuRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductSkuRequest = class(TRemotable)
  private
    Fbundle: Boolean;
    Fmpn: string;
    Fgtin: string;
    Foem: string;
    Fquantity: Int64;
    FsellerStockCode: string;
    Fattributes: ProductAttributeRequestList;
    FoptionPrice: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property bundle:          Boolean                      Index (IS_NLBL or IS_UNQL) read Fbundle write Fbundle;
    property mpn:             string                       Index (IS_NLBL or IS_UNQL) read Fmpn write Fmpn;
    property gtin:            string                       Index (IS_NLBL or IS_UNQL) read Fgtin write Fgtin;
    property oem:             string                       Index (IS_NLBL or IS_UNQL) read Foem write Foem;
    property quantity:        Int64                        Index (IS_UNQL) read Fquantity write Fquantity;
    property sellerStockCode: string                       Index (IS_UNQL) read FsellerStockCode write FsellerStockCode;
    property attributes:      ProductAttributeRequestList  Index (IS_UNQL) read Fattributes write Fattributes;
    property optionPrice:     TXSDecimal                   Index (IS_UNQL) read FoptionPrice write FoptionPrice;
  end;



  // ************************************************************************ //
  // XML       : ProductRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ProductRequest = class(TRemotable)
  private
    FproductSellerCode: string;
    Ftitle: string;
    Fsubtitle: string;
    Fdescription: string;
    Fdomestic: Boolean;
    Fcategory: CategoryRequest;
    FspecialProductInfoList: SpecialProductInfoList;
    Fprice: TXSDecimal;
    FcurrencyType: Int64;
    Fimages: ProductImageList;
    FapprovalStatus: Int64;
    Fattributes: ProductAttributeRequestList;
    FsaleStartDate: string;
    FsaleEndDate: string;
    FproductionDate: string;
    FexpirationDate: string;
    FproductCondition: string;
    FpreparingDay: Int64;
    Fdiscount: ProductDiscountRequest;
    FshipmentTemplate: string;
    FstockItems: ProductSkuRequestList;
  public
    destructor Destroy; override;
  published
    property productSellerCode:      string                       Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property title:                  string                       Index (IS_UNQL) read Ftitle write Ftitle;
    property subtitle:               string                       Index (IS_UNQL) read Fsubtitle write Fsubtitle;
    property description:            string                       Index (IS_UNQL) read Fdescription write Fdescription;
    property domestic:               Boolean                      Index (IS_UNQL) read Fdomestic write Fdomestic;
    property category:               CategoryRequest              Index (IS_UNQL) read Fcategory write Fcategory;
    property specialProductInfoList: SpecialProductInfoList       Index (IS_NLBL or IS_UNQL) read FspecialProductInfoList write FspecialProductInfoList;
    property price:                  TXSDecimal                   Index (IS_UNQL) read Fprice write Fprice;
    property currencyType:           Int64                        Index (IS_UNQL) read FcurrencyType write FcurrencyType;
    property images:                 ProductImageList             Index (IS_UNQL) read Fimages write Fimages;
    property approvalStatus:         Int64                        Index (IS_NLBL or IS_UNQL) read FapprovalStatus write FapprovalStatus;
    property attributes:             ProductAttributeRequestList  Index (IS_UNQL) read Fattributes write Fattributes;
    property saleStartDate:          string                       Index (IS_UNQL) read FsaleStartDate write FsaleStartDate;
    property saleEndDate:            string                       Index (IS_UNQL) read FsaleEndDate write FsaleEndDate;
    property productionDate:         string                       Index (IS_UNQL) read FproductionDate write FproductionDate;
    property expirationDate:         string                       Index (IS_UNQL) read FexpirationDate write FexpirationDate;
    property productCondition:       string                       Index (IS_UNQL) read FproductCondition write FproductCondition;
    property preparingDay:           Int64                        Index (IS_UNQL) read FpreparingDay write FpreparingDay;
    property discount:               ProductDiscountRequest       Index (IS_UNQL) read Fdiscount write Fdiscount;
    property shipmentTemplate:       string                       Index (IS_UNQL) read FshipmentTemplate write FshipmentTemplate;
    property stockItems:             ProductSkuRequestList        Index (IS_UNQL) read FstockItems write FstockItems;
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
  // XML       : Product, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  Product = class(TRemotable)
  private
    Fid: Int64;
    Ftitle: string;
    Fsubtitle: string;
    FdisplayPrice: TXSDecimal;
    Fprice: TXSDecimal;
    FproductSellerCode: string;
    Fdescription: string;
    Fcategory: Category;
    FspecialProductInfoList: SpecialProductInfoList;
    FpreparingDay: Int64;
    FsaleStartDate: string;
    FsaleEndDate: string;
    FproductCondition: string;
    FexpirationDate: string;
    Fimages: ProductImageList;
    FstockItems: ProductSkuList;
    Fdiscount: ProductDiscount;
    FshipmentTemplate: string;
    Fattributes: ProductAttributeList;
    FapprovalStatus: Int64;
    FsaleStatus: Int64;
    FcurrencyAmount: TXSDecimal;
    FcurrencyType: Int64;
  public
    destructor Destroy; override;
  published
    property id:                     Int64                   Index (IS_UNQL) read Fid write Fid;
    property title:                  string                  Index (IS_UNQL) read Ftitle write Ftitle;
    property subtitle:               string                  Index (IS_UNQL) read Fsubtitle write Fsubtitle;
    property displayPrice:           TXSDecimal              Index (IS_UNQL) read FdisplayPrice write FdisplayPrice;
    property price:                  TXSDecimal              Index (IS_UNQL) read Fprice write Fprice;
    property productSellerCode:      string                  Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property description:            string                  Index (IS_UNQL) read Fdescription write Fdescription;
    property category:               Category                Index (IS_UNQL) read Fcategory write Fcategory;
    property specialProductInfoList: SpecialProductInfoList  Index (IS_NLBL or IS_UNQL) read FspecialProductInfoList write FspecialProductInfoList;
    property preparingDay:           Int64                   Index (IS_UNQL) read FpreparingDay write FpreparingDay;
    property saleStartDate:          string                  Index (IS_UNQL) read FsaleStartDate write FsaleStartDate;
    property saleEndDate:            string                  Index (IS_UNQL) read FsaleEndDate write FsaleEndDate;
    property productCondition:       string                  Index (IS_UNQL) read FproductCondition write FproductCondition;
    property expirationDate:         string                  Index (IS_UNQL) read FexpirationDate write FexpirationDate;
    property images:                 ProductImageList        Index (IS_UNQL) read Fimages write Fimages;
    property stockItems:             ProductSkuList          Index (IS_UNQL) read FstockItems write FstockItems;
    property discount:               ProductDiscount         Index (IS_UNQL) read Fdiscount write Fdiscount;
    property shipmentTemplate:       string                  Index (IS_UNQL) read FshipmentTemplate write FshipmentTemplate;
    property attributes:             ProductAttributeList    Index (IS_NLBL or IS_UNQL) read Fattributes write Fattributes;
    property approvalStatus:         Int64                   Index (IS_NLBL or IS_UNQL) read FapprovalStatus write FapprovalStatus;
    property saleStatus:             Int64                   Index (IS_UNQL) read FsaleStatus write FsaleStatus;
    property currencyAmount:         TXSDecimal              Index (IS_UNQL) read FcurrencyAmount write FcurrencyAmount;
    property currencyType:           Int64                   Index (IS_UNQL) read FcurrencyType write FcurrencyType;
  end;



  // ************************************************************************ //
  // XML       : UpdateProductPriceBySellerCodeRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductPriceBySellerCodeRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductSellerCode: string;
    Fprice: TXSDecimal;
    FcurrencyType: Int64;
    FstockItems: ProductSkuBasicRequestItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:              Authentication                  Index (IS_UNQL) read Fauth write Fauth;
    property productSellerCode: string                          Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property price:             TXSDecimal                      Index (IS_UNQL) read Fprice write Fprice;
    property currencyType:      Int64                           Index (IS_UNQL) read FcurrencyType write FcurrencyType;
    property stockItems:        ProductSkuBasicRequestItemList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;



  // ************************************************************************ //
  // XML       : UpdateProductPriceByIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateProductPriceByIdRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FproductId: Int64;
    Fprice: TXSDecimal;
    FcurrencyType: Int64;
    FstockItems: ProductSkuBasicRequestItemList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:         Authentication                  Index (IS_UNQL) read Fauth write Fauth;
    property productId:    Int64                           Index (IS_UNQL) read FproductId write FproductId;
    property price:        TXSDecimal                      Index (IS_UNQL) read Fprice write Fprice;
    property currencyType: Int64                           Index (IS_UNQL) read FcurrencyType write FcurrencyType;
    property stockItems:   ProductSkuBasicRequestItemList  Index (IS_UNQL) read FstockItems write FstockItems;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ProductServicePortSoap11
  // service   : ProductServicePortService
  // port      : ProductServicePortSoap11
  // URL       : https://api.n11.com/ws/productService/
  // ************************************************************************ //
  ProductServicePort = interface(IInvokable)
  ['{1E58E4DB-87D1-FBDD-D13E-3C7EC49E4654}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetProductByProductId(const GetProductByProductIdRequest: GetProductByProductIdRequest): GetProductByProductIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetProductBySellerCode(const GetProductBySellerCodeRequest: GetProductBySellerCodeRequest): GetProductBySellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetProductList(const GetProductListRequest: GetProductListRequest): GetProductListResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SearchProducts(const SearchProductsRequest: SearchProductsRequest): SearchProductsResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateProductPriceById(const UpdateProductPriceByIdRequest: UpdateProductPriceByIdRequest): UpdateProductPriceByIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateProductPriceBySellerCode(const UpdateProductPriceBySellerCodeRequest: UpdateProductPriceBySellerCodeRequest): UpdateProductPriceBySellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  DeleteProductById(const DeleteProductByIdRequest: DeleteProductByIdRequest): DeleteProductByIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  DeleteProductBySellerCode(const DeleteProductBySellerCodeRequest: DeleteProductBySellerCodeRequest): DeleteProductBySellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  SaveProduct(const SaveProductRequest: SaveProductRequest): SaveProductResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateProductBasic(const UpdateProductBasicRequest: UpdateProductBasicRequest): UpdateProductBasicResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateDiscountValueByProductId(const UpdateDiscountValueByProductIdRequest: UpdateDiscountValueByProductIdRequest): UpdateDiscountValueByProductIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  UpdateDiscountValueBySellerCode(const UpdateDiscountValueBySellerCodeRequest: UpdateDiscountValueBySellerCodeRequest): UpdateDiscountValueBySellerCodeResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetProductQuestionList(const GetProductQuestionListRequest: GetProductQuestionListRequest): GetProductQuestionListResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  GetProductQuestionDetail(const GetProductQuestionDetailRequest: GetProductQuestionDetailRequest): GetProductQuestionDetailResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  SaveProductAnswer(const SaveProductAnswerRequest: SaveProductAnswerRequest): SaveProductAnswerResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  AdaptUnificationProducts(const AdaptUnificationProductsRequest: AdaptUnificationProductsRequest): AdaptUnificationProductsResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  ProductApprovalStatus(const ProductApprovalStatusRequest: ProductApprovalStatusRequest): ProductApprovalStatusResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  UpdateProductsByPims(const UpdateProductsByPimsRequest: UpdateProductsByPimsRequest): UpdateProductsByPimsResponse; stdcall;
  end;

function GetProductServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ProductServicePort;


implementation
  uses System.SysUtils;

function GetProductServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ProductServicePort;
const
  defWSDL = 'https://api.n11.com/ws/ProductService.wsdl';
  defURL  = 'https://api.n11.com/ws/productService/';
  defSvc  = 'ProductServicePortService';
  defPrt  = 'ProductServicePortSoap11';
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
    Result := (RIO as ProductServicePort);
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


constructor UpdateProductPriceByIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateProductPriceByIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor SearchProductsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchProductsRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FpagingData);
  System.SysUtils.FreeAndNil(FproductSearch);
  inherited Destroy;
end;

constructor DeleteProductBySellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteProductBySellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor DeleteProductByIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteProductByIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor UpdateProductPriceBySellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateProductPriceBySellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor DeleteProductByIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteProductByIdRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetProductByProductIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductByProductIdRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetProductListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor GetProductBySellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductBySellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor GetProductByProductIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductByProductIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor AdaptUnificationProductsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AdaptUnificationProductsResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor AdaptUnificationProductsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AdaptUnificationProductsRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor SaveProductAnswerResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SaveProductAnswerResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor GetProductQuestionDetailResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductQuestionDetailResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FproductQuestion);
  inherited Destroy;
end;

constructor UpdateProductsByPimsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateProductsByPimsResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor ProductApprovalStatusResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ProductApprovalStatusResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor ProductApprovalStatusRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ProductApprovalStatusRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetProductQuestionDetailRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductQuestionDetailRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor UpdateDiscountValueByProductIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateDiscountValueByProductIdRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FproductDiscount);
  inherited Destroy;
end;

constructor UpdateProductBasicResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateProductBasicResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor SaveProductRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SaveProductRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor SaveProductResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SaveProductResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor GetProductQuestionListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductQuestionListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FproductQuestionSearch);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor UpdateDiscountValueBySellerCodeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateDiscountValueBySellerCodeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor UpdateDiscountValueByProductIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateDiscountValueByProductIdResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fproduct);
  inherited Destroy;
end;

constructor GetProductQuestionListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductQuestionListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FproductQuestions)-1 do
    System.SysUtils.FreeAndNil(FproductQuestions[I]);
  System.SetLength(FproductQuestions, 0);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor GetProductListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproducts)-1 do
    System.SysUtils.FreeAndNil(Fproducts[I]);
  System.SetLength(Fproducts, 0);
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor SearchProductsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SearchProductsResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproducts)-1 do
    System.SysUtils.FreeAndNil(Fproducts[I]);
  System.SetLength(Fproducts, 0);
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

destructor ProductQuestionDetail.Destroy;
begin
  System.SysUtils.FreeAndNil(FquestionDate);
  System.SysUtils.FreeAndNil(FansweredDate);
  inherited Destroy;
end;

constructor UpdateDiscountValueBySellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateDiscountValueBySellerCodeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FproductDiscount);
  inherited Destroy;
end;

constructor SaveProductAnswerRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SaveProductAnswerRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetProductBySellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetProductBySellerCodeRequest.Destroy;
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

constructor DeleteProductBySellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DeleteProductBySellerCodeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor UpdateProductsByPimsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
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

constructor UpdateProductBasicRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateProductBasicRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  for I := 0 to System.Length(Fimages)-1 do
    System.SysUtils.FreeAndNil(Fimages[I]);
  System.SetLength(Fimages, 0);
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(FproductDiscount);
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

destructor ProductSearch.Destroy;
begin
  System.SysUtils.FreeAndNil(FsaleDate);
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

destructor ProductUpdateSkuBasicRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FoptionPrice);
  inherited Destroy;
end;

destructor ProductSkuRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  System.SysUtils.FreeAndNil(FoptionPrice);
  inherited Destroy;
end;

destructor ProductRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FspecialProductInfoList)-1 do
    System.SysUtils.FreeAndNil(FspecialProductInfoList[I]);
  System.SetLength(FspecialProductInfoList, 0);
  for I := 0 to System.Length(Fimages)-1 do
    System.SysUtils.FreeAndNil(Fimages[I]);
  System.SetLength(Fimages, 0);
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fcategory);
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(Fdiscount);
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

destructor Product.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FspecialProductInfoList)-1 do
    System.SysUtils.FreeAndNil(FspecialProductInfoList[I]);
  System.SetLength(FspecialProductInfoList, 0);
  for I := 0 to System.Length(Fimages)-1 do
    System.SysUtils.FreeAndNil(Fimages[I]);
  System.SetLength(Fimages, 0);
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  System.SysUtils.FreeAndNil(FdisplayPrice);
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(Fcategory);
  System.SysUtils.FreeAndNil(FstockItems);
  System.SysUtils.FreeAndNil(Fdiscount);
  System.SysUtils.FreeAndNil(FcurrencyAmount);
  inherited Destroy;
end;

constructor UpdateProductPriceBySellerCodeRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateProductPriceBySellerCodeRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fprice);
  inherited Destroy;
end;

constructor UpdateProductPriceByIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateProductPriceByIdRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FstockItems)-1 do
    System.SysUtils.FreeAndNil(FstockItems[I]);
  System.SetLength(FstockItems, 0);
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fprice);
  inherited Destroy;
end;

initialization
  { ProductServicePort }
  InvRegistry.RegisterInterface(TypeInfo(ProductServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ProductServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ProductServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ProductServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(UpdateProductPriceByIdResponse, 'http://www.n11.com/ws/schemas', 'UpdateProductPriceByIdResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductPriceByIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchProductsRequest, 'http://www.n11.com/ws/schemas', 'SearchProductsRequest');
  RemClassRegistry.RegisterSerializeOptions(SearchProductsRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteProductBySellerCodeResponse, 'http://www.n11.com/ws/schemas', 'DeleteProductBySellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteProductBySellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteProductByIdResponse, 'http://www.n11.com/ws/schemas', 'DeleteProductByIdResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteProductByIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateProductPriceBySellerCodeResponse, 'http://www.n11.com/ws/schemas', 'UpdateProductPriceBySellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductPriceBySellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteProductByIdRequest, 'http://www.n11.com/ws/schemas', 'DeleteProductByIdRequest');
  RemClassRegistry.RegisterSerializeOptions(DeleteProductByIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RequestPagingData, 'http://www.n11.com/ws/schemas', 'RequestPagingData');
  RemClassRegistry.RegisterXSClass(PagingData, 'http://www.n11.com/ws/schemas', 'PagingData');
  RemClassRegistry.RegisterXSClass(GetProductByProductIdRequest, 'http://www.n11.com/ws/schemas', 'GetProductByProductIdRequest');
  RemClassRegistry.RegisterSerializeOptions(GetProductByProductIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductListRequest, 'http://www.n11.com/ws/schemas', 'GetProductListRequest');
  RemClassRegistry.RegisterSerializeOptions(GetProductListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductBySellerCodeResponse, 'http://www.n11.com/ws/schemas', 'GetProductBySellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(GetProductBySellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductByProductIdResponse, 'http://www.n11.com/ws/schemas', 'GetProductByProductIdResponse');
  RemClassRegistry.RegisterSerializeOptions(GetProductByProductIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AdaptUnificationProductsResponse, 'http://www.n11.com/ws/schemas', 'AdaptUnificationProductsResponse');
  RemClassRegistry.RegisterSerializeOptions(AdaptUnificationProductsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AdaptUnificationProductsRequest, 'http://www.n11.com/ws/schemas', 'AdaptUnificationProductsRequest');
  RemClassRegistry.RegisterSerializeOptions(AdaptUnificationProductsRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SaveProductAnswerResponse, 'http://www.n11.com/ws/schemas', 'SaveProductAnswerResponse');
  RemClassRegistry.RegisterSerializeOptions(SaveProductAnswerResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductQuestionDetailResponse, 'http://www.n11.com/ws/schemas', 'GetProductQuestionDetailResponse');
  RemClassRegistry.RegisterSerializeOptions(GetProductQuestionDetailResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateProductsByPimsResponse, 'http://www.n11.com/ws/schemas', 'UpdateProductsByPimsResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductsByPimsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProductApprovalStatusResponse, 'http://www.n11.com/ws/schemas', 'ProductApprovalStatusResponse');
  RemClassRegistry.RegisterSerializeOptions(ProductApprovalStatusResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProductApprovalStatusRequest, 'http://www.n11.com/ws/schemas', 'ProductApprovalStatusRequest');
  RemClassRegistry.RegisterSerializeOptions(ProductApprovalStatusRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductQuestionDetailRequest, 'http://www.n11.com/ws/schemas', 'GetProductQuestionDetailRequest');
  RemClassRegistry.RegisterSerializeOptions(GetProductQuestionDetailRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateDiscountValueByProductIdRequest, 'http://www.n11.com/ws/schemas', 'UpdateDiscountValueByProductIdRequest');
  RemClassRegistry.RegisterSerializeOptions(UpdateDiscountValueByProductIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateProductBasicResponse, 'http://www.n11.com/ws/schemas', 'UpdateProductBasicResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductBasicResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SaveProductRequest, 'http://www.n11.com/ws/schemas', 'SaveProductRequest');
  RemClassRegistry.RegisterSerializeOptions(SaveProductRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SaveProductResponse, 'http://www.n11.com/ws/schemas', 'SaveProductResponse');
  RemClassRegistry.RegisterSerializeOptions(SaveProductResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductQuestionListRequest, 'http://www.n11.com/ws/schemas', 'GetProductQuestionListRequest');
  RemClassRegistry.RegisterSerializeOptions(GetProductQuestionListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateDiscountValueBySellerCodeResponse, 'http://www.n11.com/ws/schemas', 'UpdateDiscountValueBySellerCodeResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateDiscountValueBySellerCodeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateDiscountValueByProductIdResponse, 'http://www.n11.com/ws/schemas', 'UpdateDiscountValueByProductIdResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateDiscountValueByProductIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductAttributeRequestList), 'http://www.n11.com/ws/schemas', 'ProductAttributeRequestList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductSkuRequestList), 'http://www.n11.com/ws/schemas', 'ProductSkuRequestList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductQuestionList), 'http://www.n11.com/ws/schemas', 'ProductQuestionList');
  RemClassRegistry.RegisterXSClass(GetProductQuestionListResponse, 'http://www.n11.com/ws/schemas', 'GetProductQuestionListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetProductQuestionListResponse), 'productQuestions', '[ArrayItemName="productQuestion"]');
  RemClassRegistry.RegisterSerializeOptions(GetProductQuestionListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductBasicList), 'http://www.n11.com/ws/schemas', 'ProductBasicList');
  RemClassRegistry.RegisterXSClass(GetProductListResponse, 'http://www.n11.com/ws/schemas', 'GetProductListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetProductListResponse), 'products', '[ArrayItemName="product"]');
  RemClassRegistry.RegisterSerializeOptions(GetProductListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SearchProductsResponse, 'http://www.n11.com/ws/schemas', 'SearchProductsResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SearchProductsResponse), 'products', '[ArrayItemName="product"]');
  RemClassRegistry.RegisterSerializeOptions(SearchProductsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CategoryRequest, 'http://www.n11.com/ws/schemas', 'CategoryRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductSkuItemList), 'http://www.n11.com/ws/schemas', 'ProductSkuItemList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductUpdateSkuBasicRequestItemList), 'http://www.n11.com/ws/schemas', 'ProductUpdateSkuBasicRequestItemList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductSkuBasicRequestItemList), 'http://www.n11.com/ws/schemas', 'ProductSkuBasicRequestItemList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductQuestionStatus), 'http://www.n11.com/ws/schemas', 'ProductQuestionStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductStatus), 'http://www.n11.com/ws/schemas', 'ProductStatus');
  RemClassRegistry.RegisterXSClass(ProductQuestionSearch, 'http://www.n11.com/ws/schemas', 'ProductQuestionSearch');
  RemClassRegistry.RegisterXSClass(ProductQuestionDetail, 'http://www.n11.com/ws/schemas', 'ProductQuestionDetail');
  RemClassRegistry.RegisterXSClass(ProductQuestion, 'http://www.n11.com/ws/schemas', 'ProductQuestion');
  RemClassRegistry.RegisterXSClass(ProductDiscountRequest, 'http://www.n11.com/ws/schemas', 'ProductDiscountRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductDiscountRequest), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSClass(UpdateDiscountValueBySellerCodeRequest, 'http://www.n11.com/ws/schemas', 'UpdateDiscountValueBySellerCodeRequest');
  RemClassRegistry.RegisterSerializeOptions(UpdateDiscountValueBySellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SaveProductAnswerRequest, 'http://www.n11.com/ws/schemas', 'SaveProductAnswerRequest');
  RemClassRegistry.RegisterSerializeOptions(SaveProductAnswerRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetProductBySellerCodeRequest, 'http://www.n11.com/ws/schemas', 'GetProductBySellerCodeRequest');
  RemClassRegistry.RegisterSerializeOptions(GetProductBySellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(DeleteProductBySellerCodeRequest, 'http://www.n11.com/ws/schemas', 'DeleteProductBySellerCodeRequest');
  RemClassRegistry.RegisterSerializeOptions(DeleteProductBySellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductIdList), 'http://www.n11.com/ws/schemas', 'ProductIdList');
  RemClassRegistry.RegisterXSClass(UpdateProductsByPimsRequest, 'http://www.n11.com/ws/schemas', 'UpdateProductsByPimsRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpdateProductsByPimsRequest), 'productIdList', '[ArrayItemName="productId"]');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductsByPimsRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProductSkuBasicRequest, 'http://www.n11.com/ws/schemas', 'ProductSkuBasicRequest');
  RemClassRegistry.RegisterXSClass(ProductSkuBasic, 'http://www.n11.com/ws/schemas', 'ProductSkuBasic');
  RemClassRegistry.RegisterXSClass(ProductApprovalStatusApi, 'http://www.n11.com/ws/schemas', 'ProductApprovalStatusApi');
  RemClassRegistry.RegisterXSClass(Category, 'http://www.n11.com/ws/schemas', 'Category');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Category), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(DateRange, 'http://www.n11.com/ws/schemas', 'DateRange');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductImageList), 'http://www.n11.com/ws/schemas', 'ProductImageList');
  RemClassRegistry.RegisterXSClass(UpdateProductBasicRequest, 'http://www.n11.com/ws/schemas', 'UpdateProductBasicRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpdateProductBasicRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpdateProductBasicRequest), 'images', '[ArrayItemName="image"]');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductBasicRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ProductSkuList, 'http://www.n11.com/ws/schemas', 'ProductSkuList');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductSkuList), 'stockItem', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterXSClass(ProductDiscount, 'http://www.n11.com/ws/schemas', 'ProductDiscount');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductDiscount), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductAttributeList), 'http://www.n11.com/ws/schemas', 'ProductAttributeList');
  RemClassRegistry.RegisterXSClass(SpecialProductInfoApiModel, 'http://www.n11.com/ws/schemas', 'SpecialProductInfoApiModel');
  RemClassRegistry.RegisterXSClass(ProductSearch, 'http://www.n11.com/ws/schemas', 'ProductSearch');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductSearch), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(ProductAttributeRequest, 'http://www.n11.com/ws/schemas', 'ProductAttributeRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductAttributeRequest), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(ProductAttribute, 'http://www.n11.com/ws/schemas', 'ProductAttribute');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductAttribute), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SpecialProductInfoList), 'http://www.n11.com/ws/schemas', 'SpecialProductInfoList');
  RemClassRegistry.RegisterXSClass(SellerProductDiscount, 'http://www.n11.com/ws/schemas', 'SellerProductDiscount');
  RemClassRegistry.RegisterXSClass(ProductSku, 'http://www.n11.com/ws/schemas', 'ProductSku');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductSku), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterXSClass(ProductImage, 'http://www.n11.com/ws/schemas', 'ProductImage');
  RemClassRegistry.RegisterXSClass(ProductUpdateSkuBasicRequest, 'http://www.n11.com/ws/schemas', 'ProductUpdateSkuBasicRequest');
  RemClassRegistry.RegisterXSClass(ProductSkuRequest, 'http://www.n11.com/ws/schemas', 'ProductSkuRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductSkuRequest), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterXSClass(ProductRequest, 'http://www.n11.com/ws/schemas', 'ProductRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductRequest), 'specialProductInfoList', '[ArrayItemName="specialProductInfo"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductRequest), 'images', '[ArrayItemName="image"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductRequest), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ProductRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterXSClass(ProductBasic, 'http://www.n11.com/ws/schemas', 'ProductBasic');
  RemClassRegistry.RegisterXSClass(Product, 'http://www.n11.com/ws/schemas', 'Product');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Product), 'specialProductInfoList', '[ArrayItemName="specialProductInfo"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Product), 'images', '[ArrayItemName="image"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Product), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterXSClass(UpdateProductPriceBySellerCodeRequest, 'http://www.n11.com/ws/schemas', 'UpdateProductPriceBySellerCodeRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpdateProductPriceBySellerCodeRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductPriceBySellerCodeRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateProductPriceByIdRequest, 'http://www.n11.com/ws/schemas', 'UpdateProductPriceByIdRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpdateProductPriceByIdRequest), 'stockItems', '[ArrayItemName="stockItem"]');
  RemClassRegistry.RegisterSerializeOptions(UpdateProductPriceByIdRequest, [xoLiteralParam]);

end.