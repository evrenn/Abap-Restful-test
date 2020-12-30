@AbapCatalog.sqlViewName: 'ZVIEW_SALES'
@AbapCatalog.compiler.compareFilter: false
@AbapCatalog.preserveKey
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales & CUstomer'
define root view zc_sales_master
  as select from zsales_master
  association [0..1] to zet_customer as _customer on $projection.customer = _customer.customer
  association [0..1] to I_Currency   as _currency on $projection.currency_code = _currency.Currency
{
      //zsales_order
  key sales_order,
      customer,
      created_by, 
      created_on,
      @Semantics.amount.currencyCode: 'currency_code'
      total_sales,

      @Semantics.currencyCode: true
      currency_code,

      //      _customer.City,
      _customer.name as customerrrr,

      //      concat( _customer.FirstName , _customer.LastName ) as customer_name,
      _currency.CurrencyISOCode,
      _customer, // Make association public
      _currency


}
