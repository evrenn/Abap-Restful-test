CLASS lhc_Sales DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS setComplete FOR MODIFY
      IMPORTING  keys
                  FOR ACTION zc_sales_masterx~setComplete
      RESULT    result.

ENDCLASS.

CLASS lhc_Sales IMPLEMENTATION.

  METHOD setComplete.

    MODIFY ENTITY zc_sales_masterx
    UPDATE FROM VALUE #( FOR key IN keys ( sales_order = key-sales_order
                                            status = 'Completed'
                                            %control-status = if_abap_behv=>mk-on )

                                            )
                                           FAILED DATA(it_failed)
                                           REPORTED DATA(it_reported).


  ENDMETHOD.

ENDCLASS.
