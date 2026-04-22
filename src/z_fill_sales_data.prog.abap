*&---------------------------------------------------------------------*
*& Report z_fill_sales_data
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_fill_sales_data.

"------------------------------------------
" Interne Tabellen
"------------------------------------------
DATA: lt_customers TYPE TABLE OF zda_customer_d,
      lt_products  TYPE TABLE OF zda_product_d,
      lt_dates     TYPE TABLE OF zda_date_d,
      lt_sales     TYPE TABLE OF zda_sales_f.


"------------------------------------------
" 1️⃣ Kundenstammdaten (15)
"------------------------------------------
lt_customers = VALUE #(
  ( mandt = sy-mandt customer_id = 'CUST01' customer_name = 'Müller GmbH' country = 'DE' region = 'Bavaria' )
  ( mandt = sy-mandt customer_id = 'CUST02' customer_name = 'Meier AG'    country = 'DE' region = 'Hamburg' )
  ( mandt = sy-mandt customer_id = 'CUST03' customer_name = 'Schmidt KG'  country = 'DE' region = 'Berlin' )
  ( mandt = sy-mandt customer_id = 'CUST04' customer_name = 'IT Solutions' country = 'DE' region = 'Hessen' )
  ( mandt = sy-mandt customer_id = 'CUST05' customer_name = 'TechLab GmbH' country = 'DE' region = 'Baden' )
  ( mandt = sy-mandt customer_id = 'CUST06' customer_name = 'Alpha AG'     country = 'DE' region = 'Saxony' )
  ( mandt = sy-mandt customer_id = 'CUST07' customer_name = 'Beta GmbH'    country = 'DE' region = 'Bavaria' )
  ( mandt = sy-mandt customer_id = 'CUST08' customer_name = 'Gamma KG'    country = 'DE' region = 'Hamburg' )
  ( mandt = sy-mandt customer_id = 'CUST09' customer_name = 'Delta GmbH'   country = 'DE' region = 'Berlin' )
  ( mandt = sy-mandt customer_id = 'CUST10' customer_name = 'Epsilon AG'  country = 'DE' region = 'Hessen' )
  ( mandt = sy-mandt customer_id = 'CUST11' customer_name = 'Zeta GmbH'    country = 'DE' region = 'Bavaria' )
  ( mandt = sy-mandt customer_id = 'CUST12' customer_name = 'Eta KG'      country = 'DE' region = 'Hamburg' )
  ( mandt = sy-mandt customer_id = 'CUST13' customer_name = 'Theta GmbH'  country = 'DE' region = 'Berlin' )
  ( mandt = sy-mandt customer_id = 'CUST14' customer_name = 'Iota AG'     country = 'DE' region = 'Hessen' )
  ( mandt = sy-mandt customer_id = 'CUST15' customer_name = 'Kappa GmbH'  country = 'DE' region = 'Baden' )
).

INSERT zda_customer_d FROM TABLE lt_customers.
WRITE: / 'Demo-Kunden eingefügt:', LINES( lt_customers ).

"------------------------------------------
" 2️⃣ Produkte (5)
"------------------------------------------
lt_products = VALUE #(
  ( mandt = sy-mandt product_id = 'PROD01' product_name = 'Laptop'    category = 'IT' price_group = 'A' )
  ( mandt = sy-mandt product_id = 'PROD02' product_name = 'Monitor'   category = 'IT' price_group = 'B' )
  ( mandt = sy-mandt product_id = 'PROD03' product_name = 'Keyboard'  category = 'IT' price_group = 'A' )
  ( mandt = sy-mandt product_id = 'PROD04' product_name = 'Mouse'     category = 'IT' price_group = 'C' )
  ( mandt = sy-mandt product_id = 'PROD05' product_name = 'Printer'   category = 'IT' price_group = 'B' )
).

INSERT zda_product_d FROM TABLE lt_products.
WRITE: / 'Demo-Produkte eingefügt:', LINES( lt_products ).

