unit N11ApiBox;

interface

uses
   CategoryService, CityService, ProductService, ProductSellingService,
   ProductStockService, OrderService, ShipmentCompanyService, ShipmentService,
   SettlementService, TicketService, Soap.InvokeRegistry, Soap.SOAPHTTPClient, Soap.XSBuiltIns,
   System.SysUtils, System.Generics.Collections;

type
TProductParams = record
       strUrl: String;
       strSellerStockCode: String;
       strSellerStockCode1: String;
       strAttributeName: String;
       strAttributeValue: String;
       strSkuAttributeKey: String;
       strSkuAttributeValue: String;
       strSkuAttributeValue1: String;
       strProductTitle: String;
       strProductSubtitle: String;
       strProductSellerCode: String;
       strProductCondition: String;
       strShipmentTemplate: String;
       strProductDescription: String;
       strGtin: String;
       strGtin1: String;
       setOrderValue: Int64;
       quantityValue: Int64;
       quantityValue1: Int64;
       categoryIdValue: Int64;
       priceValue: TXSDecimal;
       currencyTypeValue: Int64;
       approvalStatusValue: Int64;
       preparingDayValue: Int64;
end;

type
  TPParams = record
    productimageurl: string;
    order: Int64;
    strSkuAttributeKey: string;
    strSkuAttributeValue: string;
    strSkuAttributeValue1: string;
    skubundle: boolean;
    skumpn: string;
    skuoem: string;
    skuquantity: Int64;
    skugtin: string;
    strSellerStockCode: string;
    skubundle1: boolean;
    skumpn1: string;
    skuoem1: string;
    skuquantity1: Int64;
    skugtin1: string;
    strSellerStockCode1: string;
    categoryid: Int64;
    strAttributeName: string;
    strAttributeValue: string;
    strProductSellerCode: string;
    strProductTitle: string;
    strProductSubtitle: string;
    strProductDescription: string;
    boolProductDomestic: boolean;
    price: TXSDecimal;
    currencyTypeValue: Int64;
    approvalStatusValue: Int64;
    productsaleStartDate: string;
    productsaleEndDate: string;
    productProductionDate: string;
    productExpirationDate: string;
    strProductCondition: string;
    preparingDayValue: Int64;
    strShipmentTemplate: string;
end;

type
TSearchParams = record

end;

type N11Client = class
  private
    FapiKey: String;
    FapiSecret: String;
    HTTPRIOCategory, HTTPRIOCity,
    HTTPRIOProduct, HTTPRIOProductSelling,
    HTTPRIOProductStock, HTTPPRIOOrder,
    HTTPPRIOShipmentCompany, HTTPRIOShipment,
    HTTPRIOSettlement, HTTPRIOTicket: THTTPRIO;
    portCategory: CategoryServicePort;
    portCity: CityServicePort;
    portProduct: ProductServicePort;
    portProductSelling: ProductSellingServicePort;
    portProductStock: ProductStockServicePort;
    portOrder: OrderServicePort;
    portShipmentCompany: ShipmentCompanyServicePort;
    portShipment: ShipmentServicePort;
    portSettlement: SettlementServicePort;
    portTicket: TicketServicePort;
    authCategory: CategoryService.Authentication;
    authProduct: ProductService.Authentication;
    authProductSelling: ProductSellingService.Authentication;
    authProductStock: ProductStockService.Authentication;
    authOrder: OrderService.Authentication;
    authShipment: ShipmentService.Authentication;
    authSettlement: SettlementService.Authentication;
    authTicket: TicketService.Authentication;
    function getApiKey: String;
    function getApiSecret: String;
  public
    constructor Create;
    destructor Destroy; override;
    procedure SetapiKey(const Value: String);
    procedure SetapiSecret(const Value: String);
    function GetCategoryAttributeValue(categoryProductAttributeId: Int64; currentPage: integer; pageSizeVal: integer): GetCategoryAttributeValueResponse;
    function GetTopLevelCategories: GetTopLevelCategoriesResponse;
    function GetCategoryAttributes(categoryId: Int64; currentPage: integer; pageSizeVal: integer): GetCategoryAttributesResponse;
    function GetCategoryAttributesId(categoryIdVal: Int64): GetCategoryAttributesIdResponse;
    function GetParentCategory(categoryId: Int64): GetParentCategoryResponse;
    function GetSubCategories(categoryId: Int64): GetSubCategoriesResponse;
    function GetCities: GetCitiesResponse;
    function GetCity(cityCode: Int64): GetCityResponse;
    function GetDistrict(cityCode: Int64): GetDistrictResponse;
    function GetNeighborhoods(districtId: Int64): GetNeighborhoodsResponse;
    function GetProductByProductId(productId: Int64): GetProductByProductIdResponse;  //sadece pazarcýnýn kendi ürünü olmalý
    function GetProductBySellerCode(sellerCode: String): GetProductBySellerCodeResponse; //sadece pazarcýnýn maðaza kodu
    function GetProductList(currentPage: integer; pageSizeVal: integer): GetProductListResponse;
    //function SaveProduct(PParams: TProductParams): SaveProductResponse;

    function SaveProduct(PParams: TPParams): SaveProductResponse;
    function SearchProducts(strStartDate: String; strEndDate: String; strProductName: String; currentPageValue: integer; pageSizeValue: integer): SearchProductsResponse;
    function DeleteProductById(productId: Int64): DeleteProductByIdResponse; //denenmedi
    function DeleteProductBySellerCode(productSellerCode: String): DeleteProductBySellerCodeResponse;  //denenmedi
    function UpdateDiscountValueByProductId(productID: Int64; discountStartDate, discountEndDate: String; discountType: Int64; discountValue: Double): UpdateDiscountValueByProductIdResponse;
    function UpdateDiscountValueBySellerCode(productSellerCode: String; discountStartDate, discountEndDate: String; discountType: Int64; discountValue: Double): UpdateDiscountValueBySellerCodeResponse;
    function UpdateProductPriceById(productId: Int64; price: TXSDecimal; currencyType: Int64; sellerStockCode: String; optionPrice: TXSDecimal): UpdateProductPriceByIdResponse;
    function UpdateProductPriceBySellerCode(productSellerCode: String; price: TXSDecimal; currencyType: Int64; sellerStockCode: String; optionPrice: TXSDecimal): UpdateProductPriceBySellerCodeResponse;
    function UpdateProductBasic(productId: Int64; productSellerCode: String; price: TXSDecimal; discountType: Int64; discountValue: Double; discountStartDate: string; discountEndDate: string; sellerStockCode: string; id: Int64; optionPrice: TXSDecimal; quantity: Int64; description: string; order: Int64; url: string): UpdateProductBasicResponse;
    function GetProductQuestionList(productId: Int64; buyerEmail: string; subject: string; status: ProductQuestionStatus; questionDate: string; currentPage: integer; pageSize: Integer): GetProductQuestionListResponse;
    function GetProductQuestionDetail(productQuestionId: Int64): GetProductQuestionDetailResponse;
    function SaveProductAnswer(productQuestionId: Int64; answer: string): SaveProductAnswerResponse;
    function ProductAllStatusCountsRequest: ProductApprovalStatusRequest;
    function StartSellingProductByProductId(productId: Int64): StartSellingProductByProductIdResponse;
    function StartSellingProductBySellerCode(productSellerCode: String): StartSellingProductBySellerCodeResponse;
    function StopSellingProductByProductId(productId: Int64): StopSellingProductByProductIdResponse;
    function StopSellingProductBySellerCode(productSellerCode: String): StopSellingProductBySellerCodeResponse;
    function GetProductStockByProductId(productId: Int64): GetProductStockByProductIdResponse;
    function GetProductStockBySellerCode(productSellerCode: String): GetProductStockByProductSellerCodeResponse;
    function DeleteAndUpdateStockByStockAttributes(id: Int64; name_: string; value: string; quantity: Int64; version: Int64): DeleteAndUpdateStockByStockAttributesResponse;
    function UpdateStockByStockId(id: Int64; quantity: Int64; version: Int64; delist: Boolean): UpdateStockByStockIdResponse;
    function UpdateStockByStockSellerCode(sellerStockCode: string; quantity: Int64; version: Int64): UpdateStockByStockSellerCodeResponse;
    function IncreaseStockByStockAttributes(id: Int64; name_: string; value: string; quantityToIncrease: Int64; version: Int64): IncreaseStockByStockAttributesResponse;
    function IncreaseStockByStockId(id: Int64; quantityToIncrease: Int64; version: Int64): IncreaseStockByStockIdResponse;
    function IncreaseStockByStockSellerCode(sellerStockCode: string; quantityToIncrease: Int64; version: Int64): IncreaseStockByStockSellerCodeResponse;
    function DetailedOrderList(productId: Int64; status: string; buyerName: string; orderNumber: string; productSellerCode: string; recipient: string;
    sameDayDelivery: Boolean; startDate: string; endDate: string; sortForUpdateDate: Boolean; currentPage: integer; pageSizeVal: integer; totalCount: Int64; pageCount: Integer): DetailedOrderListResponse;
    function OrderList(productId: Int64; status: string; buyerName: string;
    orderNumber: string; productSellerCode: string; recipient: string;
    sameDayDelivery: Boolean; startDate: string; endDate: string;
    sortForUpdateDate: Boolean; currentPage: integer; pageSizeVal: integer): OrderListResponse;
    function OrderDetail(id: Int64): OrderDetailResponse;
    function OrderItemAccept(id: Int64): OrderItemAcceptResponse;
    function OrderItemReject(id: Int64; rejectReason: string; rejectReasonType: string): OrderItemRejectResponse;
    function MakeOrderItemShipment(orderItemid: Int64; shipmentCompanyid: Int64; campaignNumber: string; trackingNumber: string; shipmentMethod: Int64): MakeOrderItemShipmentResponse;
    function GetShipmentCompanies: GetShipmentCompaniesResponse;
    function GetShipmentTemplate(name_: string): GetShipmentTemplateResponse;
    //function CreateOrUpdateShipmentTemplate: CreateOrUpdateShipmentTemplateResponse;
    function GetShipmentTemplateList: GetShipmentTemplateListResponse;
    function GetSettlementList(startDate: string; endDate: string; currentPage: integer; pageSizeVal: integer): GetSettlementListResponse;
    function GetSettlementDetail(date: string; currentPage: integer; pageSizeVal: integer): GetSettlementDetailResponse;
    function TicketListingAssignedToSeller(sellerId: Int64; first: Integer; pageSize: Integer): TicketListingAssignToResponse; //normalde soapta procedure idi dökümanda functiona çevirdim
    function TicketListingBelongsToSeller(sellerId: Int64; first: Integer; pageSize: Integer): TicketListingBelongsToResponse;
    function TicketAnswer(sellerId: Int64; ticketId: Int64; content: string): TicketAnswerResponse;
    function TicketCreate(reasonId: Int64; sellerId: Int64; header: string; content: string): TicketCreateResponse;
 published
    property apiKey: String read getApiKey write SetapiKey;
    property apiSecret: String read getApiSecret write SetapiSecret;

