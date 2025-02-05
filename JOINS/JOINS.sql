

use W3Resource

SELECT  [Inventory].[Salesman].name AS Salesman
      , [Inventory].[Customer].cust_name
	  , [Inventory].[Customer].city
FROM [Inventory].[Salesman], [Inventory].[Customer]
WHERE [Inventory].[Salesman].city = [Inventory].[Customer].city

SELECT  O.ord_no
      , O.purch_amt
	  , C.city
FROM [Inventory].[Orders] AS O
JOIN [Inventory].[Customer] AS C ON C.customer_id = O.customer_id
WHERE O.purch_amt BETWEEN 500 AND 2000

SELECT C.cust_name, S.Name, S.city, S.commission
FROM [Inventory].[Salesman] AS S
JOIN [Inventory].[Customer] AS C ON S.salesman_id = C.salesman_id

SELECT C.cust_name, C.city, S.name AS salesman_name, S.commission
FROM [Inventory].[Customer] AS C
JOIN [Inventory].[Salesman] AS S ON C.salesman_id = S.salesman_id
WHERE S.commission > 0.12

SELECT C.cust_name, C.city, S.name AS salesman_name, S.commission
FROM [Inventory].[Customer] AS C
JOIN [Inventory].[Salesman] AS S ON C.salesman_id = S.salesman_id
WHERE S.commission > 0.12 AND C.city <> S.city

SELECT  O.ord_no
	   ,O.ord_date
	   ,O.purch_amt
	   ,C.cust_name
	   ,C.grade
	   ,S.name AS salesman_name
	   ,S.commission
FROM [Inventory].[Orders] AS O
JOIN [Inventory].[Customer] AS C ON C.customer_id = O.customer_id
JOIN [Inventory].[Salesman] AS S ON S.salesman_id = O.salesman_id

SELECT  O.ord_no
       ,O.purch_amt
	   ,O.ord_date
	   ,C.cust_name
	   ,C.city
	   ,C.grade
	   ,S.commission
	   ,S.name AS salesman_name
FROM [Inventory].[Orders] AS O
JOIN [Inventory].[Customer] AS C ON C.customer_id = O.customer_id
JOIN [Inventory].[Salesman] AS S ON S.salesman_id = O.salesman_id

SELECT  C.cust_name
       ,C.city AS cust_city
	   ,C.grade
	   ,S.name AS salesman_name
	   ,S.city AS salesman_citY
FROM [Inventory].[Customer] AS C
JOIN [Inventory].[Salesman] AS S ON S.salesman_id = C.salesman_id
WHERE C.grade < 300
ORDER BY C.customer_id ASC

SELECT  C.cust_name
       ,C.city
	   ,O.ord_no
	   ,O.ord_date
	   ,O.purch_amt
FROM [Inventory].[Customer] AS C
JOIN [Inventory].[Orders] AS O ON O.customer_id = C.customer_id
ORDER BY O.ord_date ASC

SELECT  C.cust_name
       ,C.city AS cust_city
	   ,O.ord_no
	   ,O.ord_date
	   ,O.purch_amt
	   ,S.name AS salesman_name
	   ,S.commission
FROM [Inventory].[Customer] AS C
LEFT JOIN [Inventory].[Orders] AS O ON O.customer_id = C.customer_id
LEFT JOIN [Inventory].[Salesman] AS S ON S.salesman_id = C.salesman_id

SELECT  C.cust_name
       ,C.city
	   ,C.grade
       ,S.name AS salesman_name
       ,S.city
FROM [Inventory].[Customer] AS C
RIGHT JOIN [Inventory].[Salesman] AS S ON S.salesman_id = C.salesman_id
ORDER BY S.salesman_id














