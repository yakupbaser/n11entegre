// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://api.n11.com/ws/TicketService.wsdl
//  >Import : https://api.n11.com/ws/TicketService.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (30.01.2020 21:14:07 - - $Rev: 96726 $)
// ************************************************************************ //

unit TicketService;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TicketAnswerResponse = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketReadResponse   = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketCreateResponse = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketReasonsRequest = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketListingBelongsToResponse = class;       { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketListingAssignToResponse = class;        { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  ResultInfo           = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  Authentication       = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  TicketReasonsResponse = class;                { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  QuestionGroupDto     = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  PersonDto            = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  AnswerDto            = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  ReasonDto            = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  TicketCreateRequest  = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketReadRequest    = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketListingBelongsToSellerRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketAnswerRequest  = class;                 { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketListingAssignedToSellerRequest = class;   { "http://www.n11.com/ws/schemas"[Lit][GblElm] }
  TicketDto            = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }
  TicketStatus         = class;                 { "http://www.n11.com/ws/schemas"[GblCplx] }



  // ************************************************************************ //
  // XML       : TicketAnswerResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketAnswerResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : TicketReadResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketReadResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : TicketCreateResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketCreateResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: ResultInfo  Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : TicketReasonsRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketReasonsRequest = class(TRemotable)
  private
    Fauth: Authentication;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth: Authentication  Index (IS_UNQL) read Fauth write Fauth;
  end;

  TicketsDtoList = array of TicketDto;          { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : TicketListingBelongsToResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketListingBelongsToResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fticket: TicketDto;
    FticketList: TicketsDtoList;
    Fcreator: PersonDto;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo      Index (IS_UNQL) read Fresult write Fresult;
    property ticket:     TicketDto       Index (IS_UNQL) read Fticket write Fticket;
    property ticketList: TicketsDtoList  Index (IS_UNQL) read FticketList write FticketList;
    property creator:    PersonDto       Index (IS_UNQL) read Fcreator write Fcreator;
  end;



  // ************************************************************************ //
  // XML       : TicketListingAssignToResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketListingAssignToResponse = class(TRemotable)
  private
    Fresult: ResultInfo;
    Fticket: TicketDto;
    FticketList: TicketsDtoList;
    Fseller: PersonDto;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result:     ResultInfo      Index (IS_UNQL) read Fresult write Fresult;
    property ticket:     TicketDto       Index (IS_UNQL) read Fticket write Fticket;
    property ticketList: TicketsDtoList  Index (IS_UNQL) read FticketList write FticketList;
    property seller:     PersonDto       Index (IS_UNQL) read Fseller write Fseller;
  end;

  AnswerDtoList = array of AnswerDto;           { "http://www.n11.com/ws/schemas"[GblCplx] }


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

  ReasonDtoList = array of ReasonDto;           { "http://www.n11.com/ws/schemas"[GblCplx] }


  // ************************************************************************ //
  // XML       : TicketReasonsResponse, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketReasonsResponse = class(TRemotable)
  private
    FallTicketReasons: ReasonDtoList;
    Freason: ReasonDto;
    Fresult: ResultInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property allTicketReasons: ReasonDtoList  Index (IS_UNQL) read FallTicketReasons write FallTicketReasons;
    property reason:           ReasonDto      Index (IS_UNQL) read Freason write Freason;
    property result:           ResultInfo     Index (IS_UNQL) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : QuestionGroupDto, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  QuestionGroupDto = class(TRemotable)
  private
    FId: Int64;
    Fname_: string;
  published
    property Id:    Int64   Index (IS_UNQL) read FId write FId;
    property name_: string  Index (IS_UNQL) read Fname_ write Fname_;
  end;



  // ************************************************************************ //
  // XML       : PersonDto, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  PersonDto = class(TRemotable)
  private
    FId: Int64;
    Fname_: string;
    FnickName: string;
    Femail: string;
    Fphone: string;
  published
    property Id:       Int64   Index (IS_UNQL) read FId write FId;
    property name_:    string  Index (IS_UNQL) read Fname_ write Fname_;
    property nickName: string  Index (IS_UNQL) read FnickName write FnickName;
    property email:    string  Index (IS_UNQL) read Femail write Femail;
    property phone:    string  Index (IS_UNQL) read Fphone write Fphone;
  end;



  // ************************************************************************ //
  // XML       : AnswerDto, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  AnswerDto = class(TRemotable)
  private
    FId: Int64;
    Fcontent: string;
    FcreateDate: string;
    Fcreator: PersonDto;
  public
    destructor Destroy; override;
  published
    property Id:         Int64      Index (IS_UNQL) read FId write FId;
    property content:    string     Index (IS_UNQL) read Fcontent write Fcontent;
    property createDate: string     Index (IS_UNQL) read FcreateDate write FcreateDate;
    property creator:    PersonDto  Index (IS_UNQL) read Fcreator write Fcreator;
  end;



  // ************************************************************************ //
  // XML       : ReasonDto, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  ReasonDto = class(TRemotable)
  private
    Fid: Int64;
    Fname_: string;
    FisRequired: string;
  published
    property id:         Int64   Index (IS_UNQL) read Fid write Fid;
    property name_:      string  Index (IS_UNQL) read Fname_ write Fname_;
    property isRequired: string  Index (IS_NLBL or IS_UNQL) read FisRequired write FisRequired;
  end;



  // ************************************************************************ //
  // XML       : TicketCreateRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketCreateRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FreasonId: Int64;
    FsellerId: Int64;
    Fheader: string;
    Fcontent: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:     Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property reasonId: Int64           Index (IS_UNQL) read FreasonId write FreasonId;
    property sellerId: Int64           Index (IS_UNQL) read FsellerId write FsellerId;
    property header:   string          Index (IS_UNQL) read Fheader write Fheader;
    property content:  string          Index (IS_UNQL) read Fcontent write Fcontent;
  end;



  // ************************************************************************ //
  // XML       : TicketReadRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketReadRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FticketId: Int64;
    FsellerId: Int64;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:     Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property ticketId: Int64           Index (IS_UNQL) read FticketId write FticketId;
    property sellerId: Int64           Index (IS_UNQL) read FsellerId write FsellerId;
  end;



  // ************************************************************************ //
  // XML       : TicketListingBelongsToSellerRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketListingBelongsToSellerRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FsellerId: Int64;
    Ffirst: Integer;
    FpageSize: Integer;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:     Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property sellerId: Int64           Index (IS_UNQL) read FsellerId write FsellerId;
    property first:    Integer         Index (IS_UNQL) read Ffirst write Ffirst;
    property pageSize: Integer         Index (IS_UNQL) read FpageSize write FpageSize;
  end;



  // ************************************************************************ //
  // XML       : TicketAnswerRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketAnswerRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FsellerId: Int64;
    FticketId: Int64;
    Fcontent: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:     Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property sellerId: Int64           Index (IS_UNQL) read FsellerId write FsellerId;
    property ticketId: Int64           Index (IS_UNQL) read FticketId write FticketId;
    property content:  string          Index (IS_UNQL) read Fcontent write Fcontent;
  end;



  // ************************************************************************ //
  // XML       : TicketListingAssignedToSellerRequest, global, <element>
  // Namespace : http://www.n11.com/ws/schemas
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TicketListingAssignedToSellerRequest = class(TRemotable)
  private
    Fauth: Authentication;
    FsellerId: Int64;
    Ffirst: Integer;
    FpageSize: Integer;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property auth:     Authentication  Index (IS_UNQL) read Fauth write Fauth;
    property sellerId: Int64           Index (IS_UNQL) read FsellerId write FsellerId;
    property first:    Integer         Index (IS_UNQL) read Ffirst write Ffirst;
    property pageSize: Integer         Index (IS_UNQL) read FpageSize write FpageSize;
  end;



  // ************************************************************************ //
  // XML       : TicketDto, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  TicketDto = class(TRemotable)
  private
    FticketId: Int64;
    Fheader: string;
    Fcontent: string;
    FcreateDate: TXSDate;
    FticketStatus: TicketStatus;
    Fcreator: PersonDto;
    Fseller: PersonDto;
    Freason: QuestionGroupDto;
    Fanswers: AnswerDtoList;
  public
    destructor Destroy; override;
  published
    property ticketId:     Int64             Index (IS_UNQL) read FticketId write FticketId;
    property header:       string            Index (IS_UNQL) read Fheader write Fheader;
    property content:      string            Index (IS_UNQL) read Fcontent write Fcontent;
    property createDate:   TXSDate           Index (IS_UNQL) read FcreateDate write FcreateDate;
    property ticketStatus: TicketStatus      Index (IS_UNQL) read FticketStatus write FticketStatus;
    property creator:      PersonDto         Index (IS_UNQL) read Fcreator write Fcreator;
    property seller:       PersonDto         Index (IS_UNQL) read Fseller write Fseller;
    property reason:       QuestionGroupDto  Index (IS_UNQL) read Freason write Freason;
    property answers:      AnswerDtoList     Index (IS_UNQL) read Fanswers write Fanswers;
  end;



  // ************************************************************************ //
  // XML       : TicketStatus, global, <complexType>
  // Namespace : http://www.n11.com/ws/schemas
  // ************************************************************************ //
  TicketStatus = class(TRemotable)
  private
    FOPENED: string;
    FCLOSED: string;
    FWAITING: string;
  published
    property OPENED:  string  Index (IS_UNQL) read FOPENED write FOPENED;
    property CLOSED:  string  Index (IS_UNQL) read FCLOSED write FCLOSED;
    property WAITING: string  Index (IS_UNQL) read FWAITING write FWAITING;
  end;


  // ************************************************************************ //
  // Namespace : http://www.n11.com/ws/schemas
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : TicketServicePortSoap11
  // service   : TicketServicePortService
  // port      : TicketServicePortSoap11
  // URL       : https://api.n11.com/ws/ticketService/
  // ************************************************************************ //
  TicketServicePort = interface(IInvokable)
  ['{935A6872-6789-3B1F-413A-83BDC10ED9B0}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function TicketListingBelongsToSeller(const TicketListingBelongsToSellerRequest: TicketListingBelongsToSellerRequest): TicketListingBelongsToResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  TicketListingBelongsTo: TicketListingBelongsToResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function TicketListingAssignedToSeller(const TicketListingAssignedToSellerRequest: TicketListingAssignedToSellerRequest): TicketListingAssignToResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  TicketListingAssignTo: TicketListingAssignToResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  TicketAnswer(const TicketAnswerRequest: TicketAnswerRequest): TicketAnswerResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  TicketCreate(const TicketCreateRequest: TicketCreateRequest): TicketCreateResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  TicketReasons(const TicketReasonsRequest: TicketReasonsRequest): TicketReasonsResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  TicketRead(const TicketReadRequest: TicketReadRequest): TicketReadResponse; stdcall;
  end;

function GetTicketServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TicketServicePort;


implementation
  uses System.SysUtils;

function GetTicketServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TicketServicePort;
const
  defWSDL = 'https://api.n11.com/ws/TicketService.wsdl';
  defURL  = 'https://api.n11.com/ws/ticketService/';
  defSvc  = 'TicketServicePortService';
  defPrt  = 'TicketServicePortSoap11';
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
    Result := (RIO as TicketServicePort);
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


constructor TicketAnswerResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketAnswerResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor TicketReadResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketReadResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor TicketCreateResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketCreateResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

constructor TicketReasonsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketReasonsRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor TicketListingBelongsToResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketListingBelongsToResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FticketList)-1 do
    System.SysUtils.FreeAndNil(FticketList[I]);
  System.SetLength(FticketList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fticket);
  System.SysUtils.FreeAndNil(Fcreator);
  inherited Destroy;
end;

constructor TicketListingAssignToResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketListingAssignToResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FticketList)-1 do
    System.SysUtils.FreeAndNil(FticketList[I]);
  System.SetLength(FticketList, 0);
  System.SysUtils.FreeAndNil(Fresult);
  System.SysUtils.FreeAndNil(Fticket);
  System.SysUtils.FreeAndNil(Fseller);
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

constructor TicketReasonsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketReasonsResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FallTicketReasons)-1 do
    System.SysUtils.FreeAndNil(FallTicketReasons[I]);
  System.SetLength(FallTicketReasons, 0);
  System.SysUtils.FreeAndNil(Freason);
  System.SysUtils.FreeAndNil(Fresult);
  inherited Destroy;
end;

destructor AnswerDto.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcreator);
  inherited Destroy;
end;

constructor TicketCreateRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketCreateRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor TicketReadRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketReadRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor TicketListingBelongsToSellerRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketListingBelongsToSellerRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor TicketAnswerRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketAnswerRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

constructor TicketListingAssignedToSellerRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TicketListingAssignedToSellerRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

destructor TicketDto.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fanswers)-1 do
    System.SysUtils.FreeAndNil(Fanswers[I]);
  System.SetLength(Fanswers, 0);
  System.SysUtils.FreeAndNil(FcreateDate);
  System.SysUtils.FreeAndNil(FticketStatus);
  System.SysUtils.FreeAndNil(Fcreator);
  System.SysUtils.FreeAndNil(Fseller);
  System.SysUtils.FreeAndNil(Freason);
  inherited Destroy;
