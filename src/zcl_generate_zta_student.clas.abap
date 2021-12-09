CLASS zcl_generate_zta_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_zta_student IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_student TYPE STANDARD TABLE OF zta_student.
    lt_student = VALUE #(
    ( studentid = '1000101' fname = 'FirstName1' lname = 'LastName1' gender = 'M'
    birthdate = '19900414' commnumber = '101' )
    ( studentid = '1000102' fname = 'FirstName2' lname = 'LastName2' gender = 'F'
    birthdate = '19900612' commnumber = '102' )
    ( studentid = '1000103' fname = 'FirstName3' lname = 'LastName3' gender = 'M'
    birthdate = '19900911' commnumber = '103')
    ( studentid = '1000104' fname = 'FirstName4' lname = 'LastName4' gender = 'M'
    birthdate = '19890612' commnumber = '104')
    ( studentid = '1000105' fname = 'FirstName5' lname = 'LastName5' gender
    = 'M' birthdate = '19911206' commnumber = '106') ).

    DELETE FROM zta_student.
    INSERT zta_student FROM TABLE @lt_student.
    CLEAR lt_student. "clear internaltable
    SELECT *
    FROM zta_student
    INTO table@lt_student.
    IF sy-subrc IS INITIAL.                "checkif internal tableisnotinitial
      out->write( 'data inserted successfully!' ).
      out->write( lt_student ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
