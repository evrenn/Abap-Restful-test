@AbapCatalog.sqlViewName: 'ZVIEW_SALESX'
@AbapCatalog.compiler.compareFilter: false
@AbapCatalog.preserveKey
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales & CUstomer'

@UI: {
 headerInfo: { typeName: 'SalesOrders', typeNamePlural: 'SalesOrders', title: { type: #STANDARD, value: 'sales_order' } } }

@Search.searchable: true
define root view zc_sales_masterx
  as select from zsales_master
  association [0..1] to zet_customer as _customer on $projection.customer = _customer.customer
  association [0..1] to I_Currency   as _currency on $projection.currency_code = _currency.Currency

{
      @UI.facet: [ { id:              'Sales',
                     purpose:         #STANDARD,
                     type:            #IDENTIFICATION_REFERENCE,
                     label:           'Sales',
                     position:        10 }
                     ]



      @UI: {
          lineItem:       [ { label: 'Sales Order', position: 10, importance: #HIGH } ] }
      @Search.defaultSearchElement: true
  key sales_order,

      @UI: {
      lineItem:       [ { position: 20, importance: #HIGH } ],
      selectionField: [ { position: 20 } ] }

      ////      @Consumption.valueHelpDefinition:[ { entity: { name: '/DMO/I_Customer', element: 'customer_id'  } } ]
      customer,

      @UI: {
      lineItem:       [ { position: 30, importance: #HIGH } ],
      selectionField: [ { position: 30 } ] }
      created_by,

      @UI: {
      lineItem:       [ { position: 40, importance: #HIGH } ] }
      created_on,

      @UI: {
      lineItem:       [ { position: 50, importance: #HIGH } ] ,
      identification: [{ position: 50 }] }

      @Semantics.amount.currencyCode: 'currency_code'
      total_sales,


      @Semantics.currencyCode: true
      currency_code,
      //      @UI: {
      //      lineItem:       [ { position: 60, importance: #HIGH } ] ,
      //      identification: [{ position: 60 }] }
      //
      //      _customer.City,
      //
      @UI: {
       lineItem:       [ { label: 'Customer Name', position: 70, importance: #HIGH } ] ,
       identification: [{ label: 'Customer Name', position: 70 }] }

      concat( 'RC-' , _customer.name ) as customer_name,

      @UI: { lineItem:       [ { position: 80,label: 'Statuss', importance: #HIGH } ,
      { type: #FOR_ACTION, dataAction: 'setComplete', label: 'Complete'} ] }
      status,
      //
      _customer, // Make association public
      _currency
}
