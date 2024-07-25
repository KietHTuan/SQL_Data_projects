--Create Sales temp table 
CREATE TABLE #Sales
(SalesOrderID int, 
OrderDate Date,
OrderCount int, 
OrderCountGrowth int,
SubTotal int, 
SalesmovingAverage int, 
Freight int, 
CustomerID int
)

--Insert existing values to #Sales temp table 
INSERT INTO #Sales
(	SalesOrderID,
	OrderDate, 
	SubTotal, 
	Freight, 
	CustomerID
	)
SELECT 
	SalesOrderID, 
	OrderDate, 
	SubTotal, 
	Freight, 
	CustomerID

FROM
	[Sales].[SalesOrderHeader]

SELECT* FROM #Sales

--Populate OrderQty column in #Sales temp table
UPDATE #Sales
SET OrderCount =  X.CountOrder
FROM (		
		SELECT
			SalesOrderID, 
			COUNT(DISTINCT SalesOrderDetailID ) AS CountOrder
		FROM 
			[Sales].[SalesOrderDetail] 
		GROUP BY
			SalesOrderID
		) X
WHERE #Sales.SalesOrderID = X.SalesOrderID

--Populate OrderCountGrowth accumulate column 
UPDATE #Sales
SET OrderCountGrowth = X.AccumulateORder
FROM
	(
	SELECT 
		SalesOrderID, 
		COUNT(DISTINCT SalesOrderDetailID ) AS CountOrder,
		Sum(COUNT(DISTINCT SalesOrderDetailID )) OVER (ORDER BY SalesOrderID) As AccumulateORder
	FROM 
		[Sales].[SalesOrderDetail]
	GROUP BY SalesOrderID) X
WHERE #Sales.SalesOrderID = X.SalesOrderID

--Populate SalesMovingAverage Column 
UPDATE #Sales
SET SalesmovingAverage = X.SalesMovingAverage
FROM
	(SELECT 
		SalesOrderID, 
		OrderDate, 
		SubTotal,
		AVG(SubTotal) OVER (ORDER BY OrderDate ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS SalesMovingAverage
	FROM 
		[Sales].[SalesOrderHeader]) X
WHERE #Sales.SalesOrderID = X.SalesOrderID
SELECT* FROM #Sales




-------------------------------------------------------------------------------------------------------------------------------------
--Create Category_Subcategory temp table 
CREATE TABLE #Category_Subcategory
(
	SalesOrderID int, 
	OrderDate Date, 
	ProductName nvarchar(50),
	ProductSubcategory nvarchar(50), 
	ProductCategory nvarchar(50), 
	LineTotal int
	)


--Insert existing data to #Category_Subcategory temp table 
INSERT INTO #Category_Subcategory
(	SalesOrderID,
	ProductName, 
	ProductSubcategory, 
	ProductCategory,
	LineTotal
	)
	SELECT 
		SalesOrderID,
		B.Name AS ProductName,
		C.Name AS ProductSubcategory, 
		D.Name AS ProductCategory, 
		LineTotal

	FROM [Sales].[SalesOrderDetail] A INNER JOIN Production.Product B ON 
		A.ProductID = B.ProductID INNER JOIN Production.ProductSubcategory C ON 
		B.ProductSubcategoryID = C.ProductSubcategoryID INNER JOIN Production.ProductCategory D ON 
		C.ProductCategoryID = D.ProductCategoryID

SELECT* FROM #Category_Subcategory
ORDER BY 1

--Populate OrderDate column 
UPDATE #Category_Subcategory
SET OrderDate =  X.OrderDate
FROM (
	SELECT 
		SalesOrderID,
		OrderDate
	FROM 
		[Sales].[SalesOrderHeader]) X
WHERE #Category_Subcategory.SalesOrderID = X.SalesOrderID



SELECT* FROM #Category_Subcategory
ORDER BY 1

----------------------------------------------------------------------------------------------------------------------------
--Create Sales_location temp table 
CREATE TABLE #Sales_Location 
(	SalesOrderID int, 
	OrderDate Date, 
	SubTotal int, 
	RegionName nvarchar(50), 
	CountryRegionCode nvarchar(10), 
	CountryGroup Nvarchar(50)
	);

	
--Populate existing data to #Sales_location temp table 
INSERT INTO #Sales_Location
(	SalesOrderID, 
	OrderDate, 
	SubTotal, 
	RegionName, 
	CountryRegionCode, 
	CountryGroup
	)

SELECT 
	A.SalesOrderID, 
	A.OrderDate, 
	A.SubTotal, 
	B.Name, 
	B.CountryRegionCode, 
	B.[Group]
FROM 
	[Sales].[SalesOrderHeader] A INNER JOIN [Sales].[SalesTerritory] B ON 
		A.TerritoryID = B.TerritoryID

SELECT*FROM #Sales_Location

---------------------------------------------------------------------------------------------------------------------------------------
--Drop all temp tables after the session 
DROP TABLE #Sales
DROP TABLE #Category_Subcategory
DROP TABLE #Sales_Location
;