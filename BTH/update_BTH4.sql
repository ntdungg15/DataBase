SELECT *
FROM customers
WHERE city IN ('Nantes', 'Lyon');

SELECT *
FROM orders
WHERE ShippedDate BETWEEN '2003/01/10' AND '2003/03/10';

SELECT *
FROM products
WHERE productLine LIKE '%CARS%';

SELECT *
FROM products
ORDER BY quantityInStock DESC
LIMIT 10;

SELECT p.*, (p.buyPrice * i.quantityInStock) AS TotalInventoryValue
FROM products p
JOIN inventory i ON p.productCode = i.productCode;
