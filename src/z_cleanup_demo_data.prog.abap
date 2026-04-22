*&---------------------------------------------------------------------*
*& Report z_cleanup_demo_data
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_cleanup_demo_data.

"----------------------------
" 1. Löschen von Sales-Daten für bestimmte Kunden
"----------------------------
DELETE FROM zda_sales_f.


WRITE: / 'Sales-Daten für CUST01 und CUST02 gelöscht.'.

"----------------------------
" 2. Löschen von Kunden
"----------------------------
DELETE FROM zda_customer_d.


WRITE: / 'Kunden CUST01 und CUST02 gelöscht.'.

"----------------------------
" 3. Optional: Löschen von Produkten (falls nur bestimmte)
"----------------------------
DELETE FROM zda_product_d.
"  WHERE product_id IN ( 'PROD01', 'PROD02' ).


WRITE: / 'Produkte PROD01 und PROD02 gelöscht.'.

DELETE FROM zda_date_d.