end;


implementation

{ N11Client }

destructor N11Client.Destroy;
begin
  HTTPRIOCategory.Free;
  HTTPRIOCity.Free;
  HTTPRIOProduct.Free;
  HTTPRIOProductStock.Free;
  HTTPPRIOOrder.Free;
  HTTPPRIOShipmentCompany.Free;
  HTTPRIOShipment.Free;
  HTTPRIOSettlement.Free;
  HTTPRIOTicket.Free;
  authCategory.Free;
  authProduct.Free;
  authProductSelling.Free;
  authProductStock.Free;
  authOrder.Free;
  authShipment.Free;
  authSettlement.Free;
  authTicket.Free;
  inherited;
end;

constructor N11Client.Create;
begin
  HTTPRIOCategory := THTTPRIO.Create(nil);
  HTTPRIOCity := THTTPRIO.Create(nil);
  HTTPRIOProduct := THTTPRIO.Create(nil);
  HTTPRIOProductSelling := THTTPRIO.Create(nil);
  HTTPRIOProductStock := THTTPRIO.Create(nil);
  HTTPPRIOOrder := THTTPRIO.Create(nil);
  HTTPPRIOShipmentCompany := THTTPRIO.Create(nil);
  HTTPRIOShipment := THTTPRIO.Create(nil);
  HTTPRIOSettlement := THTTPRIO.Create(nil);
  HTTPRIOTicket := THTTPRIO.Create(nil);
  authCategory := CategoryService.Authentication.Create;
  authProduct := ProductService.Authentication.Create;
  authProductSelling := ProductSellingService.Authentication.Create;
  authProductStock := ProductStockService.Authentication.Create;
  authOrder := OrderService.Authentication.Create;
  authShipment := ShipmentService.Authentication.Create;
  authSettlement := SettlementService.Authentication.Create;
  authTicket := TicketService.Authentication.Create;
  authCategory.appKey := getApiKey;
  authCategory.appSecret := getApiSecret;
  authProduct.appKey := getApiKey;
  authProduct.appSecret := getApiSecret;
  authProductSelling.appKey := getApiKey;
  authProductSelling.appSecret := getApiSecret;
  authProductStock.appKey := getApiKey;
  authProductStock.appSecret := getApiSecret;
  authOrder.appKey := getApiKey;
  authOrder.appSecret := getApiSecret;
  authShipment.appKey := getApiKey;
  authShipment.appSecret := getApiSecret;
  authSettlement.appKey := getApiKey;
  authSettlement.appSecret := getApiSecret;
  authTicket.appKey := getApiKey;
  authTicket.appSecret := getApiSecret;
  portCategory := GetCategoryServicePort(True, '', HTTPRIOCategory);
  portCity := GetCityServicePort(True, '', HTTPRIOCity);
  portProduct := GetProductServicePort(True, '', HTTPRIOProduct);
  portProductSelling := GetProductSellingServicePort(True, '', HTTPRIOProductSelling);
  portProductStock := GetProductStockServicePort(True, '', HTTPRIOProductStock);
  portOrder := GetOrderServicePort(True, '', HTTPPRIOOrder);
  portShipmentCompany := GetShipmentCompanyServicePort(True, '', HTTPPRIOShipmentCompany);
  portShipment := GetShipmentServicePort(True, '', HTTPRIOShipment);
  portSettlement := GetSettlementServicePort(True, '', HTTPRIOSettlement);
  portTicket := GetTicketServicePort(True, '', HTTPRIOTicket);
end;

function N11Client.getApiKey: String;
begin
  FapiKey := 'xxxxxxxx';
  result := FapiKey;
end;

function N11Client.getApiSecret: String;
begin
 FapiSecret := 'xxxxxxxxx';
 result := FapiSecret;
end;

procedure N11Client.SetapiKey(const Value: String);
begin
  FapiKey := Value;
end;

procedure N11Client.SetapiSecret(const Value: String);
begin
  FapiSecret := Value;
end;

function N11Client.GetTopLevelCategories: GetTopLevelCategoriesResponse;
var
    TopLevelCategoriesRequest: GetTopLevelCategoriesRequest;
