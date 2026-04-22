@AbapCatalog.sqlViewName: 'ZCSALES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Analytics Cube'
@Metadata.ignorePropagatedAnnotations: true
@Analytics.dataCategory: #CUBE
@VDM.viewType: #COMPOSITE
@OData.publish: true
define view Z_C_Sales as select from Z_I_Sales as Sales
    association [1..1] to Z_I_Customer as _Customer
    on Sales.CustomerID = _Customer.CustomerID

    association [1..1] to Z_I_Product as _Product
    on Sales.ProductID = _Product.ProductID

    association [1..1] to Z_I_Date as _Date
    on Sales.CalendarDate = _Date.CalendarDate
{
     /* Keys */
  key Sales.SalesID,

  /* Dimensions */
  Sales.CalendarDate,
  _Date.CalendarYear,
  _Date.CalendarMonth,
  _Date.CalendarQuarter,
  _Date.CalendarWeek,

  Sales.CustomerID,
  _Customer.CustomerName,
  _Customer.Country,
  _Customer.Region,

  Sales.ProductID,
  _Product.ProductName,
  _Product.Category,
  _Product.PriceGroup,

  /* Measures */
  /* Measures (NW 7.57 compatible) ohne analytics annotations */
  Sales.Quantity,

  @DefaultAggregation: #SUM
  @Semantics.amount.currencyCode: 'Currency'
  Sales.Amount,

  Sales.Currency 
}
