CLASS zcl_emp_dtls_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_emp_dtls_insert IMPLEMENTATION.

  METHOD  if_oo_adt_classrun~main.

    DATA:it_tab TYPE STANDARD TABLE OF zemp_dtls_et1.

    DELETE FROM zemp_dtls_et1.

    it_tab = VALUE #(
                     (  zemp_id = cl_system_uuid=>create_uuid_x16_static( )
                      zempname = 'ANDREW'
                      zcountry = 'US'
                      zsalary = ' 203.56'
                      zcurrency = 'USD'
    )
                    (  zemp_id = cl_system_uuid=>create_uuid_x16_static( )
                      zempname = 'evren'
                      zcountry = 'De'
                      zsalary = ' 435.56'
                      zcurrency = 'EUR'
    )
                         (  zemp_id = cl_system_uuid=>create_uuid_x16_static( )
                      zempname = 'jack'
                      zcountry = 'US'
                      zsalary = ' 233.16'
                      zcurrency = 'USD'
    )
                    (  zemp_id = cl_system_uuid=>create_uuid_x16_static( )
                      zempname = 'asfgn'
                      zcountry = 'De'
                      zsalary = ' 115.56'
                      zcurrency = 'EUR'
    )


    ).

    MODIFY zemp_dtls_et1 FROM TABLE @it_tab.

    IF sy-subrc IS INITIAL.
      out->write('SUccesfull!' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
