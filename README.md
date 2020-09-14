# Production-Summary-in-SQL

The goal is to generate weekly production summary report for weekly meeting and accounting matter. It needs to have informations as follows.
1. Date of Production (Start Date)
2. SKU Number (Stock Keeping Unit)
3. Work Order Number
4. Product Description 
5. Quantity Received (cases)/Production Quantity (cases)

This query is used to gather weekly production summary information from 3 different tables in the database.

The first table is Inbound_Order_Receipt. It has receipt_number, sku and qty_received columns

The second table is Inbound_Order_Header. It has receipt_number, document_date and order_number columns.

The third table is Inbound_Order_Detail. It has receipt_number, sku and description columns.

In order to combine information from 3 tables into 1 query. 2 JOIN statements will be used. receipt_number is the common foreign key for all 3 tables. Aggregate function (MIN, MAX, SUM etc.) is used with GROUP BY function. ORDER BY function is used to sort work order as ascending order. WHERE statement is used to narrow down the only time period and work order to be shown. 
