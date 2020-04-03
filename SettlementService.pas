// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/SettlementService.wsdl
//  >Import : https://api.n11.com/ws/SettlementService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (30.01.2020 20:29:47 - - $Rev: 96726 $)
// ************************************************************************ //

unit SettlementService;

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
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  OrderItemSettlementData = class;              { "http://www.n11.com/ws/schemas"[GblCplx] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetSettlementDetailRequest = class;           { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetSettlementDetailResponse = class;          { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetSettlementListRequest = class;             { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetSettlementListResponse = class;            { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  DefermentSettlementUsageData = class;         { "http://www.n11.com/ws/schemas"[GblCplx] }
  SettlementDetailData = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  SettlementDetailSummaryData = class;          { "http://www.n11.com/ws/schemas"[GblCplx] }
  PagingData           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  RequestPagingData    = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  SettlementSummaryDataList = class;            { "http://www.n11.com/ws/schemas"[GblCplx] }
  SettlementSummaryData = class;                { "http://www.n11.com/ws/schemas"[GblCplx] }
  DefermentSppDTO      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  DefermentDTO         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  OrderItemSettlementDataList = class;          { "http://www.n11.com/ws/schemas"[GblCplx] }
  DefermentSettlementUsageDataList = class;     { "http://www.n11.com/ws/schemas"[GblCplx] }



  // ************************************************************************ //
  // XML       : OrderItemSettlementData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderItemSettlementData = class(TRemotable)
  private
    FadFee: TXSDecimal;
    FadFee_Specified: boolean;
    FadFeeVat: TXSDecimal;
    FadFeeVat_Specified: boolean;
    FbuyerEmail: string;
    FbuyerEmail_Specified: boolean;
    FbuyerName: string;
    FbuyerName_Specified: boolean;
    Fcommission: TXSDecimal;
    Fcommission_Specified: boolean;
    FcompletedDate: string;
    FcompletedDate_Specified: boolean;
    FdeductionAmount: TXSDecimal;
    FdeductionAmount_Specified: boolean;
    ForderItemId: Int64;
    ForderItemId_Specified: boolean;
    ForderNumber: string;
    ForderNumber_Specified: boolean;
    FpaymentAmount: TXSDecimal;
    FpaymentAmount_Specified: boolean;
    FpaymentDate: string;
    FpaymentDate_Specified: boolean;
    FproductId: Int64;
    FproductId_Specified: boolean;
    FproductName: string;
    FproductName_Specified: boolean;
    FremittanceDate: string;
    FremittanceDate_Specified: boolean;
    FsellerCouponDiscount: TXSDecimal;
    FsellerCouponDiscount_Specified: boolean;
    FsellerDiscount: TXSDecimal;
    FsellerDiscount_Specified: boolean;
    FsettlementAmount: TXSDecimal;
    FsettlementAmount_Specified: boolean;
    FsettlementDate: string;
    FsettlementDate_Specified: boolean;
    FshippingDate: string;
    FshippingDate_Specified: boolean;
    FtrackingNumber: string;
    FtrackingNumber_Specified: boolean;
    FdefermentOfPayment: TXSDecimal;
    FdefermentOfPayment_Specified: boolean;
    FcargoPrice: TXSDecimal;
    FcargoPrice_Specified: boolean;
    procedure SetadFee(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  adFee_Specified(Index: Integer): boolean;
    procedure SetadFeeVat(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  adFeeVat_Specified(Index: Integer): boolean;
    procedure SetbuyerEmail(Index: Integer; const Astring: string);
    function  buyerEmail_Specified(Index: Integer): boolean;
    procedure SetbuyerName(Index: Integer; const Astring: string);
    function  buyerName_Specified(Index: Integer): boolean;
    procedure Setcommission(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  commission_Specified(Index: Integer): boolean;
    procedure SetcompletedDate(Index: Integer; const Astring: string);
    function  completedDate_Specified(Index: Integer): boolean;
    procedure SetdeductionAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  deductionAmount_Specified(Index: Integer): boolean;
    procedure SetorderItemId(Index: Integer; const AInt64: Int64);
    function  orderItemId_Specified(Index: Integer): boolean;
    procedure SetorderNumber(Index: Integer; const Astring: string);
    function  orderNumber_Specified(Index: Integer): boolean;
    procedure SetpaymentAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  paymentAmount_Specified(Index: Integer): boolean;
    procedure SetpaymentDate(Index: Integer; const Astring: string);
    function  paymentDate_Specified(Index: Integer): boolean;
    procedure SetproductId(Index: Integer; const AInt64: Int64);
    function  productId_Specified(Index: Integer): boolean;
    procedure SetproductName(Index: Integer; const Astring: string);
    function  productName_Specified(Index: Integer): boolean;
    procedure SetremittanceDate(Index: Integer; const Astring: string);
    function  remittanceDate_Specified(Index: Integer): boolean;
    procedure SetsellerCouponDiscount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  sellerCouponDiscount_Specified(Index: Integer): boolean;
    procedure SetsellerDiscount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  sellerDiscount_Specified(Index: Integer): boolean;
    procedure SetsettlementAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  settlementAmount_Specified(Index: Integer): boolean;
    procedure SetsettlementDate(Index: Integer; const Astring: string);
    function  settlementDate_Specified(Index: Integer): boolean;
    procedure SetshippingDate(Index: Integer; const Astring: string);
    function  shippingDate_Specified(Index: Integer): boolean;
    procedure SettrackingNumber(Index: Integer; const Astring: string);
    function  trackingNumber_Specified(Index: Integer): boolean;
    procedure SetdefermentOfPayment(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  defermentOfPayment_Specified(Index: Integer): boolean;
    procedure SetcargoPrice(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  cargoPrice_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property adFee:                TXSDecimal  Index (IS_OPTN or IS_UNQL) read FadFee write SetadFee stored adFee_Specified;
    property adFeeVat:             TXSDecimal  Index (IS_OPTN or IS_UNQL) read FadFeeVat write SetadFeeVat stored adFeeVat_Specified;
    property buyerEmail:           string      Index (IS_OPTN or IS_UNQL) read FbuyerEmail write SetbuyerEmail stored buyerEmail_Specified;
    property buyerName:            string      Index (IS_OPTN or IS_UNQL) read FbuyerName write SetbuyerName stored buyerName_Specified;
    property commission:           TXSDecimal  Index (IS_OPTN or IS_UNQL) read Fcommission write Setcommission stored commission_Specified;
    property completedDate:        string      Index (IS_OPTN or IS_UNQL) read FcompletedDate write SetcompletedDate stored completedDate_Specified;
    property deductionAmount:      TXSDecimal  Index (IS_OPTN or IS_UNQL) read FdeductionAmount write SetdeductionAmount stored deductionAmount_Specified;
    property orderItemId:          Int64       Index (IS_OPTN or IS_UNQL) read ForderItemId write SetorderItemId stored orderItemId_Specified;
    property orderNumber:          string      Index (IS_OPTN or IS_UNQL) read ForderNumber write SetorderNumber stored orderNumber_Specified;
    property paymentAmount:        TXSDecimal  Index (IS_OPTN or IS_UNQL) read FpaymentAmount write SetpaymentAmount stored paymentAmount_Specified;
    property paymentDate:          string      Index (IS_OPTN or IS_UNQL) read FpaymentDate write SetpaymentDate stored paymentDate_Specified;
    property productId:            Int64       Index (IS_OPTN or IS_UNQL) read FproductId write SetproductId stored productId_Specified;
    property productName:          string      Index (IS_OPTN or IS_UNQL) read FproductName write SetproductName stored productName_Specified;
    property remittanceDate:       string      Index (IS_OPTN or IS_UNQL) read FremittanceDate write SetremittanceDate stored remittanceDate_Specified;
    property sellerCouponDiscount: TXSDecimal  Index (IS_OPTN or IS_UNQL) read FsellerCouponDiscount write SetsellerCouponDiscount stored sellerCouponDiscount_Specified;
    property sellerDiscount:       TXSDecimal  Index (IS_OPTN or IS_UNQL) read FsellerDiscount write SetsellerDiscount stored sellerDiscount_Specified;
    property settlementAmount:     TXSDecimal  Index (IS_OPTN or IS_UNQL) read FsettlementAmount write SetsettlementAmount stored settlementAmount_Specified;
    property settlementDate:       string      Index (IS_OPTN or IS_UNQL) read FsettlementDate write SetsettlementDate stored settlementDate_Specified;
    property shippingDate:         string      Index (IS_OPTN or IS_UNQL) read FshippingDate write SetshippingDate stored shippingDate_Specified;
    property trackingNumber:       string      Index (IS_OPTN or IS_UNQL) read FtrackingNumber write SettrackingNumber stored trackingNumber_Specified;
    property defermentOfPayment:   TXSDecimal  Index (IS_OPTN or IS_UNQL) read FdefermentOfPayment write SetdefermentOfPayment stored defermentOfPayment_Specified;
    property cargoPrice:           TXSDecimal  Index (IS_OPTN or IS_UNQL) read FcargoPrice write SetcargoPrice stored cargoPrice_Specified;
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
  // XML       : GetSettlementDetailRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSettlementDetailRequest = class(TRemotable)
  private
    Fauth: Authentication;
    Fdate: string;
    FpagingData: RequestPagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication     Index (IS_UNQL) read Fauth write Fauth;
    property date:       string             Index (IS_UNQL) read Fdate write Fdate;
    property pagingData: RequestPagingData  Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : GetSettlementDetailResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSettlementDetailResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FsettlementDetail: SettlementDetailData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:           ResultInfo            Index (IS_UNQL) read Fresult write Fresult;
    property settlementDetail: SettlementDetailData  Index (IS_UNQL) read FsettlementDetail write FsettlementDetail;
  end;

  Array_Of_SettlementSummaryData = array of SettlementSummaryData;   { "http://www.n11.com/ws/schemas"[GblUbnd] }


  // ************************************************************************ //
  // XML       : GetSettlementListRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSettlementListRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FstartDate: string;
    FendDate: string;
    FpagingData: RequestPagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication     Index (IS_UNQL) read Fauth write Fauth;
    property startDate:  string             Index (IS_UNQL) read FstartDate write FstartDate;
    property endDate:    string             Index (IS_UNQL) read FendDate write FendDate;
    property pagingData: RequestPagingData  Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : GetSettlementListResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSettlementListResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FsettlementListData: SettlementSummaryDataList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:             ResultInfo                 Index (IS_UNQL) read Fresult write Fresult;
    property settlementListData: SettlementSummaryDataList  Index (IS_UNQL) read FsettlementListData write FsettlementListData;
  end;



  // ************************************************************************ //
  // XML       : DefermentSettlementUsageData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DefermentSettlementUsageData = class(TRemotable)
  private
    ForderNumber: string;
    ForderDate: string;
    FproductId: Int64;
    FproductTitle: string;
    Famount: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property orderNumber:  string      Index (IS_UNQL) read ForderNumber write ForderNumber;
    property orderDate:    string      Index (IS_UNQL) read ForderDate write ForderDate;
    property productId:    Int64       Index (IS_UNQL) read FproductId write FproductId;
    property productTitle: string      Index (IS_UNQL) read FproductTitle write FproductTitle;
    property amount:       TXSDecimal  Index (IS_UNQL) read Famount write Famount;
  end;



  // ************************************************************************ //
  // XML       : SettlementDetailData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SettlementDetailData = class(TRemotable)
  private
    Fsettlement: SettlementDetailSummaryData;
    ForderItemSettlementDataList: OrderItemSettlementDataList;
    FdefermentSettlementUsageDataList: DefermentSettlementUsageDataList;
  public
    destructor Destroy; override;
  published
    property settlement:                       SettlementDetailSummaryData       Index (IS_UNQL) read Fsettlement write Fsettlement;
    property orderItemSettlementDataList:      OrderItemSettlementDataList       Index (IS_UNQL) read ForderItemSettlementDataList write ForderItemSettlementDataList;
    property defermentSettlementUsageDataList: DefermentSettlementUsageDataList  Index (IS_UNQL) read FdefermentSettlementUsageDataList write FdefermentSettlementUsageDataList;
  end;

  orderItemSettlements = array of OrderItemSettlementData;   { "http://www.n11.com/ws/schemas"[Cplx] }


  // ************************************************************************ //
  // XML       : SettlementDetailSummaryData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SettlementDetailSummaryData = class(TRemotable)
  private
    FsalesAmount: TXSDecimal;
    FsellerWithdraw: TXSDecimal;
    FreleaseDeferment: TXSDecimal;
    FdeductionAmount: TXSDecimal;
    FdefermentOfPayment: TXSDecimal;
    FpaymentToECash: TXSDecimal;
    Fremittance: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property salesAmount:        TXSDecimal  Index (IS_UNQL) read FsalesAmount write FsalesAmount;
    property sellerWithdraw:     TXSDecimal  Index (IS_UNQL) read FsellerWithdraw write FsellerWithdraw;
    property releaseDeferment:   TXSDecimal  Index (IS_UNQL) read FreleaseDeferment write FreleaseDeferment;
    property deductionAmount:    TXSDecimal  Index (IS_UNQL) read FdeductionAmount write FdeductionAmount;
    property defermentOfPayment: TXSDecimal  Index (IS_UNQL) read FdefermentOfPayment write FdefermentOfPayment;
    property paymentToECash:     TXSDecimal  Index (IS_UNQL) read FpaymentToECash write FpaymentToECash;
    property remittance:         TXSDecimal  Index (IS_UNQL) read Fremittance write Fremittance;
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
  // XML       : SettlementSummaryDataList, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SettlementSummaryDataList = class(TRemotable)
  private
    FsettlementList: Array_Of_SettlementSummaryData;
    Fmetadata: PagingData;
  public
    destructor Destroy; override;
  published
    property settlementList: Array_Of_SettlementSummaryData  Index (IS_UNBD or IS_UNQL) read FsettlementList write FsettlementList;
    property metadata:       PagingData                      Index (IS_UNQL) read Fmetadata write Fmetadata;
  end;



  // ************************************************************************ //
  // XML       : SettlementSummaryData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SettlementSummaryData = class(TRemotable)
  private
    FpaymentAmount: TXSDecimal;
    FdeductionAmount: TXSDecimal;
    FsettlementAmount: TXSDecimal;
    FsettlementDate: string;
    FremittanceDate: string;
    Fstatus: string;
  public
    destructor Destroy; override;
  published
    property paymentAmount:    TXSDecimal  Index (IS_UNQL) read FpaymentAmount write FpaymentAmount;
    property deductionAmount:  TXSDecimal  Index (IS_UNQL) read FdeductionAmount write FdeductionAmount;
    property settlementAmount: TXSDecimal  Index (IS_UNQL) read FsettlementAmount write FsettlementAmount;
    property settlementDate:   string      Index (IS_UNQL) read FsettlementDate write FsettlementDate;
    property remittanceDate:   string      Index (IS_UNQL) read FremittanceDate write FremittanceDate;
    property status:           string      Index (IS_UNQL) read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : DefermentSppDTO, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DefermentSppDTO = class(TRemotable)
  private
    ForderNumber: string;
    FcampaignNumber: string;
    FcreatedDate: string;
    FcargoWeightFromShipmentCompany: TXSDecimal;
    FdeferredAmount: TXSDecimal;
    FshipmentCompanyName: string;
  public
    destructor Destroy; override;
  published
    property orderNumber:                    string      Index (IS_UNQL) read ForderNumber write ForderNumber;
    property campaignNumber:                 string      Index (IS_UNQL) read FcampaignNumber write FcampaignNumber;
    property createdDate:                    string      Index (IS_UNQL) read FcreatedDate write FcreatedDate;
    property cargoWeightFromShipmentCompany: TXSDecimal  Index (IS_UNQL) read FcargoWeightFromShipmentCompany write FcargoWeightFromShipmentCompany;
    property deferredAmount:                 TXSDecimal  Index (IS_UNQL) read FdeferredAmount write FdeferredAmount;
    property shipmentCompanyName:            string      Index (IS_UNQL) read FshipmentCompanyName write FshipmentCompanyName;
  end;



  // ************************************************************************ //
  // XML       : DefermentDTO, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DefermentDTO = class(TRemotable)
  private
    FdeferredDate: string;
    Famount: TXSDecimal;
    FdefermentReasonDetail: string;
  public
    destructor Destroy; override;
  published
    property deferredDate:          string      Index (IS_UNQL) read FdeferredDate write FdeferredDate;
    property amount:                TXSDecimal  Index (IS_UNQL) read Famount write Famount;
    property defermentReasonDetail: string      Index (IS_UNQL) read FdefermentReasonDetail write FdefermentReasonDetail;
  end;

  deferments = array of DefermentDTO;           { "http://www.n11.com/ws/schemas"[Cplx] }


  // ************************************************************************ //
  // XML       : OrderItemSettlementDataList, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  OrderItemSettlementDataList = class(TRemotable)
  private
    Fmetadata: PagingData;
    ForderItemSettlements: orderItemSettlements;
    ForderItemSettlements_Specified: boolean;
    procedure SetorderItemSettlements(Index: Integer; const AorderItemSettlements: orderItemSettlements);
    function  orderItemSettlements_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property metadata:             PagingData            Index (IS_UNQL) read Fmetadata write Fmetadata;
    property orderItemSettlements: orderItemSettlements  Index (IS_OPTN or IS_UNQL) read ForderItemSettlements write SetorderItemSettlements stored orderItemSettlements_Specified;
  end;

  defermentSettlementUsages = array of DefermentSettlementUsageData;   { "http://www.n11.com/ws/schemas"[Cplx] }
  defermentSppUsages = array of DefermentSppDTO;   { "http://www.n11.com/ws/schemas"[Cplx] }


  // ************************************************************************ //
  // XML       : DefermentSettlementUsageDataList, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  DefermentSettlementUsageDataList = class(TRemotable)
  private
    FfinancialTotalDeferment: TXSDecimal;
    FtotalReturnDefermentAmount: TXSDecimal;
    Fdeferments: deferments;
    Fdeferments_Specified: boolean;
    FdefermentSppUsages: defermentSppUsages;
    FdefermentSppUsages_Specified: boolean;
    FdefermentSettlementUsages: defermentSettlementUsages;
    FdefermentSettlementUsages_Specified: boolean;
    procedure Setdeferments(Index: Integer; const Adeferments: deferments);
    function  deferments_Specified(Index: Integer): boolean;
    procedure SetdefermentSppUsages(Index: Integer; const AdefermentSppUsages: defermentSppUsages);
    function  defermentSppUsages_Specified(Index: Integer): boolean;
    procedure SetdefermentSettlementUsages(Index: Integer; const AdefermentSettlementUsages: defermentSettlementUsages);
    function  defermentSettlementUsages_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property financialTotalDeferment:    TXSDecimal                 Index (IS_UNQL) read FfinancialTotalDeferment write FfinancialTotalDeferment;
    property totalReturnDefermentAmount: TXSDecimal                 Index (IS_UNQL) read FtotalReturnDefermentAmount write FtotalReturnDefermentAmount;
    property deferments:                 deferments                 Index (IS_OPTN or IS_UNQL) read Fdeferments write Setdeferments stored deferments_Specified;
    property defermentSppUsages:         defermentSppUsages         Index (IS_OPTN or IS_UNQL) read FdefermentSppUsages write SetdefermentSppUsages stored defermentSppUsages_Specified;
    property defermentSettlementUsages:  defermentSettlementUsages  Index (IS_OPTN or IS_UNQL) read FdefermentSettlementUsages write SetdefermentSettlementUsages stored defermentSettlementUsages_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : SettlementServicePortSoap11
  // service   : SettlementServicePortService
  // port      : SettlementServicePortSoap11
  // URL       : https://api.n11.com/ws/settlementService/
  // ************************************************************************ //
  SettlementServicePort = interface(IInvokable)
  ['{FBA1AA0F-38A2-32ED-7727-55D88ED8A56F}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSettlementList(const GetSettlementListRequest: GetSettlementListRequest): GetSettlementListResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSettlementDetail(const GetSettlementDetailRequest: GetSettlementDetailRequest): GetSettlementDetailResponse; stdcall;
  end;

function GetSettlementServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): SettlementServicePort;


implementation
  uses System.SysUtils;

function GetSettlementServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): SettlementServicePort;
const
  defWSDL = 'https://api.n11.com/ws/SettlementService.wsdl';
  defURL  = 'https://api.n11.com/ws/settlementService/';
  defSvc  = 'SettlementServicePortService';
  defPrt  = 'SettlementServicePortSoap11';
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
    Result := (RIO as SettlementServicePort);
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


destructor OrderItemSettlementData.Destroy;
begin
  System.SysUtils.FreeAndNil(FadFee);
  System.SysUtils.FreeAndNil(FadFeeVat);
  System.SysUtils.FreeAndNil(Fcommission);
  System.SysUtils.FreeAndNil(FdeductionAmount);
  System.SysUtils.FreeAndNil(FpaymentAmount);
  System.SysUtils.FreeAndNil(FsellerCouponDiscount);
  System.SysUtils.FreeAndNil(FsellerDiscount);
  System.SysUtils.FreeAndNil(FsettlementAmount);
  System.SysUtils.FreeAndNil(FdefermentOfPayment);
  System.SysUtils.FreeAndNil(FcargoPrice);
  inherited Destroy;
end;

procedure OrderItemSettlementData.SetadFee(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FadFee := ATXSDecimal;
  FadFee_Specified := True;
end;

function OrderItemSettlementData.adFee_Specified(Index: Integer): boolean;
begin
  Result := FadFee_Specified;
end;

procedure OrderItemSettlementData.SetadFeeVat(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FadFeeVat := ATXSDecimal;
  FadFeeVat_Specified := True;
end;

function OrderItemSettlementData.adFeeVat_Specified(Index: Integer): boolean;
begin
  Result := FadFeeVat_Specified;
end;

procedure OrderItemSettlementData.SetbuyerEmail(Index: Integer; const Astring: string);
begin
  FbuyerEmail := Astring;
  FbuyerEmail_Specified := True;
end;

function OrderItemSettlementData.buyerEmail_Specified(Index: Integer): boolean;
begin
  Result := FbuyerEmail_Specified;
end;

procedure OrderItemSettlementData.SetbuyerName(Index: Integer; const Astring: string);
begin
  FbuyerName := Astring;
  FbuyerName_Specified := True;
end;

function OrderItemSettlementData.buyerName_Specified(Index: Integer): boolean;
begin
  Result := FbuyerName_Specified;
end;

procedure OrderItemSettlementData.Setcommission(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  Fcommission := ATXSDecimal;
  Fcommission_Specified := True;
end;

function OrderItemSettlementData.commission_Specified(Index: Integer): boolean;
begin
  Result := Fcommission_Specified;
end;

procedure OrderItemSettlementData.SetcompletedDate(Index: Integer; const Astring: string);
begin
  FcompletedDate := Astring;
  FcompletedDate_Specified := True;
end;

function OrderItemSettlementData.completedDate_Specified(Index: Integer): boolean;
begin
  Result := FcompletedDate_Specified;
end;

procedure OrderItemSettlementData.SetdeductionAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FdeductionAmount := ATXSDecimal;
  FdeductionAmount_Specified := True;
end;

function OrderItemSettlementData.deductionAmount_Specified(Index: Integer): boolean;
begin
  Result := FdeductionAmount_Specified;
end;

procedure OrderItemSettlementData.SetorderItemId(Index: Integer; const AInt64: Int64);
begin
  ForderItemId := AInt64;
  ForderItemId_Specified := True;
end;

function OrderItemSettlementData.orderItemId_Specified(Index: Integer): boolean;
begin
  Result := ForderItemId_Specified;
end;

procedure OrderItemSettlementData.SetorderNumber(Index: Integer; const Astring: string);
begin
  ForderNumber := Astring;
  ForderNumber_Specified := True;
end;

function OrderItemSettlementData.orderNumber_Specified(Index: Integer): boolean;
begin
  Result := ForderNumber_Specified;
end;

procedure OrderItemSettlementData.SetpaymentAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FpaymentAmount := ATXSDecimal;
  FpaymentAmount_Specified := True;
end;

function OrderItemSettlementData.paymentAmount_Specified(Index: Integer): boolean;
begin
  Result := FpaymentAmount_Specified;
end;

procedure OrderItemSettlementData.SetpaymentDate(Index: Integer; const Astring: string);
begin
  FpaymentDate := Astring;
  FpaymentDate_Specified := True;
end;

function OrderItemSettlementData.paymentDate_Specified(Index: Integer): boolean;
begin
  Result := FpaymentDate_Specified;
end;

procedure OrderItemSettlementData.SetproductId(Index: Integer; const AInt64: Int64);
begin
  FproductId := AInt64;
  FproductId_Specified := True;
end;

function OrderItemSettlementData.productId_Specified(Index: Integer): boolean;
begin
  Result := FproductId_Specified;
end;

procedure OrderItemSettlementData.SetproductName(Index: Integer; const Astring: string);
begin
  FproductName := Astring;
  FproductName_Specified := True;
end;

function OrderItemSettlementData.productName_Specified(Index: Integer): boolean;
begin
  Result := FproductName_Specified;
end;

procedure OrderItemSettlementData.SetremittanceDate(Index: Integer; const Astring: string);
begin
  FremittanceDate := Astring;
  FremittanceDate_Specified := True;
end;

function OrderItemSettlementData.remittanceDate_Specified(Index: Integer): boolean;
begin
  Result := FremittanceDate_Specified;
end;

procedure OrderItemSettlementData.SetsellerCouponDiscount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FsellerCouponDiscount := ATXSDecimal;
  FsellerCouponDiscount_Specified := True;
end;

function OrderItemSettlementData.sellerCouponDiscount_Specified(Index: Integer): boolean;
begin
  Result := FsellerCouponDiscount_Specified;
end;

procedure OrderItemSettlementData.SetsellerDiscount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FsellerDiscount := ATXSDecimal;
  FsellerDiscount_Specified := True;
end;

function OrderItemSettlementData.sellerDiscount_Specified(Index: Integer): boolean;
begin
  Result := FsellerDiscount_Specified;
end;

procedure OrderItemSettlementData.SetsettlementAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FsettlementAmount := ATXSDecimal;
  FsettlementAmount_Specified := True;
end;

function OrderItemSettlementData.settlementAmount_Specified(Index: Integer): boolean;
begin
  Result := FsettlementAmount_Specified;
end;

procedure OrderItemSettlementData.SetsettlementDate(Index: Integer; const Astring: string);
begin
  FsettlementDate := Astring;
  FsettlementDate_Specified := True;
end;

function OrderItemSettlementData.settlementDate_Specified(Index: Integer): boolean;
begin
  Result := FsettlementDate_Specified;
end;

procedure OrderItemSettlementData.SetshippingDate(Index: Integer; const Astring: string);
begin
  FshippingDate := Astring;
  FshippingDate_Specified := True;
end;

function OrderItemSettlementData.shippingDate_Specified(Index: Integer): boolean;
begin
  Result := FshippingDate_Specified;
end;

procedure OrderItemSettlementData.SettrackingNumber(Index: Integer; const Astring: string);
begin
  FtrackingNumber := Astring;
  FtrackingNumber_Specified := True;
end;

function OrderItemSettlementData.trackingNumber_Specified(Index: Integer): boolean;
begin
  Result := FtrackingNumber_Specified;
end;

procedure OrderItemSettlementData.SetdefermentOfPayment(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FdefermentOfPayment := ATXSDecimal;
  FdefermentOfPayment_Specified := True;
end;

function OrderItemSettlementData.defermentOfPayment_Specified(Index: Integer): boolean;
begin
  Result := FdefermentOfPayment_Specified;
end;

procedure OrderItemSettlementData.SetcargoPrice(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FcargoPrice := ATXSDecimal;
  FcargoPrice_Specified := True;
end;

function OrderItemSettlementData.cargoPrice_Specified(Index: Integer): boolean;
begin
  Result := FcargoPrice_Specified;
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

constructor GetSettlementDetailRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSettlementDetailRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor GetSettlementDetailResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSettlementDetailResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FsettlementDetail);
  inherited Destroy;
end;

constructor GetSettlementListRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSettlementListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor GetSettlementListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSettlementListResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FsettlementListData);
  inherited Destroy;
end;

destructor DefermentSettlementUsageData.Destroy;
begin
  System.SysUtils.FreeAndNil(Famount);
  inherited Destroy;
end;

destructor SettlementDetailData.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsettlement);
  System.SysUtils.FreeAndNil(ForderItemSettlementDataList);
  System.SysUtils.FreeAndNil(FdefermentSettlementUsageDataList);
  inherited Destroy;
end;

destructor SettlementDetailSummaryData.Destroy;
begin
  System.SysUtils.FreeAndNil(FsalesAmount);
  System.SysUtils.FreeAndNil(FsellerWithdraw);
  System.SysUtils.FreeAndNil(FreleaseDeferment);
  System.SysUtils.FreeAndNil(FdeductionAmount);
  System.SysUtils.FreeAndNil(FdefermentOfPayment);
  System.SysUtils.FreeAndNil(FpaymentToECash);
  System.SysUtils.FreeAndNil(Fremittance);
  inherited Destroy;
end;

destructor SettlementSummaryDataList.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FsettlementList)-1 do
    System.SysUtils.FreeAndNil(FsettlementList[I]);
  System.SetLength(FsettlementList, 0);
  System.SysUtils.FreeAndNil(Fmetadata);
  inherited Destroy;
end;

destructor SettlementSummaryData.Destroy;
begin
  System.SysUtils.FreeAndNil(FpaymentAmount);
  System.SysUtils.FreeAndNil(FdeductionAmount);
  System.SysUtils.FreeAndNil(FsettlementAmount);
  inherited Destroy;
end;

destructor DefermentSppDTO.Destroy;
begin
  System.SysUtils.FreeAndNil(FcargoWeightFromShipmentCompany);
  System.SysUtils.FreeAndNil(FdeferredAmount);
  inherited Destroy;
end;

destructor DefermentDTO.Destroy;
begin
  System.SysUtils.FreeAndNil(Famount);
  inherited Destroy;
end;

destructor OrderItemSettlementDataList.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(ForderItemSettlements)-1 do
    System.SysUtils.FreeAndNil(ForderItemSettlements[I]);
  System.SetLength(ForderItemSettlements, 0);
  System.SysUtils.FreeAndNil(Fmetadata);
  inherited Destroy;
end;

procedure OrderItemSettlementDataList.SetorderItemSettlements(Index: Integer; const AorderItemSettlements: orderItemSettlements);
begin
  ForderItemSettlements := AorderItemSettlements;
  ForderItemSettlements_Specified := True;
end;

function OrderItemSettlementDataList.orderItemSettlements_Specified(Index: Integer): boolean;
begin
  Result := ForderItemSettlements_Specified;
end;

destructor DefermentSettlementUsageDataList.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdeferments)-1 do
    System.SysUtils.FreeAndNil(Fdeferments[I]);
  System.SetLength(Fdeferments, 0);
  for I := 0 to System.Length(FdefermentSppUsages)-1 do
    System.SysUtils.FreeAndNil(FdefermentSppUsages[I]);
  System.SetLength(FdefermentSppUsages, 0);
  for I := 0 to System.Length(FdefermentSettlementUsages)-1 do
    System.SysUtils.FreeAndNil(FdefermentSettlementUsages[I]);
  System.SetLength(FdefermentSettlementUsages, 0);
  System.SysUtils.FreeAndNil(FfinancialTotalDeferment);
  System.SysUtils.FreeAndNil(FtotalReturnDefermentAmount);
  inherited Destroy;
end;

procedure DefermentSettlementUsageDataList.Setdeferments(Index: Integer; const Adeferments: deferments);
begin
  Fdeferments := Adeferments;
  Fdeferments_Specified := True;
end;

function DefermentSettlementUsageDataList.deferments_Specified(Index: Integer): boolean;
begin
  Result := Fdeferments_Specified;
end;

procedure DefermentSettlementUsageDataList.SetdefermentSppUsages(Index: Integer; const AdefermentSppUsages: defermentSppUsages);
begin
  FdefermentSppUsages := AdefermentSppUsages;
  FdefermentSppUsages_Specified := True;
end;

function DefermentSettlementUsageDataList.defermentSppUsages_Specified(Index: Integer): boolean;
begin
  Result := FdefermentSppUsages_Specified;
end;

procedure DefermentSettlementUsageDataList.SetdefermentSettlementUsages(Index: Integer; const AdefermentSettlementUsages: defermentSettlementUsages);
begin
  FdefermentSettlementUsages := AdefermentSettlementUsages;
  FdefermentSettlementUsages_Specified := True;
end;

function DefermentSettlementUsageDataList.defermentSettlementUsages_Specified(Index: Integer): boolean;
begin
  Result := FdefermentSettlementUsages_Specified;
end;

initialization
  { SettlementServicePort }
  InvRegistry.RegisterInterface(TypeInfo(SettlementServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(SettlementServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(SettlementServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(SettlementServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(OrderItemSettlementData, 'http://www.n11.com/ws/schemas', 'OrderItemSettlementData');
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(GetSettlementDetailRequest, 'http://www.n11.com/ws/schemas', 'GetSettlementDetailRequest');
  RemClassRegistry.RegisterSerializeOptions(GetSettlementDetailRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSettlementDetailResponse, 'http://www.n11.com/ws/schemas', 'GetSettlementDetailResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSettlementDetailResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_SettlementSummaryData), 'http://www.n11.com/ws/schemas', 'Array_Of_SettlementSummaryData');
  RemClassRegistry.RegisterXSClass(GetSettlementListRequest, 'http://www.n11.com/ws/schemas', 'GetSettlementListRequest');
  RemClassRegistry.RegisterSerializeOptions(GetSettlementListRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSettlementListResponse, 'http://www.n11.com/ws/schemas', 'GetSettlementListResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSettlementListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DefermentSettlementUsageData, 'http://www.n11.com/ws/schemas', 'DefermentSettlementUsageData');
  RemClassRegistry.RegisterXSClass(SettlementDetailData, 'http://www.n11.com/ws/schemas', 'SettlementDetailData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(orderItemSettlements), 'http://www.n11.com/ws/schemas', 'orderItemSettlements');
  RemClassRegistry.RegisterXSClass(SettlementDetailSummaryData, 'http://www.n11.com/ws/schemas', 'SettlementDetailSummaryData');
  RemClassRegistry.RegisterXSClass(PagingData, 'http://www.n11.com/ws/schemas', 'PagingData');
  RemClassRegistry.RegisterXSClass(RequestPagingData, 'http://www.n11.com/ws/schemas', 'RequestPagingData');
  RemClassRegistry.RegisterXSClass(SettlementSummaryDataList, 'http://www.n11.com/ws/schemas', 'SettlementSummaryDataList');
  RemClassRegistry.RegisterXSClass(SettlementSummaryData, 'http://www.n11.com/ws/schemas', 'SettlementSummaryData');
  RemClassRegistry.RegisterXSClass(DefermentSppDTO, 'http://www.n11.com/ws/schemas', 'DefermentSppDTO');
  RemClassRegistry.RegisterXSClass(DefermentDTO, 'http://www.n11.com/ws/schemas', 'DefermentDTO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(deferments), 'http://www.n11.com/ws/schemas', 'deferments');
  RemClassRegistry.RegisterXSClass(OrderItemSettlementDataList, 'http://www.n11.com/ws/schemas', 'OrderItemSettlementDataList');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OrderItemSettlementDataList), 'orderItemSettlements', '[ArrayItemName="orderItemSettlement"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(defermentSettlementUsages), 'http://www.n11.com/ws/schemas', 'defermentSettlementUsages');
  RemClassRegistry.RegisterXSInfo(TypeInfo(defermentSppUsages), 'http://www.n11.com/ws/schemas', 'defermentSppUsages');
  RemClassRegistry.RegisterXSClass(DefermentSettlementUsageDataList, 'http://www.n11.com/ws/schemas', 'DefermentSettlementUsageDataList');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DefermentSettlementUsageDataList), 'deferments', '[ArrayItemName="deferment"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DefermentSettlementUsageDataList), 'defermentSppUsages', '[ArrayItemName="defermentSppUsage"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DefermentSettlementUsageDataList), 'defermentSettlementUsages', '[ArrayItemName="defermentSettlementUsage"]');

end.