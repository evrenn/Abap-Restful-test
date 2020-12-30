CLASS zcl_generate_test1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_test1 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA tb_itab TYPE TABLE OF zett_1.

    tb_itab = VALUE #(
    ( mykey ='01'
    location_id ='123'
    location_description = 'Bredeney'
    city = 'Essen'
    postal_code = '45133'
    street = 'Stocksiepen'
    street_number = '13'
    data1  = 'Evrenn'
    )
    ( mykey ='02'
    location_id ='123'
    location_description = 'ETEC'
    city = 'Essen'
    postal_code = '45122'
    street = 'Safaen'
    street_number = '55'
    data1  = 'Rafael'
    )
     ( mykey ='03'
    location_id ='234'
    location_description = 'ETEC'
    city = 'Essen'
    postal_code = '45322'
    street = 'Safaen'
    street_number = '25'
    data1  = 'Julia'
    )
    ( mykey ='04'
    location_id ='0000002320'
    location_description = 'ETEC'
    city = 'Essen'
    postal_code = '45322'
    street = 'Safaen'
    street_number = '25'
    data1  = 'Julia'
    )
    ).

*   delete existing entries in the database table
    DELETE FROM zett_1.

*   insert the new table entries
    INSERT zett_1 FROM TABLE @tb_itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully!| ).


  ENDMETHOD.




ENDCLASS.
