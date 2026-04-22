@AbapCatalog.sqlViewName: 'ZIPROD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Basic View'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view Z_I_Product as select from zda_product_d
{
    key product_id   as ProductID,
        product_name as ProductName,
        category     as Category,
        price_group  as PriceGroup
}
