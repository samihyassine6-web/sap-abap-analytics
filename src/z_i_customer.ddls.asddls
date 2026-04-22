@AbapCatalog.sqlViewName: 'ZICUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Basic View'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view Z_I_Customer as select from zda_customer_d
{
    key customer_id as CustomerID,
    customer_name   as CustomerName,
    country         as Country,
    region          as Region
}
