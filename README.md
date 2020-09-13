# Production-Summary-in-SQL

The goal is to generate weekly production summary report for weekly meeting and accounting matter. It needs to have informations as follows.
1. Date
2. SKU
3. Work Order
4. Product Description
5. Quantity Received/Production Quantity

This query is used to gather weekly production summary information from 3 different tables in the database.
The first table is called Inbound_Order_Receipt. It has sku and qty_received columns
The second table is called Inbound_Order_Header. It has document_date and order_number columns.
The third table is called Inbound_Order_Detail. It has sku and description columns.

In order to combine information from 3 tables into 1 query. 2 JOIN statements will be used. receipt_number is the common foreign key for all 3 tables. Aggregate function (MIN, MAX, SUM etc.) is used with GROUP BY function. ORDER BY function is used to sort work order as ascending order. WHERE statement is used to narrow down the only time period and work order to be shown. 
