/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [NorthWind].[dbo].[Customers]

  --VIEWS 


  CREATE VIEW CustomView
  AS
  SELECT * FROM [NorthWind].[dbo].[Customers]
  WHERE Country LIKE 'USA'

  SELECT * FROM CustomView

  --JOIN TWO TABLES WITH VIEWS

  CREATE VIEW JoinView
  AS
  SELECT [ShipAddress], [ShipName],[ShipCountry], [UnitPrice], [Discount] 
  FROM [NorthWind].[dbo].[Orders] A INNER JOIN [dbo].[Order Details] B
  ON A.OrderID = B.OrderID
  WHERE [ShipCountry] LIKE 'USA'

  SELECT * FROM JoinView

  --------TRIGGER THE TABLE-----------

  SELECT * FROM [dbo].[Suppliers]

  CREATE TRIGGER BasicTrigger
  ON [dbo].[Suppliers]
  AFTER INSERT 
  AS
  BEGIN
  PRINT 'Insert is not allowed. You need approval'
  ROLLBACK TRANSACTION
  END
  GO

    ------------TEST THE TRIGGER------

   SELECT * FROM [dbo].[Suppliers]

  INSERT INTO [dbo].[Suppliers]
  ([CompanyName],
	[City],
	[PostalCode],
	[Phone]
) VALUES
(
	'Saibersys',
	'Texas',
	'75006',
	'2247070905'	
)

  -----------DATABASE level trigger---------

  CREATE TRIGGER db_trigger
  ON DATABASE
  AFTER CREATE_TABLE
  AS
  BEGIN
  PRINT 'Creation of new tables is not allowed.'
  ROLLBACK TRANSACTION
  END
  GO

  ------TEST THE TRIGGER----

  CREATE TABLE Table_1 (col1 VARCHAR(50));


  --------------STORED PROCEDURES--------

  CREATE PROCEDURE Mytestproc
  AS
  SET NOCOUNT ON
  SELECT * FROM [dbo].[Suppliers]

  EXEC Mytestproc

   CREATE PROCEDURE Mytestproc1
  AS
  SET NOCOUNT OFF -- to display no. of rows affected
  SELECT * FROM [dbo].[Suppliers]
  
  EXEC Mytestproc1

  --------PARAMETERIZED STORED PROCEDURES------

  CREATE PROCEDURE Paraproc2
  @Param_CompanyName VARCHAR(100)
  AS 
  SET NOCOUNT ON
  SELECT * FROM [dbo].[Suppliers]
  WHERE CompanyName = @Param_CompanyName

  EXEC Paraproc2 @param_CompanyName = 'Tokyo Traders'

  ------- OUTPUT PARAMETERS------

  CREATE PROC MyoutputSP
  @TopShift VARCHAR(50) OUTPUT
  AS
  SET @TopShift = ( SELECT TOP(1) CustomerID FROM [dbo].[Orders])
  ------to execute output parameters----
  DECLARE @outputresult VARCHAR(50)
  EXEC MyoutputSP @outputresult output
  SELECT @outputresult

  ------------Returning values from stored procedures-------------
  CREATE PROC MyFirstReturnSP
  AS
  RETURN 10

  DECLARE @returnvalue INT
  EXEC @returnvalue = MyFirstReturnSP
  SELECT @returnvalue

  -------------USERDEFINED FUNCTIONS----------
  ---scalar function---------

  SELECT * FROM [dbo].[Products]

  CREATE FUNCTION PRICEUNIT()
  RETURNS MONEY
  AS 
  BEGIN
  DECLARE @PRICEUNIT MONEY
  SELECT @PRICEUNIT= SUM (UnitPrice) FROM [dbo].[Products]
  RETURN @PRICEUNIT
  END

  DECLARE @PriceOutput MONEY
  SELECT @PriceOutput = dbo.PRICEUNIT()
  PRINT @PriceOutput

  DROP FUNCTION PRICEUNIT
  --------parameterized scalar function------

  CREATE FUNCTION PRICE_UNIT
  (@SupplierID VARCHAR(50))
  RETURNS MONEY
  AS
  BEGIN 
  DECLARE @PRICEUNIT MONEY
  SELECT @PRICEUNIT = SUM (UnitPrice) FROM [dbo].[Products]
  WHERE SupplierID = @SupplierID
  RETURN @PRICEUNIT
  END

  DECLARE @PriceOut MONEY
  SELECT @PriceOut= dbo.PRICE_UNIT('4')
  PRINT @PriceOut

---------functions returning tables--------

SELECT * FROM [dbo].[Products]

CREATE FUNCTION St_Table
(@ProductID INT)
RETURNS TABLE
AS
RETURN
SELECT ProductName, QuantityPerUnit, UnitPrice 
FROM [dbo].[Products]
WHERE ProductID = @ProductID

