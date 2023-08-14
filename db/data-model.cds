namespace my.orders;
using { managed, cuid } from '@sap/cds/common';


entity Orders : managed {
  key ID      : UUID;
  @title : 'Número da ordem'
    key OrderID  : Integer;
  @title : 'Data requerida'
    RequiredDate : DateTime;
  @title : 'Data do envio'
    ShippedDate  : DateTime;
  @title : 'Fretes'
    Freight      : Decimal;
  @title : 'Nome do navio'
    ShipName     : String;
  @title : 'País do navio'
    ShipCountry  : String;
  @title : 'Status da ordem'
    OrderStatus : String;

    OrdersDetails : Association to many OrdersDetails on OrdersDetails.OrderID = OrderID;
}

entity OrdersDetails : managed {
    key ID      : UUID;
  @title : 'Número da ordem'
    key OrderID    : Integer;
  @title : 'Número do produto'
    key ProductID  : Integer; 
  @title : 'Preço por unidade'
    UnitPrice : Decimal;
  @title : 'Quantidade'
    Quantity  : Integer;
  @title : 'Desconto'
    Discount : String;
  Order : Association to Orders;
  Prdocuts : Association to many Products on Prdocuts.ProductID = ProductID;
}

entity Products : managed {
   key ID      : UUID;
  @title : 'Número do produto'
    key ProductID    : Integer;
  @title : 'Nome do produto'
    ProductName  : String;
  @title : 'Quantidade por unidade'
    QuantityPerUnit : String;
  @title : 'Preço por unidade'
    UnitPrice  : Decimal;
  @title : 'Unidades no estoque'
    UnitsInStock : Integer;
  @title : 'Unidades na ordem'
    UnitsOnOrder : Integer;
  @title : 'Descontinuado?'
    Discontinued : Boolean;
    OrdersDetails : Association to OrdersDetails;
}
