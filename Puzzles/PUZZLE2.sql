--Puzzle 2:
--Create a scalar function that returns top selling product name for a given
--product category using Production and Sales schemas.
--Use the obtained function in the following select statement 

select ProductCategoryID,Name
from AdventureWorks2022.Production.ProductCategory
SELECT * FROM [Sales].[SalesOrderDetail]

ALTER FUNCTION dbo.BestSellingProductCategory(@ProductCategoryName VARCHAR(MAX))
RETURNS VARCHAR(MAX)
BEGIN
DECLARE @res VARCHAR(MAX) =
(SELECT TOP(1) PC.Name 
FROM [Sales].[SalesOrderDetail] AS S
JOIN [Production].[Product] AS P
ON S.ProductID = P.ProductID
JOIN [Production].[ProductSubcategory] AS PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
JOIN [Production].[ProductCategory] AS PC
ON PS.ProductCategoryID = PC.ProductCategoryID
AND PC.Name = @ProductCategoryName
GROUP BY PC.Name
ORDER BY SUM(S.OrderQty * S.UnitPrice) DESC)
RETURN @res
END

SELECT  dbo.BestSellingProductCategory ('BIKES')





