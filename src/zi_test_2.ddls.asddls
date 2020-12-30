@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Model test 2'
define root view entity ZI_test_2
  as select from zett_1

  /* Associations */
  association [0..1] to zlocation as _zlocation on zett_1.location_id = _zlocation.location_id

{
  key zett_1.mykey                    as Mykey,
  key zett_1.location_id              as LocationId,
      zett_1.location_description     as LocationDescription,
      zett_1.city                     as City,
      zett_1.postal_code              as PostalCode,
      zett_1.street                   as Street,
      zett_1.street_number            as StreetNumber,
      zett_1.data1                    as Data1,
      _zlocation.location_id          as LocationId2,
      _zlocation.location_description as LocationDescription2,
      _zlocation.city                 as City2,
      _zlocation.postal_code          as PostalCode2,
      _zlocation.street               as Street2,
      _zlocation.street_number        as StreetNumber2,
      _zlocation // Make association public
}
