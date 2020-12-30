@AbapCatalog.sqlViewName: 'ZEMP_DTLS_ET1_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DDL Source -  Root View'
@Metadata.allowExtensions: true

define root view ZEMP_DTLS_DDL

  as select from zemp_dtls_et1 
{

  key zemp_id,
      zempname,
      zcountry,
      zsalary,
      zcurrency,
      @Semantics.user.createdBy: true
      rcd_created_by
//      @Semantics.systemDateTime.createdAt: true
//      rcd_rcreated_on

}
