--Puzzle 3:
--Create a table valued function that returns top selling product name and 
--price of that product for a given product category using 
--Production and Sales schemas.
--Use the obtained function in the following select statement 

select ProductCategoryID,Name
from AdventureWorks2022.Production.ProductCategory

CREATE FUNCTION dbo.TopSellingProduct(@ProductCategoryName VARCHAR(MAX))
RETURNS TABLE
AS
RETURN
(
    SELECT TOP(1) 
        P.Name AS ProductName, 
        P.ListPrice AS ProductPrice
    FROM [Sales].[SalesOrderDetail] AS S
    JOIN [Production].[Product] AS P ON S.ProductID = P.ProductID
    JOIN [Production].[ProductSubcategory] AS PS ON P.ProductSubcategoryID = PS.ProductSubcategoryID
    JOIN [Production].[ProductCategory] AS PC ON PS.ProductCategoryID = PC.ProductCategoryID
    WHERE PC.Name = @ProductCategoryName 
    GROUP BY P.Name, P.ListPrice
    ORDER BY SUM(S.OrderQty * S.UnitPrice) DESC 
);
 
 SELECT *
 FROM dbo.TopSellingProduct('BIKES')


