USE W3Resource

SELECT SUM(purch_amt) FROM [Inventory].[Orders]

SELECT AVG(purch_amt) FROM [Inventory].[Orders]

SELECT  COUNT(DISTINCT salesman_id) FROM [Inventory].[Orders]

SELECT  COUNT(cust_name) FROM [Inventory].[Customer]

SELECT  COUNT(cust_name) FROM [Inventory].[Customer]
WHERE GRADE IS NOT NULL

SELECT COUNT(ALL GRADE) FROM [Inventory].[Customer]

SELECT MAX(purch_amt) FROM [Inventory].[Orders]

SELECT MIN(purch_amt) FROM [Inventory].[Orders]

SELECT CITY, MAX(grade) FROM [Inventory].[CUSTOMER]
GROUP BY city

SELECT customer_id, MAX(purch_amt) FROM [Inventory].[Orders]
GROUP BY customer_id

SELECT customer_id,ORD_DATE, MAX(purch_amt) FROM [Inventory].[Orders]
GROUP BY customer_id, ord_date

SELECT salesman_id, MAX(purch_amt) FROM [Inventory].[Orders]
WHERE ORD_DATE = '2012-08-17'
GROUP BY salesman_id

SELECT customer_id, ord_date, MAX(purch_amt) FROM [Inventory].[Orders]
WHERE purch_amt > 2000
GROUP BY customer_id, ord_date

SELECT customer_id, ord_date, MAX(purch_amt) FROM [Inventory].[Orders]
GROUP BY customer_id, ord_date 
HAVING MAX(purch_amt) > 2000

SELECT customer_id, ord_date, MAX(purch_amt) FROM [Inventory].[Orders]
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) BETWEEN 2000 AND 6000


SELECT customer_id, ord_date, MAX(purch_amt) FROM [Inventory].[Orders]
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) = 2000 OR 
       MAX(purch_amt) = 3000 OR 
	   MAX(purch_amt) = 5760 OR 
	   MAX(purch_amt) = 6000

SELECT customer_id, ord_date, MAX(purch_amt) FROM [Inventory].[Orders]
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) IN (2000, 3000, 5760, 6000)

SELECT customer_id, MAX(purch_amt) FROM [Inventory].[Orders]
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id

SELECT customer_id, MAX(purch_amt) FROM [Inventory].[Orders]
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id
HAVING MAX(purch_amt) > 1000

SELECT salesman_id, MAX(purch_amt) FROM [Inventory].[Orders]
WHERE salesman_id BETWEEN 5003 AND 5008
GROUP BY salesman_id

SELECT COUNT(ord_date) FROM [Inventory].[Orders]
WHERE  ord_date = '2012-08-17'

SELECT COUNT(*) FROM [Inventory].[Salesman]
WHERE city IS NOT NULL

SELECT COUNT(ord_date), salesman_id FROM [Inventory].[Orders]
GROUP BY ord_date, salesman_id

SELECT AVG(pro_price) AS 'Average Price' FROM [dbo].[item_mast]

SELECT COUNT(*) FROM [dbo].[item_mast]
WHERE pro_price >= 350

SELECT pro_com, AVG(pro_price) FROM [dbo].[item_mast]
GROUP BY pro_com

SELECT emp_dept, COUNT(emp_idno) FROM[dbo].[emp_details]
GROUP BY emp_dept



