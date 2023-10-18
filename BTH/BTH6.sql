SELECT city, COUNT(customerNumber) AS CustomerCount
FROM customers
GROUP BY city;


SELECT COUNT(orderNumber) AS OrdersInMarch2005
FROM orders
WHERE MONTH(orderDate) = 3 AND YEAR(orderDate) = 2005;
SELECT MONTH(orderDate) AS Month, YEAR(orderDate) AS Year, COUNT(orderNumber) AS MonthlyOrders
FROM orders
WHERE YEAR(orderDate) = 2005
GROUP BY YEAR(orderDate), MONTH(orderDate);

SELECT orderNumber, amount
FROM orders , payments
ORDER BY amount DESC
LIMIT 10;

SELECT productCode, SUM(quantityInStock) AS TotalQuantityInStock
FROM products
GROUP BY productCode;

SELECT customerNumber, SUM(amount) AS TotalAmountPaid
FROM payments
GROUP BY customerNumber;