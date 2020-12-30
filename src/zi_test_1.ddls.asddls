@AbapCatalog.sqlViewName: 'ZSQL_TEST1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'test1 data definition'
define view ZI_test_1
  as select from zett_1
{
  key mykey                as Mykey,
  key location_id          as LocationId,
      location_description as LocationDescription,
      city                 as City,
      postal_code          as PostalCode,
      street               as Street,
      street_number        as StreetNumber,
      data1                as Data1
}
