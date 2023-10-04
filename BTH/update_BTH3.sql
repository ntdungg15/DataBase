SELECT *
FROM employees
WHERE reportsTo IS NULL;

SELECT DISTINCT CustomerNumber
FROM orders;

SELECT *
FROM orders
WHERE DATE_FORMAT(RequiredDate, '%Y/%m/%d') = '2003/01/18';

SELECT *
FROM orders
WHERE DATE_FORMAT(OrderDate, '%Y/%m') = '2005/04'
  AND status = 'Shipped';

SELECT *
FROM products
WHERE productLine = 'Classic Cars';