DROP FUNCTION St_Table

SELECT * FROM dbo.St_Table(2)

---------TRANSACTION-----------

BEGIN TRANSACTION 
	UPDATE dbo.Products
	SET UnitsInStock = 3
	WHERE ProductID = 1
COMMIT TRANSACTION

-------------to display error while doing tranactions----

DECLARE @ERRORRESULTS VARCHAR(50)
BEGIN TRANSACTION 
INSERT INTO [dbo].[Products]
           ([ProductID]
		   ,[ProductName]
           ,[SupplierID]
           ,[CategoryID]
           ,[QuantityPerUnit]
           ,[UnitPrice]
           ,[UnitsInStock]
           ,[UnitsOnOrder]
           ,[ReorderLevel]
           ,[Discontinued])
     VALUES
           (93
		   ,'coffee'
           ,3
           ,2
           ,20
           ,3.45
           ,4
           ,0
           ,35
           ,1)
SET @ERRORRESULTS = @@ERROR

IF (@ERRORRESULTS = 0)
BEGIN
    PRINT' SUCCESS!!'
	COMMIT TRANSACTION
END
ELSE
BEGIN
	PRINT 'STATEMENT FAILED!!'
	ROLLBACK TRANSACTION
END

-----delete rows from the table--

SELECT * FROM [dbo].[Products]
delete from dbo.Products
where ProductID between 81 and 92

-------custome error message-------------

DECLARE @ERRORRESULT VARCHAR(50)
BEGIN TRANSACTION 
INSERT INTO [dbo].[Orders]
           ([CustomerID]
           ,[EmployeeID]
           ,[OrderDate]
           ,[RequiredDate]
           ,[ShippedDate]
           ,[ShipVia]
           ,[Freight]
           ,[ShipName]
           ,[ShipAddress]
           ,[ShipCity]
           ,[ShipRegion]
           ,[ShipPostalCode]
           ,[ShipCountry])
     VALUES
           (11082
           ,143
           ,GETDATE()
           ,NULL
           ,GETDATE()
           ,5
           ,20.5
           ,'QUEEN'
           ,'TEXAS'
           ,'CARROLLTON'
           ,'NA'
           ,75006
           ,'USA')
SET @ERRORRESULT = @@ERROR

IF (@ERRORRESULT = 0)
BEGIN
    PRINT' SUCCESS!!'
	COMMIT TRANSACTION
END
ELSE
BEGIN
	RAISERROR('STATEMENT FAILED-THIS IS CUSTOM MESSAGE', 15, 1)
	ROLLBACK TRANSACTION
END

---------TRY CATCH METHOD--------
SELECT * FROM [dbo].[Orders]
BEGIN TRY 
BEGIN TRANSACTION
DECLARE @ERRORRESULTVALUE VARCHAR(50)
BEGIN TRANSACTION 
INSERT INTO [dbo].[Orders]
           ([CustomerID]
           ,[EmployeeID]
           ,[OrderDate]
           ,[RequiredDate]
           ,[ShippedDate]
           ,[ShipVia]
           ,[Freight]
           ,[ShipName]
           ,[ShipAddress]
           ,[ShipCity]
           ,[ShipRegion]
           ,[ShipPostalCode]
           ,[ShipCountry])
     VALUES
           (11082
           ,143
           ,GETDATE()
           ,NULL
           ,GETDATE()
           ,5
           ,20.5
           ,'QUEEN'
           ,'TEXAS'
           ,'CARROLLTON'
           ,'NA'
           ,75006
           ,'USA')
		   COMMIT TRANSACTION
END TRY
BEGIN CATCH
	PRINT 'CATCH STATEMENT FAILED'
	ROLLBACK TRANSACTION
END CATCH


---- COMMON TABLE EXPRESSION-----
WITH CTE_UNITPRICE
AS
(
	SELECT ProductName, SupplierId, UnitPrice FROM dbo.Products
)
SELECT * FROM CTE_UNITPRICE
WHERE ProductName LIKE 'Cha%'

----group by sets--------

select * from dbo.Products

------group by---------
SELECT SupplierID, SUM (UnitPrice)
FROM [dbo].[Products]
GROUP BY SupplierID

SELECT SupplierID, CategoryID, SUM (UnitPrice)
FROM [dbo].[Products]
GROUP BY SupplierID,CategoryID

SELECT SupplierID, CategoryID, Discontinued, SUM (UnitPrice)
FROM [dbo].[Products]
GROUP BY SupplierID,CategoryID, Discontinued

-------grouping sets--------
SELECT SupplierID, CategoryID, Discontinued, SUM (UnitPrice)
FROM [dbo].[Products]
GROUP BY GROUPING SETS 
(
	(SupplierID),
	(SupplierID,CategoryID),
	(SupplierID, CategoryID,Discontinued)
)

