unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CategoryService,   Soap.InvokeRegistry,
  Soap.SOAPHTTPClient, Vcl.StdCtrls, System.Generics.Collections, N11ApiBox, CityService, ProductService,Soap.XSBuiltIns,
  CodeSiteLogging, System.Actions, Vcl.ActnList, Vcl.ActnMan, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxRibbonCustomizationForm, cxClasses, dxRibbon, dxBar,
  System.ImageList, Vcl.ImgList, Vcl.Tabs, dxStatusBar, dxRibbonStatusBar, cxPC,
  dxDockPanel, dxDockControl;

type
  TForm1 = class(TForm)
    Button1: TButton;
    CodeSiteLogger1: TCodeSiteLogger;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  client: N11Client;
  CategoryAttributeValueResponse: GetCategoryAttributeValueResponse;
 { HTTPRIO1: THTTPRIO;
  port: CategoryServicePort;
  auth: Authentication;
  TopLevelCategoriesRequest: GetTopLevelCategoriesRequest;
  TopLevelCategoriesResponse: GetTopLevelCategoriesResponse;
  CategoryAttributesResponse: GetCategoryAttributesResponse;
  ResInfo: ResultInfo;
  topCategories: TopCategoryList;
  CategoryAttributesRequest:GetCategoryAttributesRequest;
  SubCategories: SubCategoryList;
  CategoryAttributeValueRequest: GetCategoryAttributeValueRequest;
  ReqPagingData: RequestPagingData;
  subCategori: SubCategory;
  subCategori2: SubCategory;
  currentPageVal: integer;
  pageSizeVal: integer;
  CategoData, CategoData2: CategoryData;
  CategoryAttributeInfoLýst: CategoryAttributeList;
  CategoryAttributeInfo : CategoryAttributeData;
  CategoryAttributeValueResponse: GetCategoryAttributeValueResponse;
  CategoryProductAttributeValData:CategoryProductAttributeValueData;
  CategoriAttributeList : CategoryAttributeList ;
  attributeData: TList<CategoryAttributeData>;
  CategoriAttributeData : CategoryAttributeData;
  CategoriAttributeValueData:CategoryAttributeValueData;
  CategoryAttributesIdRequest  :GetCategoryAttributesIdRequest ;
  CategoryAttributesIdResponse: GetCategoryAttributesIdResponse ;
  CategoriProductAttributeData: CategoryProductAttributeData;
  client: N11Client;     }

  valuedata: CategoryProductAttributeValueData;
  categorilist: TopCategoryList;
  subcategori: SubCategory;
implementation



{$R *.dfm}

function durumSor(i: integer): String;
begin

if i = 1 then
  result :=  'Satýþ Öncesi'
else if i = 2 then
  result := 'Satýþta'
else if i = 3 then
  result := 'Stok yok'
else if i = 4 then
  result := 'Satýþa kapalý'
else
  result := 'durum belli deðil amk';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
SaveProductResponse_: SaveProductResponse;
price_: TXSDecimal;
Params: TPParams;
begin


  try

  price_:= TXSDecimal.Create;
  price_.DecimalString:='50';

  Params.productimageurl := 'https://www.mobilcadde.com/fotograflar/orj/huawei-mate-20-lite-uyku-modlu-kapakli-siyah-kilif-10117114121876486.jpg';
  Params.order := 1;
  Params.strSkuAttributeKey := 'Renk' ;
  Params.strSkuAttributeValue := 'Mavi';
  Params.strSkuAttributeValue1 :='Kýrmýzý';
  Params.skubundle := false;
  Params.skumpn := '';
  Params.skuoem := '';
  Params.skuquantity :=  5;
  Params.skugtin := '';
  Params.strSellerStockCode :=  'StokKodu1234567890-1';
  Params.skubundle1 := false;
  Params.skumpn1 := '';
  Params.skuoem1 :=  '';
  Params.skuquantity1 := 10;
  Params.skugtin1 := '';
  Params.strSellerStockCode1 :=  'StokKodu61234567890';
  Params.categoryid :=  1000475;
  Params.strAttributeName := 'Marka';
  Params.strAttributeValue := 'Apple';
  Params.strProductSellerCode := 'APIDeneme432101000000000';
  Params.strProductTitle := 'Deneme urun1';
  Params.strProductSubtitle :=  'deneme alt baslik';
  Params.strProductDescription := 'deneme aciklama';
  Params.boolProductDomestic :=  false;
  Params.price := price_;
  Params.currencyTypeValue := 1;
  Params.approvalStatusValue := 1;
  Params.productsaleStartDate := '';
  Params.productsaleEndDate := '';
  Params.productProductionDate := '01/12/2016';
  Params.productExpirationDate := '01/12/2023';
  Params.strProductCondition := '1';
  Params.preparingDayValue := 3;
  Params.strShipmentTemplate := 'MNG';


    client := N11Client.Create;
    SaveProductResponse_ := SaveProductResponse.Create;
    SaveProductResponse_ := client.SaveProduct(  Params  );
    //listbox1.Items.Add(SaveProductResponse_.result.status);
    //listbox1.Items.Add(SaveProductResponse_.result.errorCode);
    //listbox1.Items.Add(SaveProductResponse_.result.errorMessage);
    //listbox1.Items.Add(SaveProductResponse_.result.errorCategory);



  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;



        {  SaveProductResponse_:= SaveProductResponse.Create;
          price_:= TXSDecimal.Create;
          pparams_.priceValue:=  TXSDecimal.Create;
          PParams_.strUrl:='https://n11scdn1.akamaized.net/a1/1024/elektronik/akilli-saat-aksesuarlari/xiaomi-mi-band-2-3-4-akilli-bileklik-kordon-21-renk-3m-silikon__0259446766315146.jpeg';
          PParams_.strSellerStockCode:='MaviKod-APIDeneme432100000000';
          pparams_.strSellerStockCode1:='KýrmýzýKod-APIDeneme4321000000000';
          pparams_.strAttributeName:='Marka';
          pparams_.strAttributeValue:='Apple';
          pparams_.strSkuAttributeKey:='Renk';
          pparams_.strSkuAttributeValue:='Mavi';
          pparams_.strSkuAttributeValue1:='Kýrmýzý';
          pparams_.strProductTitle:='Lorem ipsum';
          pparams_.strProductSubtitle:='Lorem ipsum dolor sit amet';
          pparams_.strProductSellerCode:='APIDeneme432101000000000';
          pparams_.strProductCondition:='1';
          pparams_.strShipmentTemplate:='MNG';
          pparams_.strProductDescription:='Hello World!';
          pparams_.strGtin:='0190198066473';
          pparams_.strGtin1:='0190198066474';
          pparams_.setOrderValue:=1;
          pparams_.quantityValue:=10;
          pparams_.quantityValue1:=20;
          pparams_.categoryIdValue:=1000475;
          price_.DecimalString:='50';
          pparams_.priceValue:= price_;
          pparams_.currencyTypeValue:=1;
          pparams_.approvalStatusValue:=1;
          pparams_.preparingDayValue:=3;

          }
        //  SaveProductResponse_:=client.SaveProduct(pparams_);
         // form1.Caption:=SaveProductResponse_.product.id.ToString+' '+SaveProductResponse_.result.status;


  // CodeSite.TraceMethod( 'Button1Click' );
  // CodeSite.Send( 'My first message' );
  // CodeSite.Send( 'Main Form', Self );




end;











end.
