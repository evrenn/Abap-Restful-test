@AbapCatalog.sqlViewName: 'ZEMP_DTLS_V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Details'
@Metadata.allowExtensions: true

define root view Z_I_EMP_DTLS as select from zemp_dtls as a
 {
    key a.zempid ,
        a.zempname,
        a.zempdesg,
        a.zgender,
        a.zsalary,
        a.zcurrency_key
    
}
