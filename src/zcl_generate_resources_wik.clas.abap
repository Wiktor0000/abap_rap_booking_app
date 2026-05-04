CLASS zcl_generate_resources_wik DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_generate_resources_wik IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA: lt_resources TYPE TABLE OF zresources_wik.


    DELETE FROM zresources_wik.

    lt_resources = VALUE #(
        ( res_uuid    = cl_system_uuid=>create_uuid_x16_static( )
          res_id      = 'SALA_101'
          type        = 'SALA'
          location    = 'Piętro 1'
          description = 'Duża sala konferencyjna z rzutnikiem' )

        ( res_uuid    = cl_system_uuid=>create_uuid_x16_static( )
          res_id      = 'SALA_102'
          type        = 'SALA'
          location    = 'Piętro 1'
          description = 'Mała sala do spotkań 1:1' )

        ( res_uuid    = cl_system_uuid=>create_uuid_x16_static( )
          res_id      = 'BIURKO_01'
          type        = 'BIURKO'
          location    = 'Open Space A'
          description = 'Biurko przy oknie' )

        ( res_uuid    = cl_system_uuid=>create_uuid_x16_static( )
          res_id      = 'BIURKO_02'
          type        = 'BIURKO'
          location    = 'Open Space A'
          description = 'Biurko z regulacją wysokości' )
    ).


    INSERT zresources_wik FROM TABLE @lt_resources.


    out->write( |Wstawiono { sy-dbcnt } rekordów do tabeli ZRESOURCES_WIK.| ).

  ENDMETHOD.
ENDCLASS.
