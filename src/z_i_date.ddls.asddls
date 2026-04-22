@AbapCatalog.sqlViewName: 'ZIDATE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Date Basic View'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view Z_I_Date as select from zda_date_d
{
  key cal_date      as CalendarDate,
      cal_year      as CalendarYear,
      cal_month     as CalendarMonth,
      cal_quarter   as CalendarQuarter,
      cal_week      as CalendarWeek
}
