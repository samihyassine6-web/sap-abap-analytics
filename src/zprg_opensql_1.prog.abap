*&---------------------------------------------------------------------*
*& Report zprg_opensql_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprg_opensql_1.


DATA: lv_discount TYPE p DECIMALS 1 VALUE '0.8'.

SELECT FROM zda_sales_f AS so
  INNER JOIN zda_product_d AS pro
  ON so~product_id = pro~product_id
  INNER JOIN zda_customer_d AS cust
  ON so~customer_id = cust~customer_id
  FIELDS
          so~sale_id AS salesorder,
          so~customer_id AS customerid,
          cust~customer_name AS customername,
          pro~product_id AS productid,
          pro~product_name AS productname,
          so~quantity AS quantity,
          so~amount AS amount,
          so~currency AS currency,
          so~amount * @lv_discount AS amount_discounted,
          ceil( so~amount ) AS ceil,
          floor( so~amount ) AS floor,
          abs( so~amount ) AS abs,
          round( so~amount, 1 ) AS round,
          division( so~amount, 10, 2 ) AS division,
          mod( floor( so~amount ), 10 ) AS mod

  INTO  TABLE @DATA(lt_result).

IF sy-subrc = 0.
  cl_demo_output=>display( lt_result ).
ELSE.
  MESSAGE: e001(zmessage).
ENDIF.
