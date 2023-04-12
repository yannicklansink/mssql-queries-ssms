-- 5: SELECT
-- 1: FROM
-- 2: WHERE
-- 3: GROUP BY
-- 4: HAVING
-- 6: ORDER BY

-- select COUNT(Name)
-- from SalesLT.Product;


--SELECT Color, COUNT(*) as numbers
--FROM SalesLT.Product
--WHERE ProductID > 800
--GROUP BY Color
--ORDER BY numbers ASC;


--SELECT Color, COUNT(*)
--FROM SalesLT.Product
--WHERE ProductID > 800
--GROUP BY Color
--HAVING COUNT(*) >= 5
--ORDER BY Color DESC

--SELECT Color		AS Kleur
--	   , ListPrice	AS Lijst_Prijs
--	   , Name		AS Naam
--FROM SalesLT.Product;

--SELECT 
--	p.Color
--	, p.ModifiedDate	
--FROM SalesLT.Product as p; -- table naming

-- Opdracht voor de pauze | 11-04-23
--SELECT 
--	c.CompanyName AS Naam
--	, c.CustomerID AS ID
--	, c.EmailAddress AS Email
--FROM SalesLT.Customer AS c
--WHERE EmailAddress LIKE '%adventure-works%'
--ORDER BY ID DESC

--SELECT 
--	title
--FROM SalesLT.Customer as c
--WHERE c.title <> 'Ms.' AND c.title <> 'Sra.'

--SELECT
--	c.Title
--FROM SalesLT.Customer as c
--where c.Title not in ('Ms.', 'Sra.') -- OF: c.Title IN ('Mr.', 'Sr.')
--group by c.Title

--SELECT
--	*
--FROM SalesLT.Customer AS c
--WHERE c.Title in ('Ms.', 'Sra.') 
--			  AND c.CustomerID >= 100 -- Kan ook: BETWEEN 100 AND 200 (inclusief)
--			  AND c.CustomerID <= 200


--SELECT
--	*
--FROM SalesLT.Customer AS c
--WHERE c.MiddleName IS NULL -- kan niet met: = NULL (dat is fout)

--Oefening 1: Filter with WHERE
-- 1. Write a query which retrieves all rows and fields from SalesLT.Product. (result: 295 rows)
--select
--	*
--from SalesLT.Product

-- 2. Add a filter: only retrieve products where StandardCost is higher than 500.(result: 86 rows)
--select 
--	*
--from SalesLT.Product
--where StandardCost > 500

-- 3. Add another filter: only red products.(result: 20 rows)
--select 
--	*
--from SalesLT.Product
--where StandardCost > 500
--	  and Color = 'Red'

-- 4. Add another filter: ProductNumber should start with 'BK'.(result: 14 rows)
--select 
--	*
--from SalesLT.Product
--where StandardCost > 500
--	  and Color = 'Red'
--	  and ProductNumber like 'BK%'

-- 5. Extend previous filter: Retrieve products where ProductNumber starts with 'BK' and the product with ProductID 717. (result: 15 rows) 
--select 
--	*
--from SalesLT.Product
--where StandardCost > 500
--	  and Color = 'Red'
--	  and ProductNumber like 'BK%'
--	  or ProductID = 717

-- 6. Sort the result. ListPrice with highest value on top. 
--select 
--	*
--from SalesLT.Product
--where StandardCost > 500
--	  and Color = 'Red'
--	  and ProductNumber like 'BK%'
--	  or ProductID = 717
--order by ListPrice desc

-- Excersise 2: Filter with WHERE
-- 1. Write a query on the Customer table which retrieves all female customers.
-- Tip: start writing another query retrieving all unique values for Title. (result: 344 rows) 
--select
--	*
--from SalesLT.Customer
--where Title in ('Ms.', 'Sra.')

-- 2. Add another filter: the SalesPerson should be one of three:
-- david8, garrett1, pamela0 (result: 93 rows) */
--select
--	*
--from SalesLT.Customer
--where Title in ('Ms.', 'Sra.')
--		    and SalesPerson like '%david8', '%garret1', '%pamela0'


-- gezamelijke opdracht
--select
--	*
--from SalesLT.SalesOrderDetail as s
--inner join SalesLT.Product as p
--on s.ProductID = p.ProductID

-- Exercise 3: Inner join
-- Write a query which retrieves information from the OrderHeader and OrderDetail tables in one result set:
--select
--	soh.SalesOrderID
--	, soh.OrderDate
--	, sod.SalesOrderDetailID
--	, sod.OrderQty
--	, sod.UnitPrice
--	, sod.ProductID
--from SalesLT.SalesOrderHeader as soh
--inner join SalesLT.SalesOrderDetail as sod
--on sod.SalesOrderID = soh.SalesOrderID

-- Excercise 4: inner join
-- 1. Extend the query from the previous exercies. Instead of ProductID show the name of the product.
-- Use a clear field alias. (result: 542 rows) */
--select
--	soh.SalesOrderID
--	, soh.OrderDate
--	, sod.SalesOrderDetailID
--	, sod.OrderQty
--	, sod.UnitPrice
--	, p.Name
--from SalesLT.SalesOrderHeader as soh
--inner join SalesLT.SalesOrderDetail as sod
--on sod.SalesOrderID = soh.SalesOrderID
--inner join SalesLT.Product as p
--on p.ProductID = sod.ProductID


-- Oefening 3 -> 417?
--select 
--	c.LastName
--	, a.AddressLine1
--	, a.City
--from SalesLT.Customer as c
--inner join SalesLT.CustomerAddress as  ca
--on ca.CustomerID = c.CustomerID
--inner join SalesLT.Address as a
--on a.AddressID = ca.AddressID

-- concat oefening 3
--select 
--	CONCAT_WS(' ', c.FirstName,  c.MiddleName ,c.LastName) as customer_name
--	, a.AddressLine1
--	, a.City
--from SalesLT.Customer as c
--inner join SalesLT.CustomerAddress as  ca
--on ca.CustomerID = c.CustomerID
--inner join SalesLT.Address as a
--on a.AddressID = ca.AddressID
--where a.City = 'Burnaby'

-- case: waarde in column veranderen (simpel case)
select
	c.FirstName
	, c.Title
	, case c.Title
		when 'Mr.'	then 'De heer'
		when 'Ms.'	then 'Mevrouw'
		when 'Sr.'	then 'De heer'
		else			 c.Title
	  end
from SalesLT.Customer as c





































































