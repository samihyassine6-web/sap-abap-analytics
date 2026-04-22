@AbapCatalog.sqlViewName: 'ZISALES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Fact Basic View'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view Z_I_Sales as select from zda_sales_f
{
   key sale_id    as SalesID,
       cal_date   as CalendarDate,
       customer_id as CustomerID,
       product_id  as ProductID,
       quantity   as Quantity,
       @Semantics.amount.currencyCode: 'Currency'
       amount     as Amount,
       currency   as Currency
}
