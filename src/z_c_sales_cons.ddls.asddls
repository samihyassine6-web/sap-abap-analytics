@AbapCatalog.sqlViewName: 'ZCSALCON'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for sales facts'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #CONSUMPTION
@OData.publish: true

@UI.headerInfo: {
  typeName: 'Sales Order',
  typeNamePlural: 'Sales Orders',
  title: { value: 'SalesID' },
  description: { value: 'CustomerName' }
}

@UI.facet: [
  {
    id: 'GEN',
    type: #IDENTIFICATION_REFERENCE, 
    label: 'General Information',
    targetQualifier: 'GEN',
    position: 10
  },
  {
    id: 'CUST',
    type: #IDENTIFICATION_REFERENCE,
    label: 'Customer Information',
    targetQualifier: 'CUST',
    position: 20
  },
  {
    id: 'PROD',
    type: #IDENTIFICATION_REFERENCE,
    label: 'Product Information',
    targetQualifier: 'PROD',
    position: 30
  }
]


define view Z_C_Sales_Cons
  as select from Z_C_Sales
{
      /* Key */
      @UI.lineItem: [{ position: 10 }]
      @UI.selectionField: [{ position: 10 }]
      @UI.identification: [{ position: 10, qualifier: 'GEN' }]
      @EndUserText.label: 'Sales ID'
  key SalesID,

      /* Time */
      @UI.lineItem: [{ position: 20 }]
      @UI.selectionField: [{ position: 20 }]
      @UI.identification: [{ position: 20, qualifier: 'GEN' }]
      @EndUserText.label: 'Calendar Date'
      CalendarDate,


      @UI.selectionField: [{ position: 30 }]
      @UI.identification: [{ position: 30, qualifier: 'GEN' }]
      @EndUserText.label: 'Year'
      CalendarYear,


      @UI.selectionField: [{ position: 40 }]
      @UI.identification: [{ position: 40, qualifier: 'GEN' }]
      @EndUserText.label: 'Month'
      CalendarMonth,


      @UI.selectionField: [{ position: 50 }]
      @UI.identification: [{ position: 50, qualifier: 'GEN' }]
      @EndUserText.label: 'Quarter'
      CalendarQuarter,



      @UI.selectionField: [{ position: 60 }]
      @UI.identification: [{ position: 60, qualifier: 'GEN' }]
      @EndUserText.label: 'Week'
      CalendarWeek,

      /* Customer */

      @UI.identification: [{ position: 5, qualifier: 'CUST' }]
      @EndUserText.label: 'Customer ID'
      CustomerID,


      @UI.lineItem: [{ position: 30 }]
      @UI.selectionField: [{ position: 70 }]
      @UI.identification: [{ position: 10, qualifier: 'CUST' }]
      @EndUserText.label: 'Customer Name'
      CustomerName,


      @UI.selectionField: [{ position: 80 }]
      @UI.identification: [{ position: 20, qualifier: 'CUST' }]
      @EndUserText.label: 'Country'
      Country,

      @UI.selectionField: [{ position: 90 }]
      @UI.identification: [{ position: 30, qualifier: 'CUST' }]
      @EndUserText.label: 'Region'
      Region,

      /* Product */

      @UI.identification: [{ position: 5, qualifier: 'PROD' }]
      @EndUserText.label: 'Product ID'
      ProductID,


      @UI.lineItem: [{ position: 40 }]
      @UI.selectionField: [{ position: 100 }]
      @UI.identification: [{ position: 10, qualifier: 'PROD' }]
      @EndUserText.label: 'Product Name'
      ProductName,


      @UI.selectionField: [{ position: 110 }]
      @UI.identification: [{ position: 20, qualifier: 'PROD' }]
      @EndUserText.label: 'Category'
      Category,

      
      @UI.selectionField: [{ position: 120 }]  
      @UI.identification: [{ position: 30, qualifier: 'PROD' }]
      @EndUserText.label: 'Price Group'
      PriceGroup,

      /* Measures */

      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 70, qualifier: 'GEN' }]
      @EndUserText.label: 'Quantity'
      Quantity,

      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 80, qualifier: 'GEN' }]
      @EndUserText.label: 'Sales Amount'
      Amount,
      
      @EndUserText.label: 'Currency'
      Currency
}