"------------------------------------------
" 3️⃣ Datumstabelle (20 Tage)
"------------------------------------------
lt_dates = VALUE #(
  ( mandt = sy-mandt cal_date = '20260101' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260102' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260103' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260104' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260105' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '01' )
  ( mandt = sy-mandt cal_date = '20260106' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260107' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260108' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260109' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260110' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '02' )
  ( mandt = sy-mandt cal_date = '20260111' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '03' )
  ( mandt = sy-mandt cal_date = '20260112' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '03' )
  ( mandt = sy-mandt cal_date = '20260113' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '03' )
  ( mandt = sy-mandt cal_date = '20260114' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '03' )
  ( mandt = sy-mandt cal_date = '20260115' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '03' )
  ( mandt = sy-mandt cal_date = '20260116' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
  ( mandt = sy-mandt cal_date = '20260117' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
  ( mandt = sy-mandt cal_date = '20260118' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
  ( mandt = sy-mandt cal_date = '20260119' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
  ( mandt = sy-mandt cal_date = '20260120' cal_year = '2026' cal_month = '01' cal_quarter = '1' cal_week = '04' )
).

INSERT zda_date_d FROM TABLE lt_dates.
WRITE: / 'Demo-Daten für Datum eingefügt:', LINES( lt_dates ).

"------------------------------------------
" 4️⃣ Sales-Tabelle (20 Einträge zufällig)
"------------------------------------------
lt_sales = VALUE #(
  ( mandt = sy-mandt sale_id = 'SALES01' cal_date = '20260101' customer_id = 'CUST01' product_id = 'PROD01' quantity = 10 amount = 1000 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES02' cal_date = '20260102' customer_id = 'CUST02' product_id = 'PROD02' quantity = 5  amount = 500  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES03' cal_date = '20260103' customer_id = 'CUST03' product_id = 'PROD03' quantity = 7  amount = 700  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES04' cal_date = '20260104' customer_id = 'CUST04' product_id = 'PROD04' quantity = 8  amount = 800  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES05' cal_date = '20260105' customer_id = 'CUST05' product_id = 'PROD05' quantity = 6  amount = 600  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES06' cal_date = '20260106' customer_id = 'CUST06' product_id = 'PROD01' quantity = 12 amount = 1200 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES07' cal_date = '20260107' customer_id = 'CUST07' product_id = 'PROD02' quantity = 3  amount = 300  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES08' cal_date = '20260108' customer_id = 'CUST08' product_id = 'PROD03' quantity = 9  amount = 900  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES09' cal_date = '20260109' customer_id = 'CUST09' product_id = 'PROD04' quantity = 4  amount = 400  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES10' cal_date = '20260110' customer_id = 'CUST10' product_id = 'PROD05' quantity = 11 amount = 1100 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES11' cal_date = '20260111' customer_id = 'CUST11' product_id = 'PROD01' quantity = 2  amount = 200  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES12' cal_date = '20260112' customer_id = 'CUST12' product_id = 'PROD02' quantity = 14 amount = 1400 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES13' cal_date = '20260113' customer_id = 'CUST13' product_id = 'PROD03' quantity = 1  amount = 100  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES14' cal_date = '20260114' customer_id = 'CUST14' product_id = 'PROD04' quantity = 13 amount = 1300 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES15' cal_date = '20260115' customer_id = 'CUST15' product_id = 'PROD05' quantity = 15 amount = 1500 currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES16' cal_date = '20260116' customer_id = 'CUST01' product_id = 'PROD01' quantity = 5  amount = 500  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES17' cal_date = '20260117' customer_id = 'CUST02' product_id = 'PROD02' quantity = 6  amount = 600  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES18' cal_date = '20260118' customer_id = 'CUST03' product_id = 'PROD03' quantity = 7  amount = 700  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES19' cal_date = '20260119' customer_id = 'CUST04' product_id = 'PROD04' quantity = 8  amount = 800  currency = 'EUR' )
  ( mandt = sy-mandt sale_id = 'SALES20' cal_date = '20260120' customer_id = 'CUST05' product_id = 'PROD05' quantity = 9  amount = 900  currency = 'EUR' )
).

INSERT zda_sales_f FROM TABLE lt_sales.
WRITE: / 'Demo-Sales eingefügt:', LINES( lt_sales ).
