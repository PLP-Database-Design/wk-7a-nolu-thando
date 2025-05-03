/*question 1*/

USE ProductDetail

SELECT OrderID, CustomerName,
TRIM (SUBSTRING_INDEX(SUBSTRING_INDEX(Products, ',', numbers.n), ',',-1)) AS Products

FROM ProductDetail
(SELECT 1 AS n UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) AS numbers

WHERE 
n <= 1 + LENGTH (Products) - LENGTH(REPLACE (Products, ',', ''));