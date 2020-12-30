@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Zc_test2'

@UI: {
 headerInfo: { typeName: 'Zc_test2', typeNamePlural: '', title: { type: #STANDARD, value: '' } } }

@Search.searchable: true

define root view entity ZC_Test2
  as projection on ZI_test_2
{

  key Mykey      as MykeyUUID,

      @UI: {
          lineItem:       [ { position: 10, importance: #HIGH } ],
          identification: [ { position: 10, label: 'Mykey [1,...,99999999]' } ] }
      @Search.defaultSearchElement: true
  key LocationId as LocationIdID,

      @ObjectModel.text.element: ['City'] ----meaning?
      @Search.defaultSearchElement: true
      City       as City,
      Street     as Street



}
