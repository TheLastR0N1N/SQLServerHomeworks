USE W3Resource

SELECT * FROM [Inventory].[Salesman]

SELECT 'This is SQL Exercise, Practice and Solution'

SELECT 1, 2, 3

SELECT 1 + 2

SELECT name, commission FROM [Inventory].[Salesman]

SELECT ord_date, salesman_id, ord_no, purch_amt FROM [Inventory].[Orders]

SELECT DISTINCT salesman_id FROM [Inventory].[Orders]

SELECT name, city FROM [Inventory].[Salesman]
WHERE city = 'PARIS'

SELECT * FROM [Inventory].[Customer]
WHERE grade = 200

SELECT * FROM [Inventory].[Orders]
WHERE salesman_id = 5001

SELECT * FROM [dbo].[nobel_win]
WHERE YEAR = 1970

SELECT * FROM [dbo].[nobel_win]
WHERE YEAR = 1971 AND subject = 'Literature'

SELECT * FROM [dbo].[nobel_win]
WHERE WINNER = 'Dennis Gabor'

SELECT * FROM [dbo].[nobel_win]
WHERE SUBJECT = 'Physics' AND YEAR > 1950

SELECT * FROM [dbo].[nobel_win]
WHERE SUBJECT = 'Chemistry' AND YEAR BETWEEN 1965 AND 1975

SELECT * FROM [dbo].[nobel_win]
WHERE YEAR > 1972 AND
	  WINNER IN ('Menachem Begin','Yitzhak Rabin')
     
SELECT * FROM [dbo].[nobel_win]
WHERE WINNER LIKE 'LOUIS%'

SELECT * FROM [dbo].[nobel_win]
WHERE subject = 'Physics' AND YEAR = 1970 OR
      subject = 'ECONOMICS' AND YEAR = 1971

SELECT * FROM [dbo].[nobel_win]
WHERE (SUBJECT = 'Physics ' AND YEAR = 1970)
UNION
(SELECT * FROM [dbo].[nobel_win] WHERE (SUBJECT = 'ECONOMICS' AND YEAR = 1971))

SELECT * FROM [dbo].[nobel_win]
WHERE YEAR = 1970 AND (CASE WHEN SUBJECT = 'Physiology'THEN 2 
                            WHEN SUBJECT = 'ECONOMICS' THEN 1
                            ELSE 0 END) = 0

SELECT * FROM [dbo].[nobel_win]
WHERE YEAR = 1970 AND
      SUBJECT NOT IN ('Physiology','Economics')

SELECT * FROM [dbo].[nobel_win]
WHERE YEAR < 1971 AND subject = 'Physiology' OR
      YEAR > 1974 AND subject = 'Peace'
	  
SELECT * FROM [dbo].[nobel_win]
WHERE WINNER = 'Johannes Georg Bednorz'

SELECT * FROM [dbo].[nobel_win]
WHERE WINNER NOT LIKE 'P%'
ORDER BY YEAR DESC, winner


SELECT * FROM [dbo].[nobel_win]
WHERE YEAR = 1970 
ORDER BY CASE WHEN SUBJECT IN ('ECONOMICS','CHEMISTRY') THEN 1
ELSE 0 END ASC

SELECT * FROM [dbo].[item_mast]
WHERE pro_price BETWEEN 200 AND 600

SELECT AVG(PRO_PRICE) FROM [dbo].[item_mast]
WHERE pro_com = 16

SELECT pro_name AS 'Item Name', PRO_PRICE AS 'Price in Rs' FROM [dbo].[item_mast]  

SELECT pro_name, pro_price FROM [dbo].[item_mast]
WHERE pro_price >= 250

SELECT AVG(pro_price), pro_com
FROM [dbo].[item_mast]
GROUP BY pro_com

SELECT pro_name, pro_price FROM [dbo].[item_mast]
WHERE pro_price = (SELECT MIN(pro_price) FROM item_mast)

SELECT DISTINCT emp_lname FROM [dbo].[emp_details]

SELECT * FROM [dbo].[emp_details]
WHERE emp_lname = 'Snares'

SELECT * FROM [dbo].[emp_details]
WHERE EMP_DEPT = 57