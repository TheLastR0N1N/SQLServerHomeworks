USE AdventureWorks2022

--Puzzle 1 
--Create a function that Finds total sales for a given product category
--using the tables in Production and Sales schemas

--Puzzle 1.1 (Use the above function with the following 
--SELECT statement to obtain total sales for each category)

select ProductCategoryID,Name
from AdventureWorks2022.Production.ProductCategory

SELECT * 
FROM [Production].[Product]
SELECT * 
FROM[Production].[ProductSubcategory]

CREATE FUNCTION dbo.TotalSalesByCategory(@ProductCategoryName VARCHAR(MAX))
RETURNS DECIMAL(15,2)
BEGIN
DECLARE @res DECIMAL(15,2) =
(SELECT SUM(S.OrderQty * S.UnitPrice) AS Total
FROM [Sales].[SalesOrderDetail] AS S
JOIN [Production].[Product] AS P 
ON S.ProductID = P.ProductID
JOIN [Production].[ProductSubcategory] AS PS 
ON PS.ProductSubcategoryID = P.ProductSubcategoryID
JOIN [Production].[ProductCategory] AS PC
ON PC.ProductCategoryID = PS.ProductCategoryID 
AND PC.Name = @ProductCategoryName
GROUP BY PC.Name)
RETURN @RES
END

SELECT dbo.TotalSalesByCategory ('Accessories')


















