begin
  try
    TopLevelCategoriesRequest := GetTopLevelCategoriesRequest.Create;
    TopLevelCategoriesRequest.auth := authCategory;
    result :=  portCategory.GetTopLevelCategories(TopLevelCategoriesRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetCategoryAttributes(categoryId:Int64; currentPage: integer; pageSizeVal: integer): GetCategoryAttributesResponse;
var
    CategoryAttributesRequest: GetCategoryAttributesRequest;
    ReqPagingDataCategory : CategoryService.RequestPagingData;
begin
  try
    ReqPagingDataCategory := CategoryService.RequestPagingData.Create;
    CategoryAttributesRequest := GetCategoryAttributesRequest.Create;

    ReqPagingDataCategory.currentPage := currentPage;
    ReqPagingDataCategory.pageSize := pageSizeVal;
    CategoryAttributesRequest.auth := authCategory;
    CategoryAttributesRequest.pagingData := ReqPagingDataCategory;
    CategoryAttributesRequest.categoryId :=  categoryId;
    result := portCategory.GetCategoryAttributes(CategoryAttributesRequest);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetCategoryAttributesId(categoryIdVal: Int64): GetCategoryAttributesIdResponse;
var
    CategoryAttributesIdRequest: GetCategoryAttributesIdRequest;
begin
 try
    CategoryAttributesIdRequest := GetCategoryAttributesIdRequest.Create;
    CategoryAttributesIdRequest.auth := authCategory;
    CategoryAttributesIdRequest.categoryId := categoryIdVal;

    result := portCategory.GetCategoryAttributesId(CategoryAttributesIdRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetCategoryAttributeValue(categoryProductAttributeId: Int64; currentPage: integer; pageSizeVal: integer): GetCategoryAttributeValueResponse;
var
  CategoryAttributeValueRequest: GetCategoryAttributeValueRequest;
  ReqPagingDataCategory: CategoryService.RequestPagingData;
begin
  try
    // toplam sayfa adedince apiyi çalýþtýrmalýsýn
    ReqPagingDataCategory := CategoryService.RequestPagingData.Create;
    CategoryAttributeValueRequest := GetCategoryAttributeValueRequest.Create;

    CategoryAttributeValueRequest.auth := authCategory;
    CategoryAttributeValueRequest.categoryProductAttributeId := categoryProductAttributeId;

    ReqPagingDataCategory.currentPage := currentPage;
    ReqPagingDataCategory.pageSize := pageSizeVal;
    CategoryAttributeValueRequest.pagingData := ReqPagingDataCategory;
    result := portCategory.GetCategoryAttributeValue(CategoryAttributeValueRequest);


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end;

function N11Client.GetParentCategory(categoryId: Int64): GetParentCategoryResponse;
var
    ParentCategoryRequest: GetParentCategoryRequest;
begin
  try
    ParentCategoryRequest := GetParentCategoryRequest.Create;
    ParentCategoryRequest.auth := authCategory;
    ParentCategoryRequest.categoryId := categoryId;

    result := portCategory.GetParentCategory(ParentCategoryRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end;

function N11Client.GetSubCategories(categoryId: Int64): GetSubCategoriesResponse;
var
    SubCategoriesRequest: GetSubCategoriesRequest;
begin
  try
    SubCategoriesRequest := GetSubCategoriesRequest.Create;
    SubCategoriesRequest.auth := authCategory;
    SubCategoriesRequest.categoryId := categoryId;

    result := portCategory.GetSubCategories(SubCategoriesRequest);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetCities: GetCitiesResponse;
var
    CitiesRequest: GetCitiesRequest;
begin
  try
      CitiesRequest := GetCitiesRequest.Create;
      result := portCity.GetCities(CitiesRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end;

function N11Client.GetCity(cityCode: Int64): GetCityResponse;
var
    CityRequest: GetCityRequest;
begin
  try
      CityRequest := GetCityRequest.Create;
      CityRequest.cityCode := cityCode;

      result := portCity.GetCity(CityRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetDistrict(cityCode: Int64): GetDistrictResponse;
var
    DistrictRequest: GetDistrictRequest;
begin
  try
    DistrictRequest:= GetDistrictRequest.Create;
    DistrictRequest.cityCode := cityCode;

    result := portCity.GetDistrict(DistrictRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetNeighborhoods(districtId: Int64): GetNeighborhoodsResponse;
var
    NeighborhoodsRequest: GetNeighborhoodsRequest;
begin
  try
    NeighborhoodsRequest := GetNeighborhoodsRequest.Create;
    NeighborhoodsRequest.districtId := districtId;

    result := portCity.GetNeighborhoods(NeighborhoodsRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetProductByProductId(productId: Int64): GetProductByProductIdResponse;
var
    ProductByProductIdRequest: GetProductByProductIdRequest;
begin
  try
    ProductByProductIdRequest := GetProductByProductIdRequest.Create;
    ProductByProductIdRequest.auth := authProduct;
    ProductByProductIdRequest.productId := productId;

    result := portProduct.GetProductByProductId(ProductByProductIdRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetProductBySellerCode(sellerCode: String): GetProductBySellerCodeResponse;
var
    ProductBySellerCodeRequest: GetProductBySellerCodeRequest;
begin
  try
    ProductBySellerCodeRequest := GetProductBySellerCodeRequest.Create;
    ProductBySellerCodeRequest.auth := authProduct;
    ProductBySellerCodeRequest.sellerCode := sellerCode;

    result := portProduct.GetProductBySellerCode(ProductBySellerCodeRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetProductList(currentPage: integer; pageSizeVal: integer): GetProductListResponse;
var
    ProductListRequest: GetProductListRequest;
    ReqPagingDataProduct :ProductService.RequestPagingData;
begin
  try
    ProductListRequest := GetProductListRequest.Create;
    ReqPagingDataProduct := ProductService.RequestPagingData.Create;
    ReqPagingDataProduct.pageSize := pageSizeVal;
    ReqPagingDataProduct.currentPage := currentPage;
    ProductListRequest.auth := authProduct;
    ProductListRequest.pagingData := ReqPagingDataProduct;

    result := portProduct.GetProductList(ProductListRequest);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

{function N11Client.SaveProduct(PParams: TProductParams): SaveProductResponse;
var
  SaveProductRequest_: SaveProductRequest;
  ProductImageList_: ProductImageList;
  skuAttributeRequestList: ProductAttributeRequestList;
  skuAttributeRequest: ProductAttributeRequest;
  skuAttributeRequest1 : ProductAttributeRequest;
  skuAttributeRequestList1: ProductAttributeRequestList;
  sku: ProductSkuRequest;
  sku1: ProductSkuRequest;
  stockItems: ProductSkuRequestList;
  CategoryRequest_: CategoryRequest;
  ProductAttribute_: ProductAttributeRequest;
  ProductRequest_: ProductRequest;
  ProductImage_: ProductImage;
  ProductAttributeRequestList_: ProductAttributeRequestList;

begin
  try
    SaveProductRequest_ := SaveProductRequest.Create;
    skuAttributeRequest := ProductAttributeRequest.Create;
    sku := ProductSkuRequest.Create;
    sku1 := ProductSkuRequest.Create;
    ProductImage_ := ProductImage.Create;
    CategoryRequest_ := CategoryRequest.Create;
    ProductAttribute_ := ProductAttributeRequest.Create;
    ProductRequest_ := ProductRequest.Create;

    ProductImage_.url := PParams.strUrl;
    ProductImage_.order := PParams.setOrderValue;
    Insert([ProductImage_], ProductImageList_, High(ProductImageList_));

    skuAttributeRequest.name_ := PParams.strSkuAttributeKey;
    skuAttributeRequest.value := PParams.strSkuAttributeValue;
    Insert([skuAttributeRequest], skuAttributeRequestList, High(skuAttributeRequestList));

    skuAttributeRequest1.name_ := PParams.strSkuAttributeKey;
    skuAttributeRequest1.value := PParams.strSkuAttributeValue1;
    Insert([skuAttributeRequest1], skuAttributeRequestList1, High(skuAttributeRequestList1));

    sku.sellerStockCode := PParams.strSellerStockCode;
    sku.attributes := skuAttributeRequestList;
    sku.quantity := PParams.quantityValue;
    sku.gtin := PParams.strGtin;

    sku1.sellerStockCode := PParams.strSellerStockCode1;
    sku1.attributes := skuAttributeRequestList1;
    sku1.quantity := PParams.quantityValue1;
    sku1.gtin := PParams.strGtin1;
    Insert([sku], stockItems, High(stockItems));
    Insert([sku1], stockItems, High(stockItems));

    CategoryRequest_.id := PParams.categoryIdValue;

    ProductAttribute_.name_ := PParams.strAttributeName;
    ProductAttribute_.value := PParams.strAttributeValue;
    Insert([ProductAttribute_], ProductAttributeRequestList_, High(ProductAttributeRequestList_));


    ProductRequest_.title := PParams.strProductTitle;
    ProductRequest_.subtitle := PParams.strProductSubtitle;
    ProductRequest_.description := PParams.strProductDescription;
    ProductRequest_.category := CategoryRequest_;
    ProductRequest_.productSellerCode := PParams.strProductSellerCode;
    //priceValue.DecimalString := Format('%d', [20.5]);
    ProductRequest_.price := PParams.priceValue;
    ProductRequest_.currencyType := PParams.currencyTypeValue;
    ProductRequest_.images := ProductImageList_;
    ProductRequest_.approvalStatus := PParams.approvalStatusValue;
    ProductRequest_.preparingDay := PParams.preparingDayValue;
    ProductRequest_.stockItems := stockItems;
    ProductRequest_.productCondition := PParams.strProductCondition;
    ProductRequest_.shipmentTemplate := PParams.strShipmentTemplate;
    ProductRequest_.attributes := ProductAttributeRequestList_;

    SaveProductRequest_.auth := authProduct;
    SaveProductRequest_.product := ProductRequest_;

    result := portProduct.SaveProduct(SaveProductRequest_);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end; }

function N11Client.SearchProducts(strStartDate: String; strEndDate: String; strProductName: String; currentPageValue: integer; pageSizeValue: integer): SearchProductsResponse;
var
  SearchProductsRequest_: SearchProductsRequest;
  ProductStatus_: ProductStatus;
  DateRange_: DateRange;
  ProductSearch_: ProductSearch;
  ReqPagingDataProduct: ProductService.RequestPagingData;
begin
  try
    SearchProductsRequest_ := SearchProductsRequest.Create;
    DateRange_ := DateRange.Create;
    ProductSearch_ := ProductSearch.Create;

    ProductStatus_ := ProductStatus.Active;

    ReqPagingDataProduct := ProductService.RequestPagingData.Create;
    ReqPagingDataProduct.pageSize := pageSizeValue;
    ReqPagingDataProduct.currentPage := currentPageValue;

    DateRange_.startDate := strStartDate;
    DateRange_.endDate := strEndDate;

    ProductSearch_.name_ := strProductName;
    ProductSearch_.approvalStatus := ProductStatus_;
    ProductSearch_.saleDate := DateRange_;

    SearchProductsRequest_.pagingData := ReqPagingDataProduct;
    SearchProductsRequest_.auth := authProduct;
    SearchProductsRequest_.productSearch := ProductSearch_;

    result := portProduct.SearchProducts(SearchProductsRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end;

function N11Client.DeleteProductById(productId: Int64): DeleteProductByIdResponse;
var
DeleteProductByIdRequest_: DeleteProductByIdRequest;
begin
  try
    DeleteProductByIdRequest_ := DeleteProductByIdRequest.Create;

    DeleteProductByIdRequest_.auth := authProduct;
    DeleteProductByIdRequest_.productId := productId;

    result := portProduct.DeleteProductById(DeleteProductByIdRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end;

function N11Client.DeleteProductBySellerCode(productSellerCode: String): DeleteProductBySellerCodeResponse;
var
  DeleteProductBySellerCodeRequest_: DeleteProductBySellerCodeRequest;
begin
  try
  DeleteProductBySellerCodeRequest_ := DeleteProductBySellerCodeRequest.Create;

  DeleteProductBySellerCodeRequest_.auth := authProduct;
  DeleteProductBySellerCodeRequest_.productSellerCode := productSellerCode;

  result := portProduct.DeleteProductBySellerCode(DeleteProductBySellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.UpdateDiscountValueByProductId(productID: Int64; discountStartDate, discountEndDate: String; discountType: Int64; discountValue: Double): UpdateDiscountValueByProductIdResponse;
var
  SellerProductDiscount_: SellerProductDiscount;
  UpdateDiscountValueByProductIdRequest_: UpdateDiscountValueByProductIdRequest;
begin
  try

    SellerProductDiscount_ := SellerProductDiscount.Create;
    UpdateDiscountValueByProductIdRequest_ := UpdateDiscountValueByProductIdRequest.Create;

    SellerProductDiscount_.discountStartDate := discountStartDate;
    SellerProductDiscount_.discountEndDate := discountEndDate;
    SellerProductDiscount_.discountType := discountType;
    SellerProductDiscount_.discountValue := discountValue;

    UpdateDiscountValueByProductIdRequest_.productId := productID;
    UpdateDiscountValueByProductIdRequest_.productDiscount := SellerProductDiscount_;
    UpdateDiscountValueByProductIdRequest_.auth := authProduct;

    result := portProduct.UpdateDiscountValueByProductId(UpdateDiscountValueByProductIdRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;


function N11Client.UpdateDiscountValueBySellerCode(productSellerCode, discountStartDate, discountEndDate: String; discountType: Int64; discountValue: Double): UpdateDiscountValueBySellerCodeResponse;
var
  updateDiscountValueBySellerCodeRequest_: updateDiscountValueBySellerCodeRequest;
  SellerProductDiscount_: SellerProductDiscount;
begin
  try
    updateDiscountValueBySellerCodeRequest_ := updateDiscountValueBySellerCodeRequest.Create;

    SellerProductDiscount_.discountStartDate := discountStartDate;
    SellerProductDiscount_.discountEndDate := discountEndDate;
    SellerProductDiscount_.discountType := discountType;
    SellerProductDiscount_.discountValue := discountValue;

    updateDiscountValueBySellerCodeRequest_.productSellerCode := productSellerCode;
    updateDiscountValueBySellerCodeRequest_.productDiscount := SellerProductDiscount_;
    updateDiscountValueBySellerCodeRequest_.auth := authProduct;

    result := portProduct.UpdateDiscountValueBySellerCode(updateDiscountValueBySellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end;

function N11Client.UpdateProductPriceById(productId: Int64; price: TXSDecimal; currencyType: Int64; sellerStockCode: String; optionPrice: TXSDecimal): UpdateProductPriceByIdResponse;
var
  UpdateProductPriceByIdRequest_: UpdateProductPriceByIdRequest;
  ProductSkuBasicRequestItemList_: ProductSkuBasicRequestItemList;
  ProductSkuBasicRequest_: ProductService.ProductSkuBasicRequest;
begin
  try
    UpdateProductPriceByIdRequest_ := UpdateProductPriceByIdRequest.Create;
    ProductSkuBasicRequest_:= ProductService.ProductSkuBasicRequest.Create;

    ProductSkuBasicRequest_.sellerStockCode := sellerStockCode;
    ProductSkuBasicRequest_.optionPrice := optionPrice;

    Insert([ProductSkuBasicRequest_], ProductSkuBasicRequestItemList_, High(ProductSkuBasicRequestItemList_));

    UpdateProductPriceByIdRequest_.auth := authProduct;
    UpdateProductPriceByIdRequest_.productId := productId;
    UpdateProductPriceByIdRequest_.price := price;
    UpdateProductPriceByIdRequest_.currencyType := currencyType;
    UpdateProductPriceByIdRequest_.stockItems := ProductSkuBasicRequestItemList_;

    result := portProduct.UpdateProductPriceById(UpdateProductPriceByIdRequest_);


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.UpdateProductPriceBySellerCode(productSellerCode: String; price: TXSDecimal; currencyType: Int64; sellerStockCode: String; optionPrice: TXSDecimal): UpdateProductPriceBySellerCodeResponse;
var
  UpdateProductPriceBySellerCodeRequest_: UpdateProductPriceBySellerCodeRequest;
  ProductSkuBasicRequestItemList_: ProductSkuBasicRequestItemList;
  ProductSkuBasicRequest_: ProductService.ProductSkuBasicRequest;
begin
  try
    UpdateProductPriceBySellerCodeRequest_ := UpdateProductPriceBySellerCodeRequest.Create;
    ProductSkuBasicRequest_:= ProductService.ProductSkuBasicRequest.Create;

    ProductSkuBasicRequest_.sellerStockCode := sellerStockCode;
    ProductSkuBasicRequest_.optionPrice := optionPrice;

    Insert([ProductSkuBasicRequest_], ProductSkuBasicRequestItemList_, High(ProductSkuBasicRequestItemList_));

    UpdateProductPriceBySellerCodeRequest_.auth := authProduct;
    UpdateProductPriceBySellerCodeRequest_.productSellerCode := productSellerCode;
    UpdateProductPriceBySellerCodeRequest_.price := price;
    UpdateProductPriceBySellerCodeRequest_.currencyType := currencyType;
    UpdateProductPriceBySellerCodeRequest_.stockItems := ProductSkuBasicRequestItemList_;

    result := portProduct.UpdateProductPriceBySellerCode(UpdateProductPriceBySellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.UpdateProductBasic(productId: Int64;
  productSellerCode: String; price: TXSDecimal; discountType: Int64;
  discountValue: Double; discountStartDate, discountEndDate,
  sellerStockCode: string; id: Int64; optionPrice: TXSDecimal; quantity: Int64;
  description: string; order: Int64; url: string): UpdateProductBasicResponse;
var
  UpdateProductBasicRequest_: UpdateProductBasicRequest;
  ProductUpdateSkuBasicRequest_: ProductUpdateSkuBasicRequest;
  SellerProductDiscount_: SellerProductDiscount;
  ProductUpdateSkuBasicRequestItemList_: ProductUpdateSkuBasicRequestItemList;
  ProductImage_: ProductImage;
  ProductImageList_: ProductImageList;
begin
  try
    UpdateProductBasicRequest_ := UpdateProductBasicRequest.Create;
    SellerProductDiscount_ := SellerProductDiscount.Create;
    ProductUpdateSkuBasicRequest_ := ProductUpdateSkuBasicRequest.Create;
    ProductImage_ := ProductImage.Create;

    SellerProductDiscount_.discountType := discountType;
    SellerProductDiscount_.discountValue := discountValue;
    SellerProductDiscount_.discountStartDate := discountStartDate;
    SellerProductDiscount_.discountEndDate := discountEndDate;

    ProductUpdateSkuBasicRequest_.sellerStockCode := sellerStockCode;
    ProductUpdateSkuBasicRequest_.id := id;
    ProductUpdateSkuBasicRequest_.optionPrice := optionPrice;
    ProductUpdateSkuBasicRequest_.quantity := quantity;

    Insert([ProductUpdateSkuBasicRequest_], ProductUpdateSkuBasicRequestItemList_, High(ProductUpdateSkuBasicRequestItemList_));

    ProductImage_.url := url;
    ProductImage_.order := order;

    Insert([ProductImage_], ProductImageList_, High(ProductImageList_));

    UpdateProductBasicRequest_.auth := authProduct;
    UpdateProductBasicRequest_.productId := productId;
    UpdateProductBasicRequest_.productSellerCode := productSellerCode;
    UpdateProductBasicRequest_.price := price;
    UpdateProductBasicRequest_.productDiscount := SellerProductDiscount_;
    UpdateProductBasicRequest_.stockItems := ProductUpdateSkuBasicRequestItemList_;
    UpdateProductBasicRequest_.description := description;
    UpdateProductBasicRequest_.images := ProductImageList_;

    result := portProduct.UpdateProductBasic(UpdateProductBasicRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetProductQuestionList(productId: Int64; buyerEmail,
  subject: string; status: ProductQuestionStatus; questionDate: string;
  currentPage, pageSize: Integer): GetProductQuestionListResponse;
var
  GetProductQuestionListRequest_: GetProductQuestionListRequest;
  RequestPagingData_: ProductService.RequestPagingData;
  ProductQuestionSearch_: ProductQuestionSearch;
begin
  try
    GetProductQuestionListRequest_ := GetProductQuestionListRequest.Create;
    RequestPagingData_ := ProductService.RequestPagingData.Create;
    ProductQuestionSearch_ := ProductQuestionSearch.Create;

    RequestPagingData_.currentPage := currentPage;
    RequestPagingData_.pageSize := pageSize;

    ProductQuestionSearch_.productId := productId;
    ProductQuestionSearch_.buyerEmail := buyerEmail;
    ProductQuestionSearch_.subject := subject;
    ProductQuestionSearch_.status := status;
    ProductQuestionSearch_.questionDate := questionDate;

    GetProductQuestionListRequest_.auth := authProduct;
    GetProductQuestionListRequest_.productQuestionSearch := ProductQuestionSearch_;
    GetProductQuestionListRequest_.pagingData := RequestPagingData_;

    result := portProduct.GetProductQuestionList(GetProductQuestionListRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetProductQuestionDetail(
  productQuestionId: Int64): GetProductQuestionDetailResponse;
var
  GetProductQuestionDetailRequest_: GetProductQuestionDetailRequest;
begin
  try
  GetProductQuestionDetailRequest_ := GetProductQuestionDetailRequest.Create;
  GetProductQuestionDetailRequest_.auth := authProduct;
  GetProductQuestionDetailRequest_.productQuestionId := productQuestionId;

  result := portProduct.GetProductQuestionDetail(GetProductQuestionDetailRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.SaveProductAnswer(productQuestionId: Int64;
  answer: string): SaveProductAnswerResponse;
var
  SaveProductAnswerRequest_: SaveProductAnswerRequest;
begin
  try
    SaveProductAnswerRequest_.auth := authProduct;
    SaveProductAnswerRequest_.productQuestionId := productQuestionId;
    SaveProductAnswerRequest_.answer := answer;

    result := portProduct.SaveProductAnswer(SaveProductAnswerRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.ProductAllStatusCountsRequest: ProductApprovalStatusRequest;
var
  ProductApprovalStatusRequest_: ProductApprovalStatusRequest;
begin
  try
    ProductApprovalStatusRequest_ := ProductApprovalStatusRequest.Create;
    ProductApprovalStatusRequest_.auth := authProduct;

    portProduct.ProductApprovalStatus(ProductApprovalStatusRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.StartSellingProductByProductId(
  productId: Int64): StartSellingProductByProductIdResponse;
var
  StartSellingProductByProductIdRequest_: StartSellingProductByProductIdRequest;
begin
  try
  StartSellingProductByProductIdRequest_ := StartSellingProductByProductIdRequest.Create;
  StartSellingProductByProductIdRequest_.auth := authProductSelling;
  StartSellingProductByProductIdRequest_.productId := productId;

  result := portProductSelling.StartSellingProductByProductId(StartSellingProductByProductIdRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;
function N11Client.StartSellingProductBySellerCode(
  productSellerCode: String): StartSellingProductBySellerCodeResponse;
var
  StartSellingProductBySellerCodeRequest_: StartSellingProductBySellerCodeRequest;
begin
  try
   StartSellingProductBySellerCodeRequest_ := StartSellingProductBySellerCodeRequest.Create;
   StartSellingProductBySellerCodeRequest_.auth := authProductSelling;
   StartSellingProductBySellerCodeRequest_.productSellerCode := productSellerCode;

   result := portProductSelling.StartSellingProductBySellerCode(StartSellingProductBySellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.StopSellingProductByProductId(
  productId: Int64): StopSellingProductByProductIdResponse;
var
  StopSellingProductByProductIdRequest_: StopSellingProductByProductIdRequest;
begin
  try
    StopSellingProductByProductIdRequest_ := StopSellingProductByProductIdRequest.Create;
    StopSellingProductByProductIdRequest_.auth := authProductSelling;
    StopSellingProductByProductIdRequest_.productId := productId;

    result := portProductSelling.StopSellingProductByProductId(StopSellingProductByProductIdRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.StopSellingProductBySellerCode(
  productSellerCode: String): StopSellingProductBySellerCodeResponse;
var
  StopSellingProductBySellerCodeRequest_: StopSellingProductBySellerCodeRequest;
begin
  try
    StopSellingProductBySellerCodeRequest_ := StopSellingProductBySellerCodeRequest.Create;
    StopSellingProductBySellerCodeRequest_.auth := authProductSelling;
    StopSellingProductBySellerCodeRequest_.productSellerCode := productSellerCode;

    result := portProductSelling.StopSellingProductBySellerCode(StopSellingProductBySellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetProductStockByProductId(
  productId: Int64): GetProductStockByProductIdResponse;
var
  GetProductStockByProductIdRequest_: GetProductStockByProductIdRequest;
begin
  try
    GetProductStockByProductIdRequest_ := GetProductStockByProductIdRequest.Create;
    GetProductStockByProductIdRequest_.auth := authProductStock;
    GetProductStockByProductIdRequest_.productId := productId;

    result := portProductStock.GetProductStockByProductId(GetProductStockByProductIdRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetProductStockBySellerCode(
  productSellerCode: String): GetProductStockByProductSellerCodeResponse;
var
  GetProductStockByProductSellerCodeRequest_: GetProductStockByProductSellerCodeRequest;
begin
  try
    GetProductStockByProductSellerCodeRequest_ := GetProductStockByProductSellerCodeRequest.Create;
    GetProductStockByProductSellerCodeRequest_.auth := authProductStock;
    GetProductStockByProductSellerCodeRequest_.productSellerCode := productSellerCode;

    result := portProductStock.GetProductStockByProductSellerCode(GetProductStockByProductSellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.DeleteAndUpdateStockByStockAttributes(id: Int64; name_,
  value: string; quantity,
  version: Int64): DeleteAndUpdateStockByStockAttributesResponse;
var
  StockAttribute_: StockAttribute;
  StockAttributeList_: StockAttributeList;
  StockItemForUpdateStockWithAttributes_: StockItemForUpdateStockWithAttributes;
  StockItemForUpdateStockWithAttributesList_: StockItemForUpdateStockWithAttributesList;
  ProductWithIdAndStockAttributesForUpdate_: ProductWithIdAndStockAttributesForUpdate;
  DeleteAndUpdateStockByStockAttributesRequest_: DeleteAndUpdateStockByStockAttributesRequest;
begin
  try
  StockAttribute_ := StockAttribute.Create;
  StockItemForUpdateStockWithAttributes_ := StockItemForUpdateStockWithAttributes.Create;
  ProductWithIdAndStockAttributesForUpdate_ := ProductWithIdAndStockAttributesForUpdate.Create;
  DeleteAndUpdateStockByStockAttributesRequest_:= DeleteAndUpdateStockByStockAttributesRequest.Create;

  StockAttribute_.name_ := name_;
  StockAttribute_.value := value;

  Insert([StockAttribute_], StockAttributeList_, High(StockAttributeList_));

  StockItemForUpdateStockWithAttributes_.attributes := StockAttributeList_;
  StockItemForUpdateStockWithAttributes_.quantity:= quantity;
  StockItemForUpdateStockWithAttributes_.version := version;

  Insert([StockItemForUpdateStockWithAttributes_], StockItemForUpdateStockWithAttributesList_, High(StockItemForUpdateStockWithAttributesList_));

  ProductWithIdAndStockAttributesForUpdate_.id := id;
  ProductWithIdAndStockAttributesForUpdate_.stockItems := StockItemForUpdateStockWithAttributesList_;

  DeleteAndUpdateStockByStockAttributesRequest_.auth := authProductStock;
  DeleteAndUpdateStockByStockAttributesRequest_.product := ProductWithIdAndStockAttributesForUpdate_;

  result := portProductStock.DeleteAndUpdateStockByStockAttributes(DeleteAndUpdateStockByStockAttributesRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.UpdateStockByStockId(id, quantity, version: Int64;
  delist: Boolean): UpdateStockByStockIdResponse;
var
  StockItemForUpdateStockWithIdList_: StockItemForUpdateStockWithIdList;
  StockItemForUpdateStockWithId_: StockItemForUpdateStockWithId;
  UpdateStockByStockIdRequest_: UpdateStockByStockIdRequest;
begin
  try
    StockItemForUpdateStockWithId_ := StockItemForUpdateStockWithId.Create;
    UpdateStockByStockIdRequest_ := UpdateStockByStockIdRequest.Create;

    StockItemForUpdateStockWithId_.id := id;
    StockItemForUpdateStockWithId_.quantity := quantity;
    StockItemForUpdateStockWithId_.version := version;
    StockItemForUpdateStockWithId_.delist := delist;

    Insert([StockItemForUpdateStockWithId_], StockItemForUpdateStockWithIdList_, High(StockItemForUpdateStockWithIdList_));

    UpdateStockByStockIdRequest_.auth := authProductStock;
    UpdateStockByStockIdRequest_.stockItems := StockItemForUpdateStockWithIdList_;

    result := portProductStock.UpdateStockByStockId(UpdateStockByStockIdRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.UpdateStockByStockSellerCode(sellerStockCode: string;
  quantity, version: Int64): UpdateStockByStockSellerCodeResponse;
var
  UpdateStockByStockSellerCodeRequest_: UpdateStockByStockSellerCodeRequest;
  StockItemForUpdateStockWithSellerStockCodeList_: StockItemForUpdateStockWithSellerStockCodeList;
  StockItemForUpdateStockWithSellerStockCode_: StockItemForUpdateStockWithSellerStockCode;
begin
  try
    UpdateStockByStockSellerCodeRequest_ := UpdateStockByStockSellerCodeRequest.Create;
    StockItemForUpdateStockWithSellerStockCode_ := StockItemForUpdateStockWithSellerStockCode.Create;

    StockItemForUpdateStockWithSellerStockCode_.sellerStockCode := sellerStockCode;
    StockItemForUpdateStockWithSellerStockCode_.quantity := quantity;
    StockItemForUpdateStockWithSellerStockCode_.version := version;

    Insert([StockItemForUpdateStockWithSellerStockCode_], StockItemForUpdateStockWithSellerStockCodeList_, High(StockItemForUpdateStockWithSellerStockCodeList_));

    UpdateStockByStockSellerCodeRequest_.auth := authProductStock;
    UpdateStockByStockSellerCodeRequest_.stockItems := StockItemForUpdateStockWithSellerStockCodeList_;

    result := portProductStock.UpdateStockByStockSellerCode(UpdateStockByStockSellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.IncreaseStockByStockAttributes(id: Int64; name_,
  value: string; quantityToIncrease,
  version: Int64): IncreaseStockByStockAttributesResponse;
var
  StockAttributeList_: StockAttributeList;
  StockAttribute_: StockAttribute;
  ProductWithIdAndStockAttributes_: ProductWithIdAndStockAttributes;
  StockItemForAddStockWithAttributes_: StockItemForAddStockWithAttributes;
  StockItemForAddStockWithAttributesList_: StockItemForAddStockWithAttributesList;
  IncreaseStockByStockAttributesRequest_: IncreaseStockByStockAttributesRequest;
begin
  try
    StockAttribute_ := StockAttribute.Create;
    ProductWithIdAndStockAttributes_ := ProductWithIdAndStockAttributes.Create;
    StockItemForAddStockWithAttributes_ := StockItemForAddStockWithAttributes.Create;
    IncreaseStockByStockAttributesRequest_ := IncreaseStockByStockAttributesRequest.Create;

    StockAttribute_.name_ := name_;
    StockAttribute_.value := value;

    Insert([StockAttribute_], StockAttributeList_, High(StockAttributeList_));

    StockItemForAddStockWithAttributes_.attributes := StockAttributeList_;
    StockItemForAddStockWithAttributes_.quantityToIncrease := quantityToIncrease;
    StockItemForAddStockWithAttributes_.version := version;

    Insert([StockItemForAddStockWithAttributes_], StockItemForAddStockWithAttributesList_, High(StockItemForAddStockWithAttributesList_));

    ProductWithIdAndStockAttributes_.id := id;
    ProductWithIdAndStockAttributes_.stockItems := StockItemForAddStockWithAttributesList_;

    IncreaseStockByStockAttributesRequest_.auth := authProductStock;
    IncreaseStockByStockAttributesRequest_.product := ProductWithIdAndStockAttributes_;

    result := portProductStock.IncreaseStockByStockAttributes(IncreaseStockByStockAttributesRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.IncreaseStockByStockId(id, quantityToIncrease,
  version: Int64): IncreaseStockByStockIdResponse;
var
  IncreaseStockByStockIdRequest_: IncreaseStockByStockIdRequest;
  StockItemForAddStockWithIdList_: StockItemForAddStockWithIdList;
  StockItemForAddStockWithId_: StockItemForAddStockWithId;
begin
  try
    IncreaseStockByStockIdRequest_ := IncreaseStockByStockIdRequest.Create;
    StockItemForAddStockWithId_ := StockItemForAddStockWithId.Create;

    StockItemForAddStockWithId_.id := id;
    StockItemForAddStockWithId_.quantityToIncrease := quantityToIncrease;
    StockItemForAddStockWithId_.version := version;

    Insert([StockItemForAddStockWithId_], StockItemForAddStockWithIdList_, High(StockItemForAddStockWithIdList_));

    IncreaseStockByStockIdRequest_.auth := authProductStock;
    IncreaseStockByStockIdRequest_.stockItems := StockItemForAddStockWithIdList_;

    result := portProductStock.IncreaseStockByStockId(IncreaseStockByStockIdRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.IncreaseStockByStockSellerCode(sellerStockCode: string;
  quantityToIncrease, version: Int64): IncreaseStockByStockSellerCodeResponse;
var
  IncreaseStockByStockSellerCodeRequest_: IncreaseStockByStockSellerCodeRequest;
  StockItemForAddStockWithSellerStockCodeList_: StockItemForAddStockWithSellerStockCodeList;
  StockItemForAddStockWithSellerStockCode_: StockItemForAddStockWithSellerStockCode;
begin
  try
    IncreaseStockByStockSellerCodeRequest_ := IncreaseStockByStockSellerCodeRequest.Create;
    StockItemForAddStockWithSellerStockCode_ := StockItemForAddStockWithSellerStockCode.Create;

    StockItemForAddStockWithSellerStockCode_.sellerStockCode := sellerStockCode;
    StockItemForAddStockWithSellerStockCode_.quantityToIncrease := quantityToIncrease;
    StockItemForAddStockWithSellerStockCode_.version := version;

    Insert([StockItemForAddStockWithSellerStockCode_], StockItemForAddStockWithSellerStockCodeList_, High(StockItemForAddStockWithSellerStockCodeList_));

    IncreaseStockByStockSellerCodeRequest_.auth := authProductStock;
    IncreaseStockByStockSellerCodeRequest_.stockItems := StockItemForAddStockWithSellerStockCodeList_;

    result := portProductStock.IncreaseStockByStockSellerCode(IncreaseStockByStockSellerCodeRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.DetailedOrderList(productId: Int64; status, buyerName,
  orderNumber, productSellerCode, recipient: string; sameDayDelivery: Boolean;
  startDate, endDate: string; sortForUpdateDate: Boolean; currentPage,
  pageSizeVal: integer; totalCount: Int64;
  pageCount: Integer): DetailedOrderListResponse;
var
  DetailedOrderListRequest_: DetailedOrderListRequest;
  OrderSearchPeriod_: OrderSearchPeriod;
  OrderDataListRequest_: OrderDataListRequest;
  PagingData_: OrderService.PagingData;
begin
  try
    DetailedOrderListRequest_ := DetailedOrderListRequest.Create;
    OrderSearchPeriod_ := OrderSearchPeriod.Create;
    OrderDataListRequest_ := OrderDataListRequest.Create;
    PagingData_ := OrderService.PagingData.Create;

    OrderSearchPeriod_.startDate := startDate;
    OrderSearchPeriod_.endDate := endDate;

    OrderDataListRequest_.productId := productId;
    OrderDataListRequest_.status := status;
    OrderDataListRequest_.buyerName := buyerName;
    OrderDataListRequest_.orderNumber := orderNumber;
    OrderDataListRequest_.productSellerCode := productSellerCode;
    OrderDataListRequest_.recipient := recipient;
    OrderDataListRequest_.sameDayDelivery := sameDayDelivery;
    OrderDataListRequest_.period := OrderSearchPeriod_;
    OrderDataListRequest_.sortForUpdateDate := sortForUpdateDate;

    PagingData_.currentPage := currentPage;
    PagingData_.pageSize := pageSizeVal;
    PagingData_.totalCount := totalCount;
    PagingData_.pageCount := pageCount;

    DetailedOrderListRequest_.auth := authOrder;
    DetailedOrderListRequest_.searchData := OrderDataListRequest_;
    DetailedOrderListRequest_.pagingData := PagingData_;

    result := portOrder.DetailedOrderList(DetailedOrderListRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.OrderList(productId: Int64; status, buyerName, orderNumber,
  productSellerCode, recipient: string; sameDayDelivery: Boolean; startDate,
  endDate: string; sortForUpdateDate: Boolean; currentPage,
  pageSizeVal: integer): OrderListResponse;
var
  OrderListRequest_: OrderListRequest;
  OrderSearchPeriod_: OrderSearchPeriod;
  OrderDataListRequest_: OrderDataListRequest;
  RequestPagingData_: OrderService.RequestPagingData;
begin
  try
    OrderListRequest_ := OrderListRequest.Create;
    OrderSearchPeriod_ := OrderSearchPeriod_.Create;
    OrderDataListRequest_ := OrderDataListRequest.Create;
    RequestPagingData_ := OrderService.RequestPagingData.Create;

    OrderSearchPeriod_.startDate := startDate;
    OrderSearchPeriod_.endDate := endDate;

    OrderDataListRequest_.productId := productId;
    OrderDataListRequest_.status := status;
    OrderDataListRequest_.buyerName := buyerName;
    OrderDataListRequest_.orderNumber := orderNumber;
    OrderDataListRequest_.productSellerCode := productSellerCode;
    OrderDataListRequest_.recipient := recipient;
    OrderDataListRequest_.sameDayDelivery := sameDayDelivery;
    OrderDataListRequest_.period := OrderSearchPeriod_;
    OrderDataListRequest_.sortForUpdateDate := sortForUpdateDate;

    RequestPagingData_.currentPage := currentPage;
    RequestPagingData_.pageSize := pageSizeVal;

    OrderListRequest_.auth := authOrder;
    OrderListRequest_.searchData := OrderDataListRequest_;
    OrderListRequest_.pagingData := RequestPagingData_;

    result := portOrder.OrderList(OrderListRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.OrderDetail(id: Int64): OrderDetailResponse;
var
  OrderDetailRequest_: OrderDetailRequest;
  OrderDataRequest_: OrderDataRequest;
begin
  try
    OrderDetailRequest_ := OrderDetailRequest.Create;
    OrderDataRequest_ := OrderDataRequest.Create;

    OrderDataRequest_.id := id;

    OrderDetailRequest_.auth := authOrder;
    OrderDetailRequest_.orderRequest := OrderDataRequest_;

    result := portOrder.OrderDetail(OrderDetailRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.OrderItemAccept(id: Int64): OrderItemAcceptResponse;
var
  OrderItemAcceptRequest_: OrderItemAcceptRequest;
  OrderItemDataRequest_: OrderItemDataRequest;
  OrderItemDataListRequest_: OrderItemDataListRequest;

begin
  try
    OrderItemAcceptRequest_ := OrderItemAcceptRequest.Create;
    OrderItemDataRequest_ := OrderItemDataRequest.Create;

    orderItemDataRequest_.id := id;

    Insert([orderItemDataRequest_], OrderItemDataListRequest_, High(OrderItemDataListRequest_));

    OrderItemAcceptRequest_.auth := authOrder;
    OrderItemAcceptRequest_.orderItemList := OrderItemDataListRequest_;

    result := portOrder.OrderItemAccept(OrderItemAcceptRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.OrderItemReject(id: Int64; rejectReason,
  rejectReasonType: string): OrderItemRejectResponse;
var
  OrderItemRejectRequest_: OrderItemRejectRequest;
  OrderItemDataRequest_: OrderItemDataRequest;
  OrderItemDataRequestForRejection_: OrderItemDataRequestForRejection;
begin
  try
    OrderItemRejectRequest_ := OrderItemRejectRequest.Create;
    OrderItemDataRequest_ := OrderItemDataRequest.Create;

    OrderItemDataRequest_.id := id;

    Insert([OrderItemDataRequest_], OrderItemDataRequestForRejection_, High(OrderItemDataRequestForRejection_));

    OrderItemRejectRequest_.auth := authOrder;
    OrderItemRejectRequest_.orderItemList := OrderItemDataRequestForRejection_;
    OrderItemRejectRequest_.rejectReason := rejectReason;
    OrderItemRejectRequest_.rejectReasonType := rejectReasonType;

    result := portOrder.OrderItemReject(OrderItemRejectRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.MakeOrderItemShipment(orderItemid, shipmentCompanyid: Int64;
  campaignNumber, trackingNumber: string;
  shipmentMethod: Int64): MakeOrderItemShipmentResponse;
var
  MakeOrderItemShipmentRequest_: MakeOrderItemShipmentRequest;
  ShipmentCompanyRequest_: ShipmentCompanyRequest ;
  MakeShipmentInfoRequest_: MakeShipmentInfoRequest;
  OrderItemShipmentRequest_: OrderItemShipmentRequest;
  OrderItemListShipmentRequest_: OrderItemListShipmentRequest;

begin
  try
    MakeOrderItemShipmentRequest_ := MakeOrderItemShipmentRequest.Create;
    ShipmentCompanyRequest_ := ShipmentCompanyRequest.Create;
    MakeShipmentInfoRequest_ := MakeShipmentInfoRequest.Create;
    OrderItemShipmentRequest_ := OrderItemShipmentRequest.Create;

    ShipmentCompanyRequest_.id := shipmentCompanyid;

    MakeShipmentInfoRequest_.shipmentCompany := ShipmentCompanyRequest_;
    MakeShipmentInfoRequest_.campaignNumber := campaignNumber;
    MakeShipmentInfoRequest_.trackingNumber := trackingNumber;
    MakeShipmentInfoRequest_.shipmentMethod := shipmentMethod;

    OrderItemShipmentRequest_.id := orderItemid;
    OrderItemShipmentRequest_.shipmentInfo := MakeShipmentInfoRequest_;

    Insert([OrderItemShipmentRequest_], OrderItemListShipmentRequest_, High(OrderItemListShipmentRequest_));

    MakeOrderItemShipmentRequest_.auth := authOrder;
    MakeOrderItemShipmentRequest_.orderItemList := OrderItemListShipmentRequest_;

    result := portOrder.MakeOrderItemShipment(MakeOrderItemShipmentRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetShipmentCompanies: GetShipmentCompaniesResponse;
var
  GetShipmentCompaniesRequest_: GetShipmentCompaniesRequest;
begin
  try
    GetShipmentCompaniesRequest_ := GetShipmentCompaniesRequest.Create;
    GetShipmentCompaniesRequest_.Create;

    result := portShipmentCompany.GetShipmentCompanies(GetShipmentCompaniesRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetShipmentTemplate(name_: string): GetShipmentTemplateResponse;
var
  GetShipmentTemplateRequest_: GetShipmentTemplateRequest;
begin
  try
    GetShipmentTemplateRequest_ := GetShipmentTemplateRequest.Create;
    GetShipmentTemplateRequest_.auth := authShipment;
    GetShipmentTemplateRequest_.name_ := name_;

    result := portShipment.GetShipmentTemplate(GetShipmentTemplateRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;


function N11Client.GetShipmentTemplateList: GetShipmentTemplateListResponse;
var
  GetShipmentTemplateListRequest_: GetShipmentTemplateListRequest;
begin
  try
  GetShipmentTemplateListRequest_ := GetShipmentTemplateListRequest.Create;
  GetShipmentTemplateListRequest_.auth := authShipment;

  result := portShipment.GetShipmentTemplateList(GetShipmentTemplateListRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetSettlementList(startDate,
  endDate: string; currentPage: integer; pageSizeVal: integer): GetSettlementListResponse;
var
  GetSettlementListRequest_: GetSettlementListRequest;
  ReqPagingDataSettlementService_: SettlementService.RequestPagingData;
begin
  try
    GetSettlementListRequest_ := GetSettlementListRequest.Create;
    ReqPagingDataSettlementService_ := SettlementService.RequestPagingData.Create;
    ReqPagingDataSettlementService_.currentPage := currentPage;
    ReqPagingDataSettlementService_.pageSize := pageSizeVal;

    GetSettlementListRequest_.auth := authSettlement;
    GetSettlementListRequest_.startDate := startDate;
    GetSettlementListRequest_.endDate := endDate;
    GetSettlementListRequest_.pagingData := ReqPagingDataSettlementService_;

    result := portSettlement.GetSettlementList(GetSettlementListRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.GetSettlementDetail(
  date: string; currentPage: integer; pageSizeVal: integer): GetSettlementDetailResponse;
var
  GetSettlementDetailRequest_: GetSettlementDetailRequest;
  ReqPagingDataSettlementService_: SettlementService.RequestPagingData;
begin
  try
    GetSettlementDetailRequest_ := GetSettlementDetailRequest.Create;
    ReqPagingDataSettlementService_ := SettlementService.RequestPagingData.Create;

    ReqPagingDataSettlementService_.currentPage := currentPage;
    ReqPagingDataSettlementService_.pageSize := pageSizeVal;

    GetSettlementDetailRequest_.auth := authSettlement;
    GetSettlementDetailRequest_.date := date;
    GetSettlementDetailRequest_.pagingData := ReqPagingDataSettlementService_;

    result := portSettlement.GetSettlementDetail(GetSettlementDetailRequest_)

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

//api çalýþmayabilir procedure dan functiona convert edildi
function N11Client.TicketListingAssignedToSeller(sellerId: Int64; first,
  pageSize: Integer): TicketListingAssignToResponse;
var
  TicketListingAssignedToSellerRequest_: TicketListingAssignedToSellerRequest;
begin
  try
    TicketListingAssignedToSellerRequest_ := TicketListingAssignedToSellerRequest.Create;
    TicketListingAssignedToSellerRequest_.auth := authTicket;
    TicketListingAssignedToSellerRequest_.sellerId := sellerId;
    TicketListingAssignedToSellerRequest_.first := first;
    TicketListingAssignedToSellerRequest_.pageSize := pageSize;

    result := portTicket.TicketListingAssignedToSeller(TicketListingAssignedToSellerRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.TicketListingBelongsToSeller(sellerId: Int64; first,
  pageSize: Integer): TicketListingBelongsToResponse;
var
  TicketListingBelongsToSellerRequest_: TicketListingBelongsToSellerRequest;
begin
  try
    TicketListingBelongsToSellerRequest_ := TicketListingBelongsToSellerRequest.Create;
    TicketListingBelongsToSellerRequest_.auth := authTicket;
    TicketListingBelongsToSellerRequest_.sellerId := sellerId;
    TicketListingBelongsToSellerRequest_.first := first;
    TicketListingBelongsToSellerRequest_.pageSize := pageSize;

    result := portTicket.TicketListingBelongsToSeller(TicketListingBelongsToSellerRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.TicketAnswer(sellerId, ticketId: Int64;
  content: string): TicketAnswerResponse;
var
  TicketAnswerRequest_: TicketAnswerRequest;
begin
  try
    TicketAnswerRequest_ := TicketAnswerRequest.Create;
    TicketAnswerRequest_.auth := authTicket;
    TicketAnswerRequest_.sellerId := sellerId;
    TicketAnswerRequest_.ticketId := ticketId;
    TicketAnswerRequest_.content := content;

    result := portTicket.TicketAnswer(TicketAnswerRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function N11Client.TicketCreate(reasonId, sellerId: Int64; header,
  content: string): TicketCreateResponse;
var
  TicketCreateRequest_: TicketCreateRequest;
begin
  try
    TicketCreateRequest_ := TicketCreateRequest_.Create;
    TicketCreateRequest_.auth := authTicket;
    TicketCreateRequest_.reasonId := reasonId;
    TicketCreateRequest_.sellerId := sellerId;
    TicketCreateRequest_.header := header;
    TicketCreateRequest_.content := content;

    result := portTicket.TicketCreate(TicketCreateRequest_);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

{
productSellerCode, title, subtitle,
  description: string; domestic: Boolean; categoryid: Int64; price: TXSDecimal;
  currencyType: Int64; productimageurl: string; productimageorder,
  approvalStatus: Int64; strSkuAttributeKey, strSkuAttributeValue , saleStartDate, saleEndDate,
  productionDate, expirationDate, productCondition: string; preparingDay: Int64;
  ProductDiscountstartDate, ProductDiscountendDate, ProductDiscounttype_,
  ProductDiscountvalue, shipmentTemplate: string
}


function N11Client.SaveProduct(PParams: TPParams): SaveProductResponse;
var
  ProductImage_: ProductImage;
  ProductImageList_: ProductImageList;
  skuAttributeRequestList_ : ProductAttributeRequestList;
  skuAttributeRequestList1_ : ProductAttributeRequestList;
  skuAttributeRequest_: ProductAttributeRequest;
  skuAttributeRequest1_: ProductAttributeRequest;
  stockitems: ProductSkuRequestList;
  sku: ProductSkuRequest;
  sku1: ProductSkuRequest;
  CategoryRequest_: CategoryRequest;
  ProductAttribute_: ProductAttributeRequest;
  ProductAttributeRequestList_: ProductAttributeRequestList;
  ProductRequest_: ProductRequest;
  specialProductInfoList_: specialProductInfoList; //sadece seyehat kategori ürünleri
  SpecialProductInfoApiModel_: SpecialProductInfoApiModel; //sadece seyehat kategori ürünleri
  ProductDiscountRequest_: ProductDiscountRequest;
  SaveProductRequest_: SaveProductRequest;
begin
  try
    ProductImage_ := ProductImage.Create;
    skuAttributeRequest_ := ProductAttributeRequest.Create;
    skuAttributeRequest1_ := ProductAttributeRequest.Create;
    sku := ProductSkuRequest.Create;
    sku1 := ProductSkuRequest.Create;
    CategoryRequest_ := CategoryRequest.Create;
    ProductAttribute_ := ProductAttributeRequest.Create;
    ProductRequest_ := ProductRequest.Create;
    SpecialProductInfoApiModel_ := SpecialProductInfoApiModel.Create;
    ProductDiscountRequest_ := ProductDiscountRequest.Create;
    SaveProductRequest_ := SaveProductRequest.Create;

    ProductImage_.url := PParams.productimageurl;
    ProductImage_.order := PParams.order;

    Insert([ProductImage_], ProductImageList_, High(ProductImageList_));

    skuAttributeRequest_.name_ := PParams.strSkuAttributeKey;
    skuAttributeRequest_.value := PParams.strSkuAttributeValue;

    Insert([skuAttributeRequest_], skuAttributeRequestList_, High(skuAttributeRequestList_));

    skuAttributeRequest1_.name_ := PParams.strSkuAttributeKey;
    skuAttributeRequest1_.value := PParams.strSkuAttributeValue1;

    Insert([skuAttributeRequest1_], skuAttributeRequestList1_, High(skuAttributeRequestList1_));

    sku.bundle := PParams.skubundle;
    sku.mpn := PParams.skumpn;
    sku.oem := PParams.skuoem;
    sku.sellerStockCode := PParams.strSellerStockCode;
    sku.attributes := skuAttributeRequestList_;
    sku.quantity := PParams.skuquantity;
    sku.gtin := PParams.skugtin;

    sku1.bundle := PParams.skubundle1;
    sku1.mpn := PParams.skumpn1;
    sku1.oem := PParams.skuoem1;
    sku1.sellerStockCode := PParams.strSellerStockCode1;
    sku1.attributes := skuAttributeRequestList1_;
    sku1.quantity := PParams.skuquantity1;
    sku1.gtin := PParams.skugtin1;

    Insert([sku], stockitems, High(stockitems));
    Insert([sku1], stockitems, High(stockitems));

    CategoryRequest_.id := PParams.categoryid;

    ProductAttribute_.name_ := PParams.strAttributeName;
    ProductAttribute_.value := PParams.strAttributeValue;

    Insert([ProductAttribute_], ProductAttributeRequestList_, High(ProductAttributeRequestList_));

    SpecialProductInfoApiModel_.key :='yokkey';
    SpecialProductInfoApiModel_.value :='yokvalue';

    Insert([SpecialProductInfoApiModel_], specialProductInfoList_, High(specialProductInfoList_));

    ProductDiscountRequest_.startDate := '';
    ProductDiscountRequest_.endDate := '';
    ProductDiscountRequest_.type_ := '';
    ProductDiscountRequest_.value := '';

    ProductRequest_.productSellerCode := PParams.strProductSellerCode;
    ProductRequest_.title := PParams.strProductTitle;
    ProductRequest_.subtitle := PParams.strProductSubtitle;
    ProductRequest_.description := PParams.strProductDescription;
    ProductRequest_.domestic := PParams.boolProductDomestic;
    ProductRequest_.category := CategoryRequest_;
    ProductRequest_.specialProductInfoList :=  specialProductInfoList_;
    ProductRequest_.price := PParams.price;
    ProductRequest_.currencyType := PParams.currencyTypeValue;
    ProductRequest_.images := ProductImageList_;
    ProductRequest_.approvalStatus := PParams.approvalStatusValue;
    ProductRequest_.attributes := ProductAttributeRequestList_;
    ProductRequest_.saleStartDate := PParams.productsaleStartDate;
    ProductRequest_.saleEndDate := PParams.productsaleEndDate;
    ProductRequest_.productionDate := PParams.productProductionDate;
    ProductRequest_.expirationDate := PParams.productExpirationDate;
    ProductRequest_.productCondition := PParams.strProductCondition;
    ProductRequest_.preparingDay := PParams.preparingDayValue;
    ProductRequest_.discount := ProductDiscountRequest_; //parametre olarak eklenmedi
    ProductRequest_.shipmentTemplate := PParams.strShipmentTemplate;
    ProductRequest_.stockItems := stockitems;

    SaveProductRequest_.auth := authProduct;
    SaveProductRequest_.product := ProductRequest_;

    result := portProduct.SaveProduct(SaveProductRequest_);


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

end.
