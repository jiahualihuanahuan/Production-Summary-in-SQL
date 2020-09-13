# Week 37 2020 (Sep 8 - Sep 13) production summary report

SELECT 
MIN(Inbound_Order_Header.document_date) AS date, 
MIN(Inbound_Order_Receipt.sku) AS sku, 
Inbound_Order_Header.order_number AS work_order, 
MIN(Inbound_Order_Detail.description) AS description, 
SUM(Inbound_Order_Receipt.qty_received) AS cases
FROM Inbound_Order_Receipt
INNER JOIN Inbound_Order_Header ON Inbound_Order_Header.receipt_number = Inbound_Order_Receipt.receipt_number
INNER JOIN Inbound_Order_Detail ON Inbound_Order_Header.receipt_number = Inbound_Order_Detail.receipt_number
WHERE transaction_date BETWEEN '2020-09-08' AND '2020-09-13' AND Inbound_Order_Header.order_number BETWEEN '52850' AND '52874' OR Inbound_Order_Header.order_number BETWEEN '90366' AND '90375'
GROUP BY Inbound_Order_Header.order_number
ORDER BY Inbound_Order_Header.order_number;
