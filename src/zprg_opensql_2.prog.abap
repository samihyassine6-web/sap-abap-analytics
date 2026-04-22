*&---------------------------------------------------------------------*
*& Report zprg_opensql_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprg_opensql_2.


SELECT FROM zda_sales_f AS so
  INNER JOIN zda_customer_d AS cust
  ON so~customer_id = cust~customer_id
  FIELDS
      cust~customer_id AS customerid,
      cust~customer_name AS cuntomername,
      SUM( so~amount  ) AS totalcustomamount
      GROUP BY cust~customer_id, cust~customer_name


  INTO TABLE @DATA(it_result).


IF sy-subrc = 0.
  cl_demo_output=>display( it_result ).
ELSE.
  MESSAGE: e001(zmessage).
ENDIF.