-----roll up --------
SELECT SupplierID, CategoryID, Discontinued, SUM (UnitPrice)
FROM [dbo].[Products]
GROUP BY ROLLUP 
(
	(SupplierID, CategoryID, Discontinued)
)

------cube----------------
SELECT SupplierID, CategoryID, Discontinued, SUM (UnitPrice)
FROM [dbo].[Products]
GROUP BY CUBE 
(
	(SupplierID, CategoryID, Discontinued)
)


------RANKS-------
SELECT * FROM
[dbo].[Employees]

SELECT City FROM dbo.Employees
Where City IN ('London','Tacoma','Seattle')

SELECT City
,ROW_NUMBER() OVER (ORDER BY City) AS 'ROW NUMBER'
FROM dbo.Employees
Where City IN ('London','Tacoma','Seattle')

SELECT City
,ROW_NUMBER() OVER (ORDER BY City) AS 'ROW NUMBER'
,RANK() OVER (ORDER BY City) AS 'RANK'
FROM dbo.Employees
Where City IN ('London','Tacoma','Seattle')

SELECT City
,ROW_NUMBER() OVER (ORDER BY City) AS 'ROW NUMBER'
,RANK() OVER (ORDER BY City) AS 'RANK'
,DENSE_RANK() OVER (ORDER BY City) AS 'DENSE RANK'
FROM dbo.Employees
Where City IN ('London','Tacoma','Seattle','Kirkland')

SELECT City
,ROW_NUMBER() OVER (ORDER BY City) AS 'ROW NUMBER'
,RANK() OVER (ORDER BY City) AS 'RANK'
,DENSE_RANK() OVER (ORDER BY City) AS 'DENSE RANK'
,NTILE(3) OVER (ORDER BY City) AS 'NTILE'
FROM dbo.Employees
Where City IN ('London','Tacoma','Seattle','Kirkland')



------------XML DATAYPE-----------

SELECT * FROM [NaveenData].[dbo].[Samplexmltable]

insert into [NaveenData].[dbo].[Samplexmltable] (xmldata) VALUES
(
'<note>
<to>Tove</to>
<from>Jani</from>
<heading>Reminder</heading>
<body>Dont forget me this weekend!</body>
</note>'
)
--------using this method tag will have tha database name as tag names for rows-----

SELECT * FROM [dbo].[Orders]
for xml auto, elements, root('Orders')

--------using this method tag will have tha row name as tag names for rows-----

SELECT * FROM [dbo].[Orders]
for xml raw, elements, root('Orders')

----to display only single tag like to/from tags--------

SELECT [xmldata].query('/note/from')
FROM [NaveenData].[dbo].Samplexmltable

---------to display actual data without any tags----------

SELECT [xmldata].value('(/note/from)[1]','VARCHAR(10)')
FROM [NaveenData].[dbo].Samplexmltable

SELECT top 10 OrderID from [dbo].[Orders]
for xml raw, elements, root('Orders')

--------converting xml document to table form-------

-----first declare 2 variables---
declare @xmlhandle INT
declare @xmldocument xml

----- loading xml documnet into variable-----
set @xmldocument = ( SELECT * FROM [dbo].[Orders]
for xml auto, elements, root('Orders'))

-- Create an internal representation of the XML document. 
exec sp_xml_preparedocument @xmlhandle output, @xmldocument

-- Execute a SELECT statement using OPENXML rowset provider.
----To write queries by using OPENXML, you must first create an internal representation of the XML document by calling sp_xml_preparedocument. 
--The stored procedure returns a handle to the internal representation of the XML document. This handle is then passed to OPENXML. 
--OPENXML provides rowset views of the document based on XPaths. Specifically, this is one row pattern and one or more column patterns.
select * from openxml (@xmlhandle, '/Orders/dbo.Orders' , 2)
with (OrderID INT, CustomerID VARCHAR(50)) -------putting into some columns

----releasing into resources-------
-- Remove the internal representation. 
exec sp_xml_removedocument @xmlhandle

-----pivot------
SELECT * FROM [dbo].[Products]

select SupplierID, CategoryID, UnitPrice from [dbo].[Products]

select SupplierID, [1],[2],[3],[4] from [dbo].[Products]
PIVOT 
(sum(UnitPrice) for [CategoryID]
in ([1],[2],[3],[4])
)
as pvt

--------dynamic queries--------

declare @sqlstring varchar(2000)
set @sqlstring = 'select SupplierID, [CategoryID],'
set @sqlstring = @sqlstring +'UnitPrice from dbo.Products'

print @sqlstring
exec (@sqlstring)

