select substring(productDescription,1,50) AS 'title of products'
from products;

select CONCAT(lastName,' ',firstName, ', ', jobTitle) AS 'Employee Description'
from employees;

SELECT REPLACE(productLine, 'Cars', 'Automobiles') AS productLine
FROM products;

SELECT  requiredDate, shippedDate
FROM orders
WHERE MONTH(shippedDate) < MONTH(requiredDate) OR 
      (MONTH(shippedDate) = MONTH(requiredDate) AND DAY(shippedDate) < DAY(requiredDate))
      and shippedDate IS NOT NULL
ORDER BY DATEDIFF(day(shippedDate), DAY(requiredDate)) ASC	
LIMIT 5;

SELECT * 
FROM orders
WHERE EXTRACT(YEAR FROM orderDate) = 2005 and month(orderDate) = 5
		AND ShippedDate IS NULL;



