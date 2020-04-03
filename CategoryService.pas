// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/CategoryService.wsdl
//  >Import : https://api.n11.com/ws/CategoryService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (3.01.2020 22:03:15 - - $Rev: 96726 $)
// ************************************************************************ //

unit CategoryService;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  GetTopLevelCategoriesRequest = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  RequestPagingData    = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetCategoryAttributesResponse = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetParentCategoryResponse = class;            { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetSubCategoriesResponse = class;             { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  PagingData           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetSubCategoriesRequest = class;              { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetCategoryAttributeValueRequest = class;     { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetCategoryAttributesRequest = class;         { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetParentCategoryRequest = class;             { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetCategoryAttributesIdRequest = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ParentCategoryData   = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  SubCategory          = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  CategoryAttributeValueData = class;           { "http://www.n11.com/ws/schemas"[GblCplx] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  CategoryData         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  SubCategoryData      = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ParentCategory       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  CategoryProductAttributeValueData = class;    { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetCategoryAttributeValueResponse = class;    { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  CategoryAttributeData = class;                { "http://www.n11.com/ws/schemas"[GblCplx] }
  GetTopLevelCategoriesResponse = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  GetCategoryAttributesIdResponse = class;      { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  CategoryProductAttributeData = class;         { "http://www.n11.com/ws/schemas"[GblCplx] }



  // ************************************************************************ //
  // XML       : GetTopLevelCategoriesRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTopLevelCategoriesRequest = class(TRemotable)
  private
    Fauth: Authentication;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth: Authentication  Index (IS_UNQL) read Fauth write Fauth;
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
  // XML       : GetCategoryAttributesResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCategoryAttributesResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fcategory: CategoryData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:   ResultInfo    Index (IS_UNQL) read Fresult write Fresult;
    property category: CategoryData  Index (IS_UNQL) read Fcategory write Fcategory;
  end;



  // ************************************************************************ //
  // XML       : GetParentCategoryResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetParentCategoryResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fcategory: ParentCategoryData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:   ResultInfo          Index (IS_UNQL) read Fresult write Fresult;
    property category: ParentCategoryData  Index (IS_UNQL) read Fcategory write Fcategory;
  end;

  Array_Of_SubCategoryData = array of SubCategoryData;   { "http://www.n11.com/ws/schemas"[GblUbnd] }


  // ************************************************************************ //
  // XML       : GetSubCategoriesResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSubCategoriesResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fcategory: Array_Of_SubCategoryData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:   ResultInfo                Index (IS_UNQL) read Fresult write Fresult;
    property category: Array_Of_SubCategoryData  Index (IS_UNBD or IS_UNQL) read Fcategory write Fcategory;
  end;

  CategoryAttributeList = array of CategoryAttributeData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


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
  // XML       : GetSubCategoriesRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSubCategoriesRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FcategoryId: Int64;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property categoryId: Int64           Index (IS_UNQL) read FcategoryId write FcategoryId;
  end;



  // ************************************************************************ //
  // XML       : GetCategoryAttributeValueRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCategoryAttributeValueRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FcategoryProductAttributeId: Int64;
    FpagingData: RequestPagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:                       Authentication     Index (IS_UNQL) read Fauth write Fauth;
    property categoryProductAttributeId: Int64              Index (IS_UNQL) read FcategoryProductAttributeId write FcategoryProductAttributeId;
    property pagingData:                 RequestPagingData  Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : GetCategoryAttributesRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCategoryAttributesRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FcategoryId: Int64;
    FpagingData: RequestPagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication     Index (IS_UNQL) read Fauth write Fauth;
    property categoryId: Int64              Index (IS_UNQL) read FcategoryId write FcategoryId;
    property pagingData: RequestPagingData  Index (IS_UNQL) read FpagingData write FpagingData;
  end;



  // ************************************************************************ //
  // XML       : GetParentCategoryRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetParentCategoryRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FcategoryId: Int64;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property categoryId: Int64           Index (IS_UNQL) read FcategoryId write FcategoryId;
  end;



  // ************************************************************************ //
  // XML       : GetCategoryAttributesIdRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCategoryAttributesIdRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FcategoryId: Int64;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:       Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property categoryId: Int64           Index (IS_UNQL) read FcategoryId write FcategoryId;
  end;



  // ************************************************************************ //
  // XML       : ParentCategoryData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ParentCategoryData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FparentCategory: ParentCategory;
  public
    destructor Destroy; override;
  published
    property id:             Int64           Index (IS_UNQL) read Fid write Fid;
    property name_:          string          Index (IS_UNQL) read Fname_ write Fname_;
    property parentCategory: ParentCategory  Index (IS_UNQL) read FparentCategory write FparentCategory;
  end;



  // ************************************************************************ //
  // XML       : SubCategory, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SubCategory = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
  published
    property id:    Int64   Index (IS_UNQL) read Fid write Fid;
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
  end;



  // ************************************************************************ //
  // XML       : CategoryAttributeValueData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CategoryAttributeValueData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FdependedName: string;
  published
    property id:           Int64   Index (IS_UNQL) read Fid write Fid;
    property name_:        string  Index (IS_UNQL) read Fname_ write Fname_;
    property dependedName: string  Index (IS_NLBL or IS_UNQL) read FdependedName write FdependedName;
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

  SubCategoryList = array of SubCategory;       { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : CategoryData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CategoryData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FparentCategory: CategoryData;
    FsubCategoryList: SubCategoryList;
    FattributeList: CategoryAttributeList;
    Fmetadata: PagingData;
  public
    destructor Destroy; override;
  published
    property id:              Int64                  Index (IS_UNQL) read Fid write Fid;
    property name_:           string                 Index (IS_UNQL) read Fname_ write Fname_;
    property parentCategory:  CategoryData           Index (IS_UNQL) read FparentCategory write FparentCategory;
    property subCategoryList: SubCategoryList        Index (IS_UNQL) read FsubCategoryList write FsubCategoryList;
    property attributeList:   CategoryAttributeList  Index (IS_UNQL) read FattributeList write FattributeList;
    property metadata:        PagingData             Index (IS_UNQL) read Fmetadata write Fmetadata;
  end;



  // ************************************************************************ //
  // XML       : SubCategoryData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  SubCategoryData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FsubCategoryList: SubCategoryList;
  public
    destructor Destroy; override;
  published
    property id:              Int64            Index (IS_UNQL) read Fid write Fid;
    property name_:           string           Index (IS_UNQL) read Fname_ write Fname_;
    property subCategoryList: SubCategoryList  Index (IS_UNQL) read FsubCategoryList write FsubCategoryList;
  end;



  // ************************************************************************ //
  // XML       : ParentCategory, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ParentCategory = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
  published
    property id:    Int64   Index (IS_UNQL) read Fid write Fid;
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
  end;



  // ************************************************************************ //
  // XML       : CategoryProductAttributeValueData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CategoryProductAttributeValueData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FdependedName: string;
  published
    property id:           Int64   Index (IS_UNQL) read Fid write Fid;
    property name_:        string  Index (IS_UNQL) read Fname_ write Fname_;
    property dependedName: string  Index (IS_NLBL or IS_UNQL) read FdependedName write FdependedName;
  end;

  CategoryProductAttributeValueList = array of CategoryProductAttributeValueData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetCategoryAttributeValueResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCategoryAttributeValueResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FcategoryProductAttributeValueList: CategoryProductAttributeValueList;
    FpagingData: PagingData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:                            ResultInfo                         Index (IS_UNQL) read Fresult write Fresult;
    property categoryProductAttributeValueList: CategoryProductAttributeValueList  Index (IS_UNQL) read FcategoryProductAttributeValueList write FcategoryProductAttributeValueList;
    property pagingData:                        PagingData                         Index (IS_UNQL) read FpagingData write FpagingData;
  end;

  CategoryAttributeValueList = array of CategoryAttributeValueData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : CategoryAttributeData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CategoryAttributeData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    Fmandatory: Boolean;
    FmultipleSelect: Boolean;
    FvalueList: CategoryAttributeValueList;
    Fpriority: Double;
  public
    destructor Destroy; override;
  published
    property id:             Int64                       Index (IS_UNQL) read Fid write Fid;
    property name_:          string                      Index (IS_UNQL) read Fname_ write Fname_;
    property mandatory:      Boolean                     Index (IS_UNQL) read Fmandatory write Fmandatory;
    property multipleSelect: Boolean                     Index (IS_UNQL) read FmultipleSelect write FmultipleSelect;
    property valueList:      CategoryAttributeValueList  Index (IS_UNQL) read FvalueList write FvalueList;
    property priority:       Double                      Index (IS_UNQL) read Fpriority write Fpriority;
  end;

  TopCategoryList = array of SubCategory;       { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetTopLevelCategoriesResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetTopLevelCategoriesResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FcategoryList: TopCategoryList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:       ResultInfo       Index (IS_UNQL) read Fresult write Fresult;
    property categoryList: TopCategoryList  Index (IS_UNQL) read FcategoryList write FcategoryList;
  end;

  CategoryProductAttributeList = array of CategoryProductAttributeData;   { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetCategoryAttributesIdResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCategoryAttributesIdResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    FcategoryProductAttributeList: CategoryProductAttributeList;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:                       ResultInfo                    Index (IS_UNQL) read Fresult write Fresult;
    property categoryProductAttributeList: CategoryProductAttributeList  Index (IS_UNQL) read FcategoryProductAttributeList write FcategoryProductAttributeList;
  end;



  // ************************************************************************ //
  // XML       : CategoryProductAttributeData, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  CategoryProductAttributeData = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    Fmandatory: Boolean;
    FmultipleSelect: Boolean;
  published
    property id:             Int64    Index (IS_UNQL) read Fid write Fid;
    property name_:          string   Index (IS_UNQL) read Fname_ write Fname_;
    property mandatory:      Boolean  Index (IS_UNQL) read Fmandatory write Fmandatory;
    property multipleSelect: Boolean  Index (IS_UNQL) read FmultipleSelect write FmultipleSelect;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : CategoryServicePortSoap11
  // service   : CategoryServicePortService
  // port      : CategoryServicePortSoap11
  // URL       : https://api.n11.com/ws/categoryService/
  // ************************************************************************ //
  CategoryServicePort = interface(IInvokable)
  ['{3D037EAB-2FB4-6F10-2E93-3B9A4E47FBC6}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetTopLevelCategories(const GetTopLevelCategoriesRequest: GetTopLevelCategoriesRequest): GetTopLevelCategoriesResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetCategoryAttributesId(const GetCategoryAttributesIdRequest: GetCategoryAttributesIdRequest): GetCategoryAttributesIdResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetCategoryAttributeValue(const GetCategoryAttributeValueRequest: GetCategoryAttributeValueRequest): GetCategoryAttributeValueResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetSubCategories(const GetSubCategoriesRequest: GetSubCategoriesRequest): GetSubCategoriesResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetCategoryAttributes(const GetCategoryAttributesRequest: GetCategoryAttributesRequest): GetCategoryAttributesResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  GetParentCategory(const GetParentCategoryRequest: GetParentCategoryRequest): GetParentCategoryResponse; stdcall;
  end;

function GetCategoryServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CategoryServicePort;


implementation
  uses System.SysUtils;

function GetCategoryServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CategoryServicePort;
const
  defWSDL = 'https://api.n11.com/ws/CategoryService.wsdl';
  defURL  = 'https://api.n11.com/ws/categoryService/';
  defSvc  = 'CategoryServicePortService';
  defPrt  = 'CategoryServicePortSoap11';
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
    Result := (RIO as CategoryServicePort);
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


constructor GetTopLevelCategoriesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTopLevelCategoriesRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetCategoryAttributesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCategoryAttributesResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fcategory);
  inherited Destroy;
end;

constructor GetParentCategoryResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetParentCategoryResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fcategory);
  inherited Destroy;
end;

constructor GetSubCategoriesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSubCategoriesResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fcategory)-1 do
    System.SysUtils.FreeAndNil(Fcategory[I]);
  System.SetLength(Fcategory, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor GetSubCategoriesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSubCategoriesRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetCategoryAttributeValueRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCategoryAttributeValueRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor GetCategoryAttributesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCategoryAttributesRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

constructor GetParentCategoryRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetParentCategoryRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor GetCategoryAttributesIdRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCategoryAttributesIdRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

destructor ParentCategoryData.Destroy;
begin
  System.SysUtils.FreeAndNil(FparentCategory);
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

destructor CategoryData.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FsubCategoryList)-1 do
    System.SysUtils.FreeAndNil(FsubCategoryList[I]);
  System.SetLength(FsubCategoryList, 0);
  for I := 0 to System.Length(FattributeList)-1 do
    System.SysUtils.FreeAndNil(FattributeList[I]);
  System.SetLength(FattributeList, 0);
  System.SysUtils.FreeAndNil(FparentCategory);
  System.SysUtils.FreeAndNil(Fmetadata);
  inherited Destroy;
end;

destructor SubCategoryData.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FsubCategoryList)-1 do
    System.SysUtils.FreeAndNil(FsubCategoryList[I]);
  System.SetLength(FsubCategoryList, 0);
  inherited Destroy;
end;

constructor GetCategoryAttributeValueResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCategoryAttributeValueResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcategoryProductAttributeValueList)-1 do
    System.SysUtils.FreeAndNil(FcategoryProductAttributeValueList[I]);
  System.SetLength(FcategoryProductAttributeValueList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(FpagingData);
  inherited Destroy;
end;

destructor CategoryAttributeData.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FvalueList)-1 do
    System.SysUtils.FreeAndNil(FvalueList[I]);
  System.SetLength(FvalueList, 0);
  inherited Destroy;
end;

constructor GetTopLevelCategoriesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetTopLevelCategoriesResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcategoryList)-1 do
    System.SysUtils.FreeAndNil(FcategoryList[I]);
  System.SetLength(FcategoryList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor GetCategoryAttributesIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCategoryAttributesIdResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcategoryProductAttributeList)-1 do
    System.SysUtils.FreeAndNil(FcategoryProductAttributeList[I]);
  System.SetLength(FcategoryProductAttributeList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

initialization
  { CategoryServicePort }
  InvRegistry.RegisterInterface(TypeInfo(CategoryServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CategoryServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(CategoryServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(CategoryServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(GetTopLevelCategoriesRequest, 'http://www.n11.com/ws/schemas', 'GetTopLevelCategoriesRequest');
  RemClassRegistry.RegisterSerializeOptions(GetTopLevelCategoriesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RequestPagingData, 'http://www.n11.com/ws/schemas', 'RequestPagingData');
  RemClassRegistry.RegisterXSClass(GetCategoryAttributesResponse, 'http://www.n11.com/ws/schemas', 'GetCategoryAttributesResponse');
  RemClassRegistry.RegisterSerializeOptions(GetCategoryAttributesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetParentCategoryResponse, 'http://www.n11.com/ws/schemas', 'GetParentCategoryResponse');
  RemClassRegistry.RegisterSerializeOptions(GetParentCategoryResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_SubCategoryData), 'http://www.n11.com/ws/schemas', 'Array_Of_SubCategoryData');
  RemClassRegistry.RegisterXSClass(GetSubCategoriesResponse, 'http://www.n11.com/ws/schemas', 'GetSubCategoriesResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSubCategoriesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(CategoryAttributeList), 'http://www.n11.com/ws/schemas', 'CategoryAttributeList');
  RemClassRegistry.RegisterXSClass(PagingData, 'http://www.n11.com/ws/schemas', 'PagingData');
  RemClassRegistry.RegisterXSClass(GetSubCategoriesRequest, 'http://www.n11.com/ws/schemas', 'GetSubCategoriesRequest');
  RemClassRegistry.RegisterSerializeOptions(GetSubCategoriesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCategoryAttributeValueRequest, 'http://www.n11.com/ws/schemas', 'GetCategoryAttributeValueRequest');
  RemClassRegistry.RegisterSerializeOptions(GetCategoryAttributeValueRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCategoryAttributesRequest, 'http://www.n11.com/ws/schemas', 'GetCategoryAttributesRequest');
  RemClassRegistry.RegisterSerializeOptions(GetCategoryAttributesRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetParentCategoryRequest, 'http://www.n11.com/ws/schemas', 'GetParentCategoryRequest');
  RemClassRegistry.RegisterSerializeOptions(GetParentCategoryRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCategoryAttributesIdRequest, 'http://www.n11.com/ws/schemas', 'GetCategoryAttributesIdRequest');
  RemClassRegistry.RegisterSerializeOptions(GetCategoryAttributesIdRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ParentCategoryData, 'http://www.n11.com/ws/schemas', 'ParentCategoryData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ParentCategoryData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(SubCategory, 'http://www.n11.com/ws/schemas', 'SubCategory');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubCategory), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(CategoryAttributeValueData, 'http://www.n11.com/ws/schemas', 'CategoryAttributeValueData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryAttributeValueData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SubCategoryList), 'http://www.n11.com/ws/schemas', 'SubCategoryList');
  RemClassRegistry.RegisterXSClass(CategoryData, 'http://www.n11.com/ws/schemas', 'CategoryData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryData), 'subCategoryList', '[ArrayItemName="subCategory"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryData), 'attributeList', '[ArrayItemName="attribute"]');
  RemClassRegistry.RegisterXSClass(SubCategoryData, 'http://www.n11.com/ws/schemas', 'SubCategoryData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubCategoryData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SubCategoryData), 'subCategoryList', '[ArrayItemName="subCategory"]');
  RemClassRegistry.RegisterXSClass(ParentCategory, 'http://www.n11.com/ws/schemas', 'ParentCategory');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ParentCategory), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(CategoryProductAttributeValueData, 'http://www.n11.com/ws/schemas', 'CategoryProductAttributeValueData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryProductAttributeValueData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CategoryProductAttributeValueList), 'http://www.n11.com/ws/schemas', 'CategoryProductAttributeValueList');
  RemClassRegistry.RegisterXSClass(GetCategoryAttributeValueResponse, 'http://www.n11.com/ws/schemas', 'GetCategoryAttributeValueResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetCategoryAttributeValueResponse), 'categoryProductAttributeValueList', '[ArrayItemName="categoryProductAttributeValue"]');
  RemClassRegistry.RegisterSerializeOptions(GetCategoryAttributeValueResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(CategoryAttributeValueList), 'http://www.n11.com/ws/schemas', 'CategoryAttributeValueList');
  RemClassRegistry.RegisterXSClass(CategoryAttributeData, 'http://www.n11.com/ws/schemas', 'CategoryAttributeData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryAttributeData), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryAttributeData), 'valueList', '[ArrayItemName="value"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TopCategoryList), 'http://www.n11.com/ws/schemas', 'TopCategoryList');
  RemClassRegistry.RegisterXSClass(GetTopLevelCategoriesResponse, 'http://www.n11.com/ws/schemas', 'GetTopLevelCategoriesResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetTopLevelCategoriesResponse), 'categoryList', '[ArrayItemName="category"]');
  RemClassRegistry.RegisterSerializeOptions(GetTopLevelCategoriesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(CategoryProductAttributeList), 'http://www.n11.com/ws/schemas', 'CategoryProductAttributeList');
  RemClassRegistry.RegisterXSClass(GetCategoryAttributesIdResponse, 'http://www.n11.com/ws/schemas', 'GetCategoryAttributesIdResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetCategoryAttributesIdResponse), 'categoryProductAttributeList', '[ArrayItemName="categoryProductAttribute"]');
  RemClassRegistry.RegisterSerializeOptions(GetCategoryAttributesIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CategoryProductAttributeData, 'http://www.n11.com/ws/schemas', 'CategoryProductAttributeData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CategoryProductAttributeData), 'name_', '[ExtName="name"]');

end.