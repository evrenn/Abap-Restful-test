CLASS zcl_inser_records_emp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_inser_records_emp IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: itab TYPE STANDARD TABLE OF zemp_dtls.

    itab = VALUE #(  ( zempid = cl_system_uuid=>create_uuid_c32_static( )
                       zempname ='Evren Tomrukcu'
                       zempdesg = 'L5'
                       zgender  = 'M'
                       zsalary  = '230.14'
                       zcurrency_key = 'USD'
    )
                     ( zempid = cl_system_uuid=>create_uuid_c32_static( )
                       zempname ='Katie'
                       zempdesg = 'L1'
                       zgender  = 'F'
                       zsalary  = '30.14'
                       zcurrency_key = 'EUR'
    )
                      ( zempid = cl_system_uuid=>create_uuid_c32_static( )
                       zempname ='Patrick'
                       zempdesg = 'L9'
                       zgender  = 'F'
                       zsalary  = '560.14'
                       zcurrency_key = 'EUR'
    )

    ).
    DELETE FROM zemp_dtls.

    INSERT zemp_dtls FROM TABLE @itab.

    out->write( 'Success' ).

  ENDMETHOD.

ENDCLASS.
