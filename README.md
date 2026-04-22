Sales Order Analytics Demo (CDS Views & New Open SQL)
Overview

This demo shows a simple Sales Order Analytics scenario implemented with ABAP CDS Views in Eclipse (ADT) and consumed using New Open SQL. The focus is on clean data modeling, simple aggregation, and modern ABAP techniques.

The solution is based on a small data model with customer, product, date, and sales fact data, combined into one analytical CDS view.

Data Model

The demo consists of basic and analytical layers:

Z_I_CUSTOMER → Customer master data
Z_I_PRODUCT → Product master data
Z_I_DATE → Date dimension
ZDA_SALES_F → Sales order fact table

The analytical logic is implemented in:
