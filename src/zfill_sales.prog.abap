*&---------------------------------------------------------------------*
*& Report zfill_sales
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfill_sales.

DATA: lt_customers TYPE TABLE OF zda_customer_d,
      lt_products  TYPE TABLE OF zda_product_d,
      lt_dates     TYPE TABLE OF zda_date_d,
      lt_sales     TYPE TABLE OF zda_sales_f.


"------------------------------------------
" 1️⃣ Kundenstammdaten (15)
"------------------------------------------
lt_customers = VALUE #(
  ( mandt = sy-mandt customer_id = 'CUST16' customer_name = 'Ocean IT' country = 'US' region = 'Florida' )
  ( mandt = sy-mandt customer_id = 'CUST17' customer_name = 'Adobe AG'    country = 'US' region = 'Texas' )
  ( mandt = sy-mandt customer_id = 'CUST18' customer_name = 'OpenDesk KG'  country = 'GB' region = 'Oxford' )
  ( mandt = sy-mandt customer_id = 'CUST19' customer_name = 'IT Manufactor' country = 'GB' region = 'London' )
  ( mandt = sy-mandt customer_id = 'CUST20' customer_name = 'TechNow GmbH' country = 'FR' region = 'Paris' )
  ( mandt = sy-mandt customer_id = 'CUST21' customer_name = 'Gama AG'     country = 'FR' region = 'Lyon' )
  ( mandt = sy-mandt customer_id = 'CUST22' customer_name = 'Tesla AG'    country = 'US' region = 'Chicago' )

).

INSERT zda_customer_d FROM TABLE lt_customers.
WRITE: / 'Demo-Kunden eingefügt:', LINES( lt_customers ).

"------------------------------------------
" 3️⃣ Datumstabelle (20 Tage)
"------------------------------------------
lt_dates = VALUE #(
  ( mandt = sy-mandt cal_date = '20260121' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260122' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260123' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260124' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260125' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260126' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260127' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '03' )
  ( mandt = sy-mandt cal_date = '20260128' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
  ( mandt = sy-mandt cal_date = '20260129' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
  ( mandt = sy-mandt cal_date = '20260130' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
  ( mandt = sy-mandt cal_date = '20260131' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
).

INSERT zda_date_d FROM TABLE lt_dates.
WRITE: / 'Demo-Daten für Datum eingefügt:', LINES( lt_dates ).

"------------------------------------------
" 4️⃣ Sales-Tabelle (20 Einträge zufällig)
"------------------------------------------
lt_sales = VALUE #(
  ( mandt = sy-mandt sale_id = 'SALES21' cal_date = '20260101' customer_id = 'CUST16' product_id = 'PROD01' quantity = 10 amount = 1000 currency = 'USD' )
  ( mandt = sy-mandt sale_id = 'SALES22' cal_date = '20260102' customer_id = 'CUST17' product_id = 'PROD02' quantity = 5  amount = 500  currency = 'USD' )
  ( mandt = sy-mandt sale_id = 'SALES23' cal_date = '20260103' customer_id = 'CUST22' product_id = 'PROD03' quantity = 7  amount = 700  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES24' cal_date = '20260104' customer_id = 'CUST16' product_id = 'PROD04' quantity = 8  amount = 800  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES25' cal_date = '20260105' customer_id = 'CUST18' product_id = 'PROD05' quantity = 6  amount = 600  currency = 'GBR' )
  ( mandt = sy-mandt sale_id = 'SALES26' cal_date = '20260106' customer_id = 'CUST20' product_id = 'PROD01' quantity = 12 amount = 1200 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES27' cal_date = '20260107' customer_id = 'CUST19' product_id = 'PROD02' quantity = 3  amount = 300  currency = 'GBR' )
  ( mandt = sy-mandt sale_id = 'SALES28' cal_date = '20260108' customer_id = 'CUST22' product_id = 'PROD03' quantity = 9  amount = 900  currency = 'USD' )
  ( mandt = sy-mandt sale_id = 'SALES29' cal_date = '20260109' customer_id = 'CUST15' product_id = 'PROD04' quantity = 4  amount = 400  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES30' cal_date = '20260110' customer_id = 'CUST13' product_id = 'PROD05' quantity = 11 amount = 1100 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES31' cal_date = '20260111' customer_id = 'CUST21' product_id = 'PROD01' quantity = 2  amount = 200  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES32' cal_date = '20260112' customer_id = 'CUST21' product_id = 'PROD02' quantity = 14 amount = 1400 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES33' cal_date = '20260113' customer_id = 'CUST19' product_id = 'PROD03' quantity = 1  amount = 100  currency = 'GBR' )
  ( mandt = sy-mandt sale_id = 'SALES34' cal_date = '20260114' customer_id = 'CUST20' product_id = 'PROD04' quantity = 13 amount = 1300 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES35' cal_date = '20260115' customer_id = 'CUST20' product_id = 'PROD05' quantity = 15 amount = 1500 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES36' cal_date = '20260120' customer_id = 'CUST01' product_id = 'PROD01' quantity = 5  amount = 500  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES37' cal_date = '20260125' customer_id = 'CUST02' product_id = 'PROD02' quantity = 6  amount = 600  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES38' cal_date = '20260129' customer_id = 'CUST03' product_id = 'PROD03' quantity = 7  amount = 700  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES39' cal_date = '20260130' customer_id = 'CUST04' product_id = 'PROD04' quantity = 8  amount = 800  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES40' cal_date = '20260131' customer_id = 'CUST05' product_id = 'PROD05' quantity = 9  amount = 900  currency = 'EUR' )
).

INSERT zda_sales_f FROM TABLE lt_sales.
WRITE: / 'Demo-Sales eingefügt:', LINES( lt_sales ).
