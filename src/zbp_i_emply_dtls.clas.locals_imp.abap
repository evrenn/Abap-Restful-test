CLASS lhc_z_i_emp_dtls DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS validateEmpID FOR VALIDATE ON SAVE
      IMPORTING keys FOR Z_I_EMP_DTLS~validateEmpID.

ENDCLASS.

CLASS lhc_z_i_emp_dtls IMPLEMENTATION.

  METHOD validateEmpID.

  read entity z_i_emp_dtls
  FIELDS ( zempid )
  WITH CORRESPONDING #( keys )
  RESULT data(lt_values).

  read TABLE lt_values into data(ls_values) index 1.

  if sy-subrc is INITIAL AND ls_values-zempid is INITIAL.

  Append VALUE #( %key = ls_values-%key
                  %msg = new_message( id = 'ZSY_MSG_CLASS'
                                      number = '001'
                                      severity = if_abap_behv_message=>severity-error )
                                       ) to reported-z_i_emp_dtls.

  ENDIF.

  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
