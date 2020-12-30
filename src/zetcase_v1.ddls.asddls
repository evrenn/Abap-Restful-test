@AbapCatalog.sqlViewName: 'ZETCASE_V1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'et case1'
define view zetcase_v12
  as select from Z_I_EMP_DTLS
{
key zempid,
zempname,
zempdesg,
zgender,
zsalary,
zcurrency_key
}
