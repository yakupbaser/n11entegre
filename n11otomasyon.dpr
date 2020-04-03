program n11otomasyon;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  CategoryService in 'CategoryService.pas',
  n11ApiBox in 'n11ApiBox.pas',
  CityService in 'CityService.pas',
  ProductService in 'ProductService.pas',
  ProductSellingService in 'ProductSellingService.pas',
  ProductStockService in 'ProductStockService.pas',
  OrderService in 'OrderService.pas',
  ShipmentCompanyService in 'ShipmentCompanyService.pas',
  ShipmentService in 'ShipmentService.pas',
  SettlementService in 'SettlementService.pas',
  TicketService in 'TicketService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
