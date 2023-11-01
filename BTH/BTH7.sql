SELECT e.employeeNumber, e.firstName, e.lastName, o.officeCode, o.city
FROM employees AS e
JOIN offices AS o ON e.officeCode = o.officeCode;

SELECT p.productCode, p.productName
FROM products AS p
LEFT JOIN orderdetails AS od ON p.productCode = od.productCode
WHERE od.productCode IS NULL;

SELECT o.orderDate, o.requiredDate, o.status, SUM(od.quantityOrdered * od.priceEach) AS totalValue
FROM orders AS o
JOIN orderdetails AS od ON o.orderNumber = od.orderNumber
WHERE o.orderDate BETWEEN '2003-03-01' AND '2003-03-31'
GROUP BY o.orderNumber;

SELECT pl.productLine, SUM(p.quantityInStock) AS totalQuantity
FROM products AS p
JOIN productlines AS pl ON p.productLine = pl.productLine
GROUP BY pl.productLine
ORDER BY totalQuantity DESC;

SELECT c.customerName, SUM(od.quantityOrdered * od.priceEach) AS totalAmount
FROM customers AS c
JOIN orders AS o ON c.customerNumber = o.customerNumber
JOIN orderdetails AS od ON o.orderNumber = od.orderNumber
GROUP BY c.customerName;