end;

initialization
  { TicketServicePort }
  InvRegistry.RegisterInterface(TypeInfo(TicketServicePort), 'http://www.n11.com/ws/schemas', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TicketServicePort), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TicketServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(TicketServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(TicketAnswerResponse, 'http://www.n11.com/ws/schemas', 'TicketAnswerResponse');
  RemClassRegistry.RegisterSerializeOptions(TicketAnswerResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketReadResponse, 'http://www.n11.com/ws/schemas', 'TicketReadResponse');
  RemClassRegistry.RegisterSerializeOptions(TicketReadResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketCreateResponse, 'http://www.n11.com/ws/schemas', 'TicketCreateResponse');
  RemClassRegistry.RegisterSerializeOptions(TicketCreateResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketReasonsRequest, 'http://www.n11.com/ws/schemas', 'TicketReasonsRequest');
  RemClassRegistry.RegisterSerializeOptions(TicketReasonsRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(TicketsDtoList), 'http://www.n11.com/ws/schemas', 'TicketsDtoList');
  RemClassRegistry.RegisterXSClass(TicketListingBelongsToResponse, 'http://www.n11.com/ws/schemas', 'TicketListingBelongsToResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TicketListingBelongsToResponse), 'ticketList', '[ArrayItemName="ticket"]');
  RemClassRegistry.RegisterSerializeOptions(TicketListingBelongsToResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketListingAssignToResponse, 'http://www.n11.com/ws/schemas', 'TicketListingAssignToResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TicketListingAssignToResponse), 'ticketList', '[ArrayItemName="ticket"]');
  RemClassRegistry.RegisterSerializeOptions(TicketListingAssignToResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(AnswerDtoList), 'http://www.n11.com/ws/schemas', 'AnswerDtoList');
  RemClassRegistry.RegisterXSClass(ResultInfo, 'http://www.n11.com/ws/schemas', 'ResultInfo');
  RemClassRegistry.RegisterXSClass(Authentication, 'http://www.n11.com/ws/schemas', 'Authentication');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ReasonDtoList), 'http://www.n11.com/ws/schemas', 'ReasonDtoList');
  RemClassRegistry.RegisterXSClass(TicketReasonsResponse, 'http://www.n11.com/ws/schemas', 'TicketReasonsResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TicketReasonsResponse), 'allTicketReasons', '[ArrayItemName="reason"]');
  RemClassRegistry.RegisterSerializeOptions(TicketReasonsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(QuestionGroupDto, 'http://www.n11.com/ws/schemas', 'QuestionGroupDto');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(QuestionGroupDto), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(PersonDto, 'http://www.n11.com/ws/schemas', 'PersonDto');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonDto), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(AnswerDto, 'http://www.n11.com/ws/schemas', 'AnswerDto');
  RemClassRegistry.RegisterXSClass(ReasonDto, 'http://www.n11.com/ws/schemas', 'ReasonDto');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReasonDto), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(TicketCreateRequest, 'http://www.n11.com/ws/schemas', 'TicketCreateRequest');
  RemClassRegistry.RegisterSerializeOptions(TicketCreateRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketReadRequest, 'http://www.n11.com/ws/schemas', 'TicketReadRequest');
  RemClassRegistry.RegisterSerializeOptions(TicketReadRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketListingBelongsToSellerRequest, 'http://www.n11.com/ws/schemas', 'TicketListingBelongsToSellerRequest');
  RemClassRegistry.RegisterSerializeOptions(TicketListingBelongsToSellerRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketAnswerRequest, 'http://www.n11.com/ws/schemas', 'TicketAnswerRequest');
  RemClassRegistry.RegisterSerializeOptions(TicketAnswerRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketListingAssignedToSellerRequest, 'http://www.n11.com/ws/schemas', 'TicketListingAssignedToSellerRequest');
  RemClassRegistry.RegisterSerializeOptions(TicketListingAssignedToSellerRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TicketDto, 'http://www.n11.com/ws/schemas', 'TicketDto');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TicketDto), 'answers', '[ArrayItemName="answer"]');
  RemClassRegistry.RegisterXSClass(TicketStatus, 'http://www.n11.com/ws/schemas', 'TicketStatus');

end.