# Production-Summary-in-SQL

## Goal
The goal is to generate weekly production summary report for weekly management meeting and accounting statement. It needs to have informations as follows.
1. Date of Production (Start Date)
2. SKU Number (Stock Keeping Unit)
3. Work Order Number
4. Product Description 
5. Quantity Received (cases)/Production Quantity (cases)
This query is used to gather weekly production summary information from 3 different tables in the database.


## database and tables description
The 1st table is Inbound_Order_Receipt. It records all pallets recieving information including receipt_number, sku and qty_received columns. 

The 2nd table is Inbound_Order_Header. It records all work order information (order_number) including receipt_number, document_date and order_number columns.

The 3rd table is Inbound_Order_Detail. It records all product information including receipt_number, sku and description columns.

# SQL writing detail
## joining multiple tables in SQL
In order to combine information from 3 tables into 1 query, 2 INNER JOIN statements will be used. This is a joining 3 or more tables problem. As receipt_number is the common column for all 3 tables, it is used as a foreign key to join 3 tables.

## GROUP BY statement and aggregate functions
GROUP BY statement is used with aggregate functions(MIN, MAX, SUM etc.) to group the result set by columns.

There is another problem raised when combining 3 tables with aggregate function. 
ERROR: Column 'xxx' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
This is usually because when you have multiple columns from multiple tables, the aggregate function works on column X and column Y may have different value for the same value in column X. SQL in this case cannot determine the value for column Y to be displayed. 
A good example can be seen here.
https://stackoverflow.com/questions/13999817/reason-for-column-is-invalid-in-the-select-list-because-it-is-not-contained-in-e
I solved this problem by applying aggregate function on all columns have the above problem.

## ORDER BY function
ORDER BY function is used to sort work order as ascending order. 

## WHERE statement
WHERE statement is used to narrow down the only time period and work order to be shown. 

## AS command / aliase command
AS command is used to give a table, or a column in a table, a temporary name which makes the query more readable.
