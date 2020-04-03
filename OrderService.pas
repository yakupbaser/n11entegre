// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/OrderService.wsdl
//  >Import : https://api.n11.com/ws/OrderService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (26.01.2020 18:33:20 - - $Rev: 96726 $)
// ************************************************************************ //

unit OrderService;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  OrderDetailRequest   = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  MakeOrderItemShipmentResponse = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  OrderItemRejectResponse = class;              { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ComplementaryItemDetailResponse = class;      { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  OrderDetailResponse  = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DetailedOrderListRequest = class;             { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  OrderListRequest     = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  OrderItemAcceptResponse = class;              { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DetailedOrderListResponse = class;            { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  RequestPagingData    = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  AddressModel         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  BuyerWithTaxFields   = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderItemDataRequest = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ShipmentCompanyRequest = class;               { "http://www.n11.com/ws/schemas"[GblCplx] }
  ShipmentCompanyData  = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  PagingData           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  BillingTemplate      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderData            = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ServiceOrderItemData = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ItemWithComplementaryData = class;            { "http://www.n11.com/ws/schemas"[GblCplx] }
  DetailedOrderData    = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  BuyerAddressData     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderDetailData      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  SkuAttribute         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderSearchData      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderItemShipmentInfo = class;                { "http://www.n11.com/ws/schemas"[GblCplx] }
  MakeShipmentInfoRequest = class;              { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderItemShipmentRequest = class;             { "http://www.n11.com/ws/schemas"[GblCplx] }
  MakeOrderItemShipmentRequest = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  CustomTextOptionsData = class;                { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderListResponse    = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  OrderItemRejectRequest = class;               { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  OrderDataRequest     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderItemAcceptRequest = class;               { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ComplementaryItemDetailRequest = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  OrderItemData        = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderSearchPeriod    = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderDataListRequest = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }

  DetailedOrderItemDataList = array of OrderItemData;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  DetailedOrderDataList = array of DetailedOrderData;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  ItemWithComplementaryList = array of ItemWithComplementaryData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrderDetailRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderDetailRequest = class(TRemotable)
  private
    Fauth: Authentication;
    ForderRequest: OrderDataRequest;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:         Authentication    Index (IS_UNQL) read Fauth write Fauth;
    property orderRequest: OrderDataRequest  Index (IS_UNQL) read ForderRequest write ForderRequest;
  end;



  // ************************************************************************ //
  // XML       : MakeOrderItemShipmentResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MakeOrderItemShipmentResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    ForderItemList: DetailedOrderItemDataList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:        ResultInfo                 Index (IS_UNQL) read Fresult write Fresult;
    property orderItemList: DetailedOrderItemDataList  Index (IS_UNQL) read ForderItemList write ForderItemList;
  end;



  // ************************************************************************ //
  // XML       : OrderItemRejectResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderItemRejectResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    ForderItemList: DetailedOrderItemDataList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:        ResultInfo                 Index (IS_UNQL) read Fresult write Fresult;
    property orderItemList: DetailedOrderItemDataList  Index (IS_UNQL) read ForderItemList write ForderItemList;
  end;



  // ************************************************************************ //
  // XML       : ComplementaryItemDetailResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ComplementaryItemDetailResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FitemWithCompInfoList: ItemWithComplementaryList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:               ResultInfo                 Index (IS_UNQL) read Fresult write Fresult;
    property itemWithCompInfoList: ItemWithComplementaryList  Index (IS_UNQL) read FitemWithCompInfoList write FitemWithCompInfoList;
  end;



  // ************************************************************************ //
  // XML       : OrderDetailResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderDetailResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    ForderDetail: OrderDetailData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:      ResultInfo       Index (IS_UNQL) read Fresult write Fresult;
    property orderDetail: OrderDetailData  Index (IS_UNQL) read ForderDetail write ForderDetail;
  end;



  // ************************************************************************ //
  // XML       : DetailedOrderListRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DetailedOrderListRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FsearchData: OrderDataListRequest;
    FpagingData: PagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication        Index (IS_UNQL) read Fauth write Fauth;
    property searchData: OrderDataListRequest  Index (IS_NLBL or IS_UNQL) read FsearchData write FsearchData;
    property pagingData: PagingData            Index (IS_NLBL or IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : OrderListRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderListRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FsearchData: OrderDataListRequest;
    FpagingData: RequestPagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication        Index (IS_UNQL) read Fauth write Fauth;
    property searchData: OrderDataListRequest  Index (IS_UNQL) read FsearchData write FsearchData;
    property pagingData: RequestPagingData     Index (IS_NLBL or IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : OrderItemAcceptResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderItemAcceptResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    ForderItemList: DetailedOrderItemDataList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:        ResultInfo                 Index (IS_UNQL) read Fresult write Fresult;
    property orderItemList: DetailedOrderItemDataList  Index (IS_UNQL) read ForderItemList write ForderItemList;
  end;



  // ************************************************************************ //
  // XML       : DetailedOrderListResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DetailedOrderListResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    ForderList: DetailedOrderDataList;
    ForderList_Specified: boolean;
    FpagingData: PagingData;
    procedure SetorderList(Index: Integer; const ADetailedOrderDataList: DetailedOrderDataList);
    function  orderList_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo             Index (IS_UNQL) read Fresult write Fresult;
    property orderList:  DetailedOrderDataList  Index (IS_OPTN or IS_UNQL) read ForderList write SetorderList stored orderList_Specified;
    property pagingData: PagingData             Index (IS_UNQL) read FpagingData write FpagingData;
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
  // XML       : AddressModel, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  AddressModel = class(TRemotable)
  private
    Faddress: string;
    FfullName: string;
    Fcity: string;
    Fdistrict: string;
    Fneighborhood: string;
    FpostalCode: string;
    Fgsm: string;
    FtcId: string;
    FtaxId: string;
    FtaxHouse: string;
  published
    property address:      string  Index (IS_UNQL) read Faddress write Faddress;
    property fullName:     string  Index (IS_UNQL) read FfullName write FfullName;
    property city:         string  Index (IS_UNQL) read Fcity write Fcity;
    property district:     string  Index (IS_UNQL) read Fdistrict write Fdistrict;
    property neighborhood: string  Index (IS_UNQL) read Fneighborhood write Fneighborhood;
    property postalCode:   string  Index (IS_UNQL) read FpostalCode write FpostalCode;
    property gsm:          string  Index (IS_UNQL) read Fgsm write Fgsm;
    property tcId:         string  Index (IS_UNQL) read FtcId write FtcId;
    property taxId:        string  Index (IS_UNQL) read FtaxId write FtaxId;
    property taxHouse:     string  Index (IS_UNQL) read FtaxHouse write FtaxHouse;
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

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


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
  // XML       : BuyerWithTaxFields, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  BuyerWithTaxFields = class(TRemotable)
  private
    Fid: Int64;
    FfullName: string;
    FtaxId: string;
    FtaxOffice: string;
    Femail: string;
    FtcId: string;
  published
    property id:        Int64   Index (IS_UNQL) read Fid write Fid;
    property fullName:  string  Index (IS_UNQL) read FfullName write FfullName;
    property taxId:     string  Index (IS_NLBL or IS_UNQL) read FtaxId write FtaxId;
    property taxOffice: string  Index (IS_NLBL or IS_UNQL) read FtaxOffice write FtaxOffice;
    property email:     string  Index (IS_NLBL or IS_UNQL) read Femail write Femail;
    property tcId:      string  Index (IS_UNQL) read FtcId write FtcId;
  end;

  ProductOrderItemList = array of Int64;        { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrderItemDataRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderItemDataRequest = class(TRemotable)
  private
    Fid: Int64;
  published
    property id: Int64  Index (IS_UNQL) read Fid write Fid;
  end;



  // ************************************************************************ //
  // XML       : ShipmentCompanyRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ShipmentCompanyRequest = class(TRemotable)
  private
    Fid: Int64;
  published
    property id: Int64  Index (IS_UNQL) read Fid write Fid;
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
  // XML       : BillingTemplate, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  BillingTemplate = class(TRemotable)
  private
    ForiginalPrice: TXSDecimal;
    FtotalSellerDiscount: TXSDecimal;
    FtotalServiceItemOriginalPrice: TXSDecimal;
    FinstallmentChargeWithVat: TXSDecimal;
    FsellerInvoiceAmount: TXSDecimal;
    FtotalMallDiscountPrice: TXSDecimal;
    FdueAmount: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property originalPrice:                 TXSDecimal  Index (IS_UNQL) read ForiginalPrice write ForiginalPrice;
    property totalSellerDiscount:           TXSDecimal  Index (IS_UNQL) read FtotalSellerDiscount write FtotalSellerDiscount;
    property totalServiceItemOriginalPrice: TXSDecimal  Index (IS_UNQL) read FtotalServiceItemOriginalPrice write FtotalServiceItemOriginalPrice;
    property installmentChargeWithVat:      TXSDecimal  Index (IS_UNQL) read FinstallmentChargeWithVat write FinstallmentChargeWithVat;
    property sellerInvoiceAmount:           TXSDecimal  Index (IS_UNQL) read FsellerInvoiceAmount write FsellerInvoiceAmount;
    property totalMallDiscountPrice:        TXSDecimal  Index (IS_UNQL) read FtotalMallDiscountPrice write FtotalMallDiscountPrice;
    property dueAmount:                     TXSDecimal  Index (IS_UNQL) read FdueAmount write FdueAmount;
  end;



  // ************************************************************************ //
  // XML       : OrderData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderData = class(TRemotable)
  private
    Fid: Int64;
    FcreateDate: string;
    FtotalDiscountAmount: TXSDecimal;
    FpaymentType: Int64;
    ForderNumber: string;
    FtotalAmount: TXSDecimal;
    Fstatus: Int64;
    FcitizenshipId: string;
  public
    destructor Destroy; override;
  published
    property id:                  Int64       Index (IS_UNQL) read Fid write Fid;
    property createDate:          string      Index (IS_UNQL) read FcreateDate write FcreateDate;
    property totalDiscountAmount: TXSDecimal  Index (IS_UNQL) read FtotalDiscountAmount write FtotalDiscountAmount;
    property paymentType:         Int64       Index (IS_NLBL or IS_UNQL) read FpaymentType write FpaymentType;
    property orderNumber:         string      Index (IS_UNQL) read ForderNumber write ForderNumber;
    property totalAmount:         TXSDecimal  Index (IS_UNQL) read FtotalAmount write FtotalAmount;
    property status:              Int64       Index (IS_NLBL or IS_UNQL) read Fstatus write Fstatus;
    property citizenshipId:       string      Index (IS_UNQL) read FcitizenshipId write FcitizenshipId;
  end;



  // ************************************************************************ //
  // XML       : ServiceOrderItemData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ServiceOrderItemData = class(TRemotable)
  private
    ForderItemType: Integer;
    FinstallmentChargeWithVAT: TXSDecimal;
    Fprice: TXSDecimal;
    FtotalDiscountPrice: TXSDecimal;
    Fquantity: Int64;
    FsellerInvoiceAmount: TXSDecimal;
    ForderItemList: ProductOrderItemList;
  public
    destructor Destroy; override;
  published
    property orderItemType:            Integer               Index (IS_UNQL) read ForderItemType write ForderItemType;
    property installmentChargeWithVAT: TXSDecimal            Index (IS_UNQL) read FinstallmentChargeWithVAT write FinstallmentChargeWithVAT;
    property price:                    TXSDecimal            Index (IS_UNQL) read Fprice write Fprice;
    property totalDiscountPrice:       TXSDecimal            Index (IS_UNQL) read FtotalDiscountPrice write FtotalDiscountPrice;
    property quantity:                 Int64                 Index (IS_UNQL) read Fquantity write Fquantity;
    property sellerInvoiceAmount:      TXSDecimal            Index (IS_UNQL) read FsellerInvoiceAmount write FsellerInvoiceAmount;
    property orderItemList:            ProductOrderItemList  Index (IS_UNQL) read ForderItemList write ForderItemList;
  end;



  // ************************************************************************ //
  // XML       : ItemWithComplementaryData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ItemWithComplementaryData = class(TRemotable)
  private
    FsellerCode: string;
    FproductTitle: string;
    Fcategory: string;
    Fprice: TXSDecimal;
    FpaidDate: string;
    FacceptedDate: string;
    Fstatus: Int64;
    FcertificateNo: Array_Of_string;
    FcompItemId: Int64;
    FcompAcceptedDate: string;
    FbuyerAddress: BuyerAddressData;
  public
    destructor Destroy; override;
  published
    property sellerCode:       string            Index (IS_UNQL) read FsellerCode write FsellerCode;
    property productTitle:     string            Index (IS_UNQL) read FproductTitle write FproductTitle;
    property category:         string            Index (IS_UNQL) read Fcategory write Fcategory;
    property price:            TXSDecimal        Index (IS_UNQL) read Fprice write Fprice;
    property paidDate:         string            Index (IS_UNQL) read FpaidDate write FpaidDate;
    property acceptedDate:     string            Index (IS_UNQL) read FacceptedDate write FacceptedDate;
    property status:           Int64             Index (IS_UNQL) read Fstatus write Fstatus;
    property certificateNo:    Array_Of_string   Index (IS_UNBD or IS_UNQL) read FcertificateNo write FcertificateNo;
    property compItemId:       Int64             Index (IS_UNQL) read FcompItemId write FcompItemId;
    property compAcceptedDate: string            Index (IS_UNQL) read FcompAcceptedDate write FcompAcceptedDate;
    property buyerAddress:     BuyerAddressData  Index (IS_UNQL) read FbuyerAddress write FbuyerAddress;
  end;



  // ************************************************************************ //
  // XML       : DetailedOrderData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DetailedOrderData = class(TRemotable)
  private
    Fid: Int64;
    FinvoiceType: string;
    Fstatus: Int64;
    ForderNumber: string;
    FtotalAmount: TXSDecimal;
    FpaymentType: Int64;
    FcitizenshipId: string;
    ForderItemList: DetailedOrderItemDataList;
    FcreateDate: string;
  public
    destructor Destroy; override;
  published
    property id:            Int64                      Index (IS_UNQL) read Fid write Fid;
    property invoiceType:   string                     Index (IS_UNQL) read FinvoiceType write FinvoiceType;
    property status:        Int64                      Index (IS_UNQL) read Fstatus write Fstatus;
    property orderNumber:   string                     Index (IS_UNQL) read ForderNumber write ForderNumber;
    property totalAmount:   TXSDecimal                 Index (IS_UNQL) read FtotalAmount write FtotalAmount;
    property paymentType:   Int64                      Index (IS_UNQL) read FpaymentType write FpaymentType;
    property citizenshipId: string                     Index (IS_UNQL) read FcitizenshipId write FcitizenshipId;
    property orderItemList: DetailedOrderItemDataList  Index (IS_UNQL) read ForderItemList write ForderItemList;
    property createDate:    string                     Index (IS_UNQL) read FcreateDate write FcreateDate;
  end;



  // ************************************************************************ //
  // XML       : BuyerAddressData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  BuyerAddressData = class(TRemotable)
  private
    FfullName: string;
    Faddress: string;
    FphoneNumber: Int64;
    FtcNo: string;
    FcompanyName: string;
    FtaxNo: string;
    FtaxOffice: string;
  published
    property fullName:    string  Index (IS_UNQL) read FfullName write FfullName;
    property address:     string  Index (IS_UNQL) read Faddress write Faddress;
    property phoneNumber: Int64   Index (IS_UNQL) read FphoneNumber write FphoneNumber;
    property tcNo:        string  Index (IS_UNQL) read FtcNo write FtcNo;
    property companyName: string  Index (IS_UNQL) read FcompanyName write FcompanyName;
    property taxNo:       string  Index (IS_UNQL) read FtaxNo write FtaxNo;
    property taxOffice:   string  Index (IS_UNQL) read FtaxOffice write FtaxOffice;
  end;

  ServiceOrderItemDataList = array of ServiceOrderItemData;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderItemDataList = array of OrderSearchData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrderDetailData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderDetailData = class(TRemotable)
  private
    Fid: Int64;
    ForderNumber: string;
    Fbuyer: BuyerWithTaxFields;
    FcitizenshipId: string;
    FinvoiceType: string;
    FitemList: OrderItemDataList;
    FserviceItemList: ServiceOrderItemDataList;
    Fstatus: Int64;
    FpaymentType: Int64;
    FbillingTemplate: BillingTemplate;
    FshippingAddress: AddressModel;
    FbillingAddress: AddressModel;
    FcreateDate: string;
  public
    destructor Destroy; override;
  published
    property id:              Int64                     Index (IS_UNQL) read Fid write Fid;
    property orderNumber:     string                    Index (IS_UNQL) read ForderNumber write ForderNumber;
    property buyer:           BuyerWithTaxFields        Index (IS_UNQL) read Fbuyer write Fbuyer;
    property citizenshipId:   string                    Index (IS_UNQL) read FcitizenshipId write FcitizenshipId;
    property invoiceType:     string                    Index (IS_UNQL) read FinvoiceType write FinvoiceType;
    property itemList:        OrderItemDataList         Index (IS_UNQL) read FitemList write FitemList;
    property serviceItemList: ServiceOrderItemDataList  Index (IS_UNQL) read FserviceItemList write FserviceItemList;
    property status:          Int64                     Index (IS_UNQL) read Fstatus write Fstatus;
    property paymentType:     Int64                     Index (IS_UNQL) read FpaymentType write FpaymentType;
    property billingTemplate: BillingTemplate           Index (IS_UNQL) read FbillingTemplate write FbillingTemplate;
    property shippingAddress: AddressModel              Index (IS_UNQL) read FshippingAddress write FshippingAddress;
    property billingAddress:  AddressModel              Index (IS_UNQL) read FbillingAddress write FbillingAddress;
    property createDate:      string                    Index (IS_UNQL) read FcreateDate write FcreateDate;
  end;



  // ************************************************************************ //
  // XML       : SkuAttribute, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SkuAttribute = class(TRemotable)
  private
    Fname_: string;
    Fvalue: string;
  published
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
    property value: string  Index (IS_UNQL) read Fvalue write Fvalue;
  end;

  CustomTextOptionsDataList = array of CustomTextOptionsData;   { "http://www.n11.com/ws/schemas"[GblCplx] }
  SkuAttributeList = array of SkuAttribute;     { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrderSearchData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderSearchData = class(TRemotable)
  private
    Fid: Int64;
    FproductId: Int64;
    FdeliveryFeeType: Int64;
    FproductSellerCode: string;
    Fstatus: string;
    FrejectReason: string;
    FapprovedDate: string;
    FdueAmount: TXSDecimal;
    FinstallmentChargeWithVAT: TXSDecimal;
    Fprice: TXSDecimal;
    FtotalMallDiscountPrice: TXSDecimal;
    Fquantity: Int64;
    FsellerCouponDiscount: TXSDecimal;
    FsellerStockCode: string;
    Fversion: Int64;
    Fattributes: SkuAttributeList;
    FsellerDiscount: TXSDecimal;
    FmallDiscount: TXSDecimal;
    Fcommission: TXSDecimal;
    FsellerInvoiceAmount: TXSDecimal;
    FproductName: string;
    FshipmentInfo: OrderItemShipmentInfo;
    FshippingDate: string;
    FcustomTextOptionValues: CustomTextOptionsDataList;
    FshipmenCompanyCampaignNumber: string;
  public
    destructor Destroy; override;
  published
    property id:                           Int64                      Index (IS_UNQL) read Fid write Fid;
    property productId:                    Int64                      Index (IS_UNQL) read FproductId write FproductId;
    property deliveryFeeType:              Int64                      Index (IS_UNQL) read FdeliveryFeeType write FdeliveryFeeType;
    property productSellerCode:            string                     Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property status:                       string                     Index (IS_UNQL) read Fstatus write Fstatus;
    property rejectReason:                 string                     Index (IS_UNQL) read FrejectReason write FrejectReason;
    property approvedDate:                 string                     Index (IS_UNQL) read FapprovedDate write FapprovedDate;
    property dueAmount:                    TXSDecimal                 Index (IS_UNQL) read FdueAmount write FdueAmount;
    property installmentChargeWithVAT:     TXSDecimal                 Index (IS_UNQL) read FinstallmentChargeWithVAT write FinstallmentChargeWithVAT;
    property price:                        TXSDecimal                 Index (IS_UNQL) read Fprice write Fprice;
    property totalMallDiscountPrice:       TXSDecimal                 Index (IS_UNQL) read FtotalMallDiscountPrice write FtotalMallDiscountPrice;
    property quantity:                     Int64                      Index (IS_UNQL) read Fquantity write Fquantity;
    property sellerCouponDiscount:         TXSDecimal                 Index (IS_UNQL) read FsellerCouponDiscount write FsellerCouponDiscount;
    property sellerStockCode:              string                     Index (IS_UNQL) read FsellerStockCode write FsellerStockCode;
    property version:                      Int64                      Index (IS_UNQL) read Fversion write Fversion;
    property attributes:                   SkuAttributeList           Index (IS_UNQL) read Fattributes write Fattributes;
    property sellerDiscount:               TXSDecimal                 Index (IS_UNQL) read FsellerDiscount write FsellerDiscount;
    property mallDiscount:                 TXSDecimal                 Index (IS_UNQL) read FmallDiscount write FmallDiscount;
    property commission:                   TXSDecimal                 Index (IS_UNQL) read Fcommission write Fcommission;
    property sellerInvoiceAmount:          TXSDecimal                 Index (IS_UNQL) read FsellerInvoiceAmount write FsellerInvoiceAmount;
    property productName:                  string                     Index (IS_UNQL) read FproductName write FproductName;
    property shipmentInfo:                 OrderItemShipmentInfo      Index (IS_UNQL) read FshipmentInfo write FshipmentInfo;
    property shippingDate:                 string                     Index (IS_UNQL) read FshippingDate write FshippingDate;
    property customTextOptionValues:       CustomTextOptionsDataList  Index (IS_UNQL) read FcustomTextOptionValues write FcustomTextOptionValues;
    property shipmenCompanyCampaignNumber: string                     Index (IS_UNQL) read FshipmenCompanyCampaignNumber write FshipmenCompanyCampaignNumber;
  end;



  // ************************************************************************ //
  // XML       : OrderItemShipmentInfo, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderItemShipmentInfo = class(TRemotable)
  private
    FshipmentCompany: ShipmentCompanyData;
    FtrackingNumber: string;
    FtrackingNumberStatus: string;
    FshipmentCode: Int64;
    FcampaignNumber: string;
    FshipmentMethod: string;
    FcampaignNumberStatus: Int64;
  public
    destructor Destroy; override;
  published
    property shipmentCompany:      ShipmentCompanyData  Index (IS_NLBL or IS_UNQL) read FshipmentCompany write FshipmentCompany;
    property trackingNumber:       string               Index (IS_UNQL) read FtrackingNumber write FtrackingNumber;
    property trackingNumberStatus: string               Index (IS_UNQL) read FtrackingNumberStatus write FtrackingNumberStatus;
    property shipmentCode:         Int64                Index (IS_UNQL) read FshipmentCode write FshipmentCode;
    property campaignNumber:       string               Index (IS_UNQL) read FcampaignNumber write FcampaignNumber;
    property shipmentMethod:       string               Index (IS_UNQL) read FshipmentMethod write FshipmentMethod;
    property campaignNumberStatus: Int64                Index (IS_UNQL) read FcampaignNumberStatus write FcampaignNumberStatus;
  end;



  // ************************************************************************ //
  // XML       : MakeShipmentInfoRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  MakeShipmentInfoRequest = class(TRemotable)
  private
    FshipmentCompany: ShipmentCompanyRequest;
    FcampaignNumber: string;
    FtrackingNumber: string;
    FshipmentMethod: Int64;
  public
    destructor Destroy; override;
  published
    property shipmentCompany: ShipmentCompanyRequest  Index (IS_UNQL) read FshipmentCompany write FshipmentCompany;
    property campaignNumber:  string                  Index (IS_UNQL) read FcampaignNumber write FcampaignNumber;
    property trackingNumber:  string                  Index (IS_UNQL) read FtrackingNumber write FtrackingNumber;
    property shipmentMethod:  Int64                   Index (IS_UNQL) read FshipmentMethod write FshipmentMethod;
  end;



  // ************************************************************************ //
  // XML       : OrderItemShipmentRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderItemShipmentRequest = class(TRemotable)
  private
    Fid: Int64;
    FshipmentInfo: MakeShipmentInfoRequest;
  public
    destructor Destroy; override;
  published
    property id:           Int64                    Index (IS_UNQL) read Fid write Fid;
    property shipmentInfo: MakeShipmentInfoRequest  Index (IS_UNQL) read FshipmentInfo write FshipmentInfo;
  end;

  OrderItemListShipmentRequest = array of OrderItemShipmentRequest;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : MakeOrderItemShipmentRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MakeOrderItemShipmentRequest = class(TRemotable)
  private
    Fauth: Authentication;
    ForderItemList: OrderItemListShipmentRequest;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:          Authentication                Index (IS_UNQL) read Fauth write Fauth;
    property orderItemList: OrderItemListShipmentRequest  Index (IS_UNQL) read ForderItemList write ForderItemList;
  end;



  // ************************************************************************ //
  // XML       : CustomTextOptionsData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CustomTextOptionsData = class(TRemotable)
  private
    Foption: string;
    Ftext: string;
  published
    property option: string  Index (IS_UNQL) read Foption write Foption;
    property text:   string  Index (IS_UNQL) read Ftext write Ftext;
  end;

  OrderDataList = array of OrderData;           { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrderListResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderListResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FpagingData: PagingData;
    ForderList: OrderDataList;
    ForderList_Specified: boolean;
    procedure SetorderList(Index: Integer; const AOrderDataList: OrderDataList);
    function  orderList_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo     Index (IS_UNQL) read Fresult write Fresult;
    property pagingData: PagingData     Index (IS_UNQL) read FpagingData write FpagingData;
    property orderList:  OrderDataList  Index (IS_OPTN or IS_UNQL) read ForderList write SetorderList stored orderList_Specified;
  end;

  OrderItemDataRequestForRejection = array of OrderItemDataRequest;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrderItemRejectRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderItemRejectRequest = class(TRemotable)
  private
    Fauth: Authentication;
    ForderItemList: OrderItemDataRequestForRejection;
    FrejectReason: string;
    FrejectReasonType: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:             Authentication                    Index (IS_UNQL) read Fauth write Fauth;
    property orderItemList:    OrderItemDataRequestForRejection  Index (IS_UNQL) read ForderItemList write ForderItemList;
    property rejectReason:     string                            Index (IS_UNQL) read FrejectReason write FrejectReason;
    property rejectReasonType: string                            Index (IS_NLBL or IS_UNQL) read FrejectReasonType write FrejectReasonType;
  end;



  // ************************************************************************ //
  // XML       : OrderDataRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderDataRequest = class(TRemotable)
  private
    Fid: Int64;
  published
    property id: Int64  Index (IS_UNQL) read Fid write Fid;
  end;

  OrderItemDataListRequest = array of OrderItemDataRequest;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : OrderItemAcceptRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  OrderItemAcceptRequest = class(TRemotable)
  private
    Fauth: Authentication;
    ForderItemList: OrderItemDataListRequest;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:          Authentication            Index (IS_UNQL) read Fauth write Fauth;
    property orderItemList: OrderItemDataListRequest  Index (IS_UNQL) read ForderItemList write ForderItemList;
  end;



  // ************************************************************************ //
  // XML       : ComplementaryItemDetailRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ComplementaryItemDetailRequest = class(TRemotable)
  private
    Fauth: Authentication;
    ForderItemList: OrderItemDataListRequest;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:          Authentication            Index (IS_UNQL) read Fauth write Fauth;
    property orderItemList: OrderItemDataListRequest  Index (IS_UNQL) read ForderItemList write ForderItemList;
  end;



  // ************************************************************************ //
  // XML       : OrderItemData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderItemData = class(TRemotable)
  private
    Fid: Int64;
    FproductSellerCode: string;
    Fprice: TXSDecimal;
    FsellerDiscount: TXSDecimal;
    FmallDiscount: TXSDecimal;
    Fcommission: TXSDecimal;
    Fstatus: Int64;
    Fquantity: Int64;
    FproductName: string;
    FdeliveryFeeType: Int64;
    FdueAmount: TXSDecimal;
    FshipmentInfo: OrderItemShipmentInfo;
    Fattributes: SkuAttributeList;
    FcustomTextOptionValues: CustomTextOptionsDataList;
    FupdatedDate: string;
    FcargoCompanyWarning: string;
  public
    destructor Destroy; override;
  published
    property id:                     Int64                      Index (IS_UNQL) read Fid write Fid;
    property productSellerCode:      string                     Index (IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property price:                  TXSDecimal                 Index (IS_UNQL) read Fprice write Fprice;
    property sellerDiscount:         TXSDecimal                 Index (IS_UNQL) read FsellerDiscount write FsellerDiscount;
    property mallDiscount:           TXSDecimal                 Index (IS_UNQL) read FmallDiscount write FmallDiscount;
    property commission:             TXSDecimal                 Index (IS_UNQL) read Fcommission write Fcommission;
    property status:                 Int64                      Index (IS_UNQL) read Fstatus write Fstatus;
    property quantity:               Int64                      Index (IS_UNQL) read Fquantity write Fquantity;
    property productName:            string                     Index (IS_UNQL) read FproductName write FproductName;
    property deliveryFeeType:        Int64                      Index (IS_UNQL) read FdeliveryFeeType write FdeliveryFeeType;
    property dueAmount:              TXSDecimal                 Index (IS_UNQL) read FdueAmount write FdueAmount;
    property shipmentInfo:           OrderItemShipmentInfo      Index (IS_UNQL) read FshipmentInfo write FshipmentInfo;
    property attributes:             SkuAttributeList           Index (IS_UNQL) read Fattributes write Fattributes;
    property customTextOptionValues: CustomTextOptionsDataList  Index (IS_UNQL) read FcustomTextOptionValues write FcustomTextOptionValues;
    property updatedDate:            string                     Index (IS_UNQL) read FupdatedDate write FupdatedDate;
    property cargoCompanyWarning:    string                     Index (IS_UNQL) read FcargoCompanyWarning write FcargoCompanyWarning;
  end;



  // ************************************************************************ //
  // XML       : OrderSearchPeriod, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderSearchPeriod = class(TRemotable)
  private
    FstartDate: string;
    FendDate: string;
  published
    property startDate: string  Index (IS_NLBL or IS_UNQL) read FstartDate write FstartDate;
    property endDate:   string  Index (IS_NLBL or IS_UNQL) read FendDate write FendDate;
  end;



  // ************************************************************************ //
  // XML       : OrderDataListRequest, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderDataListRequest = class(TRemotable)
  private
    FproductId: Int64;
    Fstatus: string;
    FbuyerName: string;
    ForderNumber: string;
    FproductSellerCode: string;
    Frecipient: string;
    FsameDayDelivery: Boolean;
    Fperiod: OrderSearchPeriod;
    FsortForUpdateDate: Boolean;
  public
    destructor Destroy; override;
  published
    property productId:         Int64              Index (IS_NLBL or IS_UNQL) read FproductId write FproductId;
    property status:            string             Index (IS_NLBL or IS_UNQL) read Fstatus write Fstatus;
    property buyerName:         string             Index (IS_UNQL) read FbuyerName write FbuyerName;
    property orderNumber:       string             Index (IS_UNQL) read ForderNumber write ForderNumber;
    property productSellerCode: string             Index (IS_NLBL or IS_UNQL) read FproductSellerCode write FproductSellerCode;
    property recipient:         string             Index (IS_UNQL) read Frecipient write Frecipient;
    property sameDayDelivery:   Boolean            Index (IS_NLBL or IS_UNQL) read FsameDayDelivery write FsameDayDelivery;
    property period:            OrderSearchPeriod  Index (IS_UNQL) read Fperiod write Fperiod;
    property sortForUpdateDate: Boolean            Index (IS_UNQL) read FsortForUpdateDate write FsortForUpdateDate;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : OrderServicePortSoap11
  // service   : OrderServicePortService
  // port      : OrderServicePortSoap11
  // URL       : https://api.n11.com/ws/orderService/
  // ************************************************************************ //
  OrderServicePort = interface(IInvokable)
  ['{FA2784FA-6D68-1317-40AB-CF7224335ABE}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  OrderList(const OrderListRequest: OrderListRequest): OrderListResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  DetailedOrderList(const DetailedOrderListRequest: DetailedOrderListRequest): DetailedOrderListResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  OrderItemAccept(const OrderItemAcceptRequest: OrderItemAcceptRequest): OrderItemAcceptResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  OrderItemReject(const OrderItemRejectRequest: OrderItemRejectRequest): OrderItemRejectResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  MakeOrderItemShipment(const MakeOrderItemShipmentRequest: MakeOrderItemShipmentRequest): MakeOrderItemShipmentResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  OrderDetail(const OrderDetailRequest: OrderDetailRequest): OrderDetailResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  ComplementaryItemDetail(const ComplementaryItemDetailRequest: ComplementaryItemDetailRequest): ComplementaryItemDetailResponse; stdcall;
  end;

function GetOrderServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): OrderServicePort;


implementation
  uses System.SysUtils;

function GetOrderServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): OrderServicePort;
const
  defWSDL = 'https://api.n11.com/ws/OrderService.wsdl';
  defURL  = 'https://api.n11.com/ws/orderService/';
  defSvc  = 'OrderServicePortService';
  defPrt  = 'OrderServicePortSoap11';
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
    Result := (RIO as OrderServicePort);
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


constructor OrderDetailRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderDetailRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(ForderRequest);
  inherited Destroy;
end;

constructor MakeOrderItemShipmentResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MakeOrderItemShipmentResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor OrderItemRejectResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderItemRejectResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor ComplementaryItemDetailResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ComplementaryItemDetailResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FitemWithCompInfoList)-1 do
    System.SysUtils.FreeAndNil(FitemWithCompInfoList[I]);
  System.SetLength(FitemWithCompInfoList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor OrderDetailResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderDetailResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(ForderDetail);
  inherited Destroy;
end;

constructor DetailedOrderListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DetailedOrderListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FsearchData);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor OrderListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FsearchData);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor OrderItemAcceptResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderItemAcceptResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor DetailedOrderListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DetailedOrderListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderList)-1 do
    System.SysUtils.FreeAndNil(ForderList[I]);
  System.SetLength(ForderList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

procedure DetailedOrderListResponse.SetorderList(Index: Integer; const ADetailedOrderDataList: DetailedOrderDataList);
begin
  ForderList := ADetailedOrderDataList;
  ForderList_Specified := True;
end;

function DetailedOrderListResponse.orderList_Specified(Index: Integer): boolean;
begin
  Result := ForderList_Specified;
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

destructor BillingTemplate.Destroy;
begin
  System.SysUtils.FreeAndNil(ForiginalPrice);
  System.SysUtils.FreeAndNil(FtotalSellerDiscount);
  System.SysUtils.FreeAndNil(FtotalServiceItemOriginalPrice);
  System.SysUtils.FreeAndNil(FinstallmentChargeWithVat);
  System.SysUtils.FreeAndNil(FsellerInvoiceAmount);
  System.SysUtils.FreeAndNil(FtotalMallDiscountPrice);
  System.SysUtils.FreeAndNil(FdueAmount);
  inherited Destroy;
end;

destructor OrderData.Destroy;
begin
  System.SysUtils.FreeAndNil(FtotalDiscountAmount);
  System.SysUtils.FreeAndNil(FtotalAmount);
  inherited Destroy;
end;

destructor ServiceOrderItemData.Destroy;
begin
  System.SysUtils.FreeAndNil(FinstallmentChargeWithVAT);
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(FtotalDiscountPrice);
  System.SysUtils.FreeAndNil(FsellerInvoiceAmount);
  inherited Destroy;
end;

destructor ItemWithComplementaryData.Destroy;
begin
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(FbuyerAddress);
  inherited Destroy;
end;

destructor DetailedOrderData.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(FtotalAmount);
  inherited Destroy;
end;

destructor OrderDetailData.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FitemList)-1 do
    System.SysUtils.FreeAndNil(FitemList[I]);
  System.SetLength(FitemList, 0);
  for I := 0 to System.Length(FserviceItemList)-1 do
    System.SysUtils.FreeAndNil(FserviceItemList[I]);
  System.SetLength(FserviceItemList, 0);
  System.SysUtils.FreeAndNil(Fbuyer);
  System.SysUtils.FreeAndNil(FbillingTemplate);
  System.SysUtils.FreeAndNil(FshippingAddress);
  System.SysUtils.FreeAndNil(FbillingAddress);
  inherited Destroy;
end;

destructor OrderSearchData.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  for I := 0 to System.Length(FcustomTextOptionValues)-1 do
    System.SysUtils.FreeAndNil(FcustomTextOptionValues[I]);
  System.SetLength(FcustomTextOptionValues, 0);
  System.SysUtils.FreeAndNil(FdueAmount);
  System.SysUtils.FreeAndNil(FinstallmentChargeWithVAT);
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(FtotalMallDiscountPrice);
  System.SysUtils.FreeAndNil(FsellerCouponDiscount);
  System.SysUtils.FreeAndNil(FsellerDiscount);
  System.SysUtils.FreeAndNil(FmallDiscount);
  System.SysUtils.FreeAndNil(Fcommission);
  System.SysUtils.FreeAndNil(FsellerInvoiceAmount);
  System.SysUtils.FreeAndNil(FshipmentInfo);
  inherited Destroy;
end;

destructor OrderItemShipmentInfo.Destroy;
begin
  System.SysUtils.FreeAndNil(FshipmentCompany);
  inherited Destroy;
end;

destructor MakeShipmentInfoRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FshipmentCompany);
  inherited Destroy;
end;

destructor OrderItemShipmentRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FshipmentInfo);
  inherited Destroy;
end;

constructor MakeOrderItemShipmentRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MakeOrderItemShipmentRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor OrderListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderList)-1 do
    System.SysUtils.FreeAndNil(ForderList[I]);
  System.SetLength(ForderList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

procedure OrderListResponse.SetorderList(Index: Integer; const AOrderDataList: OrderDataList);
begin
  ForderList := AOrderDataList;
  ForderList_Specified := True;
end;

function OrderListResponse.orderList_Specified(Index: Integer): boolean;
begin
  Result := ForderList_Specified;
end;

constructor OrderItemRejectRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderItemRejectRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor OrderItemAcceptRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor OrderItemAcceptRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor ComplementaryItemDetailRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ComplementaryItemDetailRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemList)-1 do
    System.SysUtils.FreeAndNil(ForderItemList[I]);
  System.SetLength(ForderItemList, 0);
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

destructor OrderItemData.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fattributes)-1 do
    System.SysUtils.FreeAndNil(Fattributes[I]);
  System.SetLength(Fattributes, 0);
  for I := 0 to System.Length(FcustomTextOptionValues)-1 do
    System.SysUtils.FreeAndNil(FcustomTextOptionValues[I]);
  System.SetLength(FcustomTextOptionValues, 0);
  System.SysUtils.FreeAndNil(Fprice);
  System.SysUtils.FreeAndNil(FsellerDiscount);
  System.SysUtils.FreeAndNil(FmallDiscount);
  System.SysUtils.FreeAndNil(Fcommission);
  System.SysUtils.FreeAndNil(FdueAmount);
  System.SysUtils.FreeAndNil(FshipmentInfo);
  inherited Destroy;
end;

destructor OrderDataListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fperiod);
  inherited Destroy;
end;

initialization
  { OrderServicePort }
  InvRegistry.RegisterInterface(TypeInfo(OrderServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(OrderServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(OrderServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(OrderServicePort), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DetailedOrderItemDataList), 'http://www.n11.com/ws/schemas', 'DetailedOrderItemDataList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DetailedOrderDataList), 'http://www.n11.com/ws/schemas', 'DetailedOrderDataList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ItemWithComplementaryList), 'http://www.n11.com/ws/schemas', 'ItemWithComplementaryList');
  RemClassRegistry.RegisterXSClass(OrderDetailRequest, 'http://www.n11.com/ws/schemas', 'OrderDetailRequest');
  RemClassRegistry.RegisterSerializeOptions(OrderDetailRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MakeOrderItemShipmentResponse, 'http://www.n11.com/ws/schemas', 'MakeOrderItemShipmentResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MakeOrderItemShipmentResponse), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterSerializeOptions(MakeOrderItemShipmentResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(OrderItemRejectResponse, 'http://www.n11.com/ws/schemas', 'OrderItemRejectResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderItemRejectResponse), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterSerializeOptions(OrderItemRejectResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ComplementaryItemDetailResponse, 'http://www.n11.com/ws/schemas', 'ComplementaryItemDetailResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ComplementaryItemDetailResponse), 'itemWithCompInfoList', '[ArrayItemName="itemWithComplementary"]');
  RemClassRegistry.RegisterSerializeOptions(ComplementaryItemDetailResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(OrderDetailResponse, 'http://www.n11.com/ws/schemas', 'OrderDetailResponse');
  RemClassRegistry.RegisterSerializeOptions(OrderDetailResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DetailedOrderListRequest, 'http://www.n11.com/ws/schemas', 'DetailedOrderListRequest');
  RemClassRegistry.RegisterSerializeOptions(DetailedOrderListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(OrderListRequest, 'http://www.n11.com/ws/schemas', 'OrderListRequest');
  RemClassRegistry.RegisterSerializeOptions(OrderListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(OrderItemAcceptResponse, 'http://www.n11.com/ws/schemas', 'OrderItemAcceptResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderItemAcceptResponse), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterSerializeOptions(OrderItemAcceptResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DetailedOrderListResponse, 'http://www.n11.com/ws/schemas', 'DetailedOrderListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DetailedOrderListResponse), 'orderList', '[ArrayItemName="order"]');
  RemClassRegistry.RegisterSerializeOptions(DetailedOrderListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RequestPagingData, 'http://www.n11.com/ws/schemas', 'RequestPagingData');
  RemClassRegistry.RegisterXSClass(AddressModel, 'http://www.n11.com/ws/schemas', 'AddressModel');
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(BuyerWithTaxFields, 'http://www.n11.com/ws/schemas', 'BuyerWithTaxFields');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProductOrderItemList), 'http://www.n11.com/ws/schemas', 'ProductOrderItemList');
  RemClassRegistry.RegisterXSClass(OrderItemDataRequest, 'http://www.n11.com/ws/schemas', 'OrderItemDataRequest');
  RemClassRegistry.RegisterXSClass(ShipmentCompanyRequest, 'http://www.n11.com/ws/schemas', 'ShipmentCompanyRequest');
  RemClassRegistry.RegisterXSClass(ShipmentCompanyData, 'http://www.n11.com/ws/schemas', 'ShipmentCompanyData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ShipmentCompanyData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(PagingData, 'http://www.n11.com/ws/schemas', 'PagingData');
  RemClassRegistry.RegisterXSClass(BillingTemplate, 'http://www.n11.com/ws/schemas', 'BillingTemplate');
  RemClassRegistry.RegisterXSClass(OrderData, 'http://www.n11.com/ws/schemas', 'OrderData');
  RemClassRegistry.RegisterXSClass(ServiceOrderItemData, 'http://www.n11.com/ws/schemas', 'ServiceOrderItemData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ServiceOrderItemData), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterXSClass(ItemWithComplementaryData, 'http://www.n11.com/ws/schemas', 'ItemWithComplementaryData');
  RemClassRegistry.RegisterXSClass(DetailedOrderData, 'http://www.n11.com/ws/schemas', 'DetailedOrderData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DetailedOrderData), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterXSClass(BuyerAddressData, 'http://www.n11.com/ws/schemas', 'BuyerAddressData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ServiceOrderItemDataList), 'http://www.n11.com/ws/schemas', 'ServiceOrderItemDataList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrderItemDataList), 'http://www.n11.com/ws/schemas', 'OrderItemDataList');
  RemClassRegistry.RegisterXSClass(OrderDetailData, 'http://www.n11.com/ws/schemas', 'OrderDetailData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderDetailData), 'itemList', '[ArrayItemName="item"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderDetailData), 'serviceItemList', '[ArrayItemName="serviceItem"]');
  RemClassRegistry.RegisterXSClass(SkuAttribute, 'http://www.n11.com/ws/schemas', 'SkuAttribute');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SkuAttribute), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CustomTextOptionsDataList), 'http://www.n11.com/ws/schemas', 'CustomTextOptionsDataList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SkuAttributeList), 'http://www.n11.com/ws/schemas', 'SkuAttributeList');
  RemClassRegistry.RegisterXSClass(OrderSearchData, 'http://www.n11.com/ws/schemas', 'OrderSearchData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderSearchData), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderSearchData), 'customTextOptionValues', '[ArrayItemName="customTextOptionValue"]');
  RemClassRegistry.RegisterXSClass(OrderItemShipmentInfo, 'http://www.n11.com/ws/schemas', 'OrderItemShipmentInfo');
  RemClassRegistry.RegisterXSClass(MakeShipmentInfoRequest, 'http://www.n11.com/ws/schemas', 'MakeShipmentInfoRequest');
  RemClassRegistry.RegisterXSClass(OrderItemShipmentRequest, 'http://www.n11.com/ws/schemas', 'OrderItemShipmentRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrderItemListShipmentRequest), 'http://www.n11.com/ws/schemas', 'OrderItemListShipmentRequest');
  RemClassRegistry.RegisterXSClass(MakeOrderItemShipmentRequest, 'http://www.n11.com/ws/schemas', 'MakeOrderItemShipmentRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MakeOrderItemShipmentRequest), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterSerializeOptions(MakeOrderItemShipmentRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CustomTextOptionsData, 'http://www.n11.com/ws/schemas', 'CustomTextOptionsData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrderDataList), 'http://www.n11.com/ws/schemas', 'OrderDataList');
  RemClassRegistry.RegisterXSClass(OrderListResponse, 'http://www.n11.com/ws/schemas', 'OrderListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderListResponse), 'orderList', '[ArrayItemName="order"]');
  RemClassRegistry.RegisterSerializeOptions(OrderListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrderItemDataRequestForRejection), 'http://www.n11.com/ws/schemas', 'OrderItemDataRequestForRejection');
  RemClassRegistry.RegisterXSClass(OrderItemRejectRequest, 'http://www.n11.com/ws/schemas', 'OrderItemRejectRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderItemRejectRequest), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterSerializeOptions(OrderItemRejectRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(OrderDataRequest, 'http://www.n11.com/ws/schemas', 'OrderDataRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrderItemDataListRequest), 'http://www.n11.com/ws/schemas', 'OrderItemDataListRequest');
  RemClassRegistry.RegisterXSClass(OrderItemAcceptRequest, 'http://www.n11.com/ws/schemas', 'OrderItemAcceptRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderItemAcceptRequest), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterSerializeOptions(OrderItemAcceptRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ComplementaryItemDetailRequest, 'http://www.n11.com/ws/schemas', 'ComplementaryItemDetailRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ComplementaryItemDetailRequest), 'orderItemList', '[ArrayItemName="orderItem"]');
  RemClassRegistry.RegisterSerializeOptions(ComplementaryItemDetailRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(OrderItemData, 'http://www.n11.com/ws/schemas', 'OrderItemData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderItemData), 'attributes', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderItemData), 'customTextOptionValues', '[ArrayItemName="customTextOptionValue"]');
  RemClassRegistry.RegisterXSClass(OrderSearchPeriod, 'http://www.n11.com/ws/schemas', 'OrderSearchPeriod');
  RemClassRegistry.RegisterXSClass(OrderDataListRequest, 'http://www.n11.com/ws/schemas', 'OrderDataListRequest');

end.