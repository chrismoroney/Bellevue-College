--*  BUSIT 103           Assignment   #2              DUE DATE:  Consult course calendar
							
/*****	You are to develop SQL statements for each task listed. You should type your SQL statements under each task. 
The fields' names are written as if a person is asking you for the report. You will need to look at the data and understand that list price is in the ListPrice field, for example. 
Add comments to describe your reasoning when you are in doubt about something. 
To find the tables that contain the fields that are requested, consider creating a Database Diagram that includes only the tables from the SalesLT schema and referring to it. *****/

/***** Chris Moroney *****/

/***** Do not remove the USE statement. *****/

USE AdventureWorksLT2012;

--1. List all customers. Include all data about each customer. "All data" means to include all the fields. Use * in this statement. 


SELECT * FROM [SalesLT].[Customer]


--2.	List the company name, first name, and last name of each customer in alphabetical order by company name. 

SELECT CompanyName, FirstName, LastName
FROM [SalesLT].[Customer]
ORDER BY CompanyName ASC

--3.	List the company name, first name, last name, and sales person for each customer in alphabetical order by last name, then by first name, and then by company.  Hint: There will be one SELECT statement with three fields in the ORDER BY clause. Do not change the order of the fields in the SELECT clause. 

SELECT CompanyName, FirstName, LastName, SalesPerson
FROM [SalesLT].[Customer]
ORDER BY LastName, FirstName, CompanyName

--4. List all products by product number.  Include all data about each product. 
-- "All data" means to include all the fields. 


SELECT *
FROM [SalesLT].[Product]
ORDER BY ProductNumber ASC



--5. List all products showing product ID, product name, product number, product model id,
-- product category ID. Sort by product category Id and then by product number. Do not change the order of the fields in the SELECT clause.

SELECT ProductID, Name, ProductModelID, ProductCategoryID
FROM [SalesLT].[Product]
ORDER BY ProductCategoryID, ProductNumber ASC


--6. List all products showing product ID, product name, color, standard cost and list price ordered by highest to lowest list price. 
 

SELECT ProductID, Name, Color, StandardCost, ListPrice
FROM [SalesLT].[Product]
ORDER BY ListPrice DESC


--7. List all AdventureWorks products model id. List each model id only once and sort in order from lowest to highest. Note: You will display only the model id field.

SELECT DISTINCT ProductModelID
FROM [SalesLT].[Product]

--8.  	List the colors of AdventureWorks products.  List each color only once and in alphabetical order. We will learn to deal with NULL in the next module, so NULL will show in the list of colors.

SELECT DISTINCT Color
FROM [SalesLT].[Product]
ORDER BY Color ASC

--9.	List all addresses by country. Include all data about each address. "All data" means to include all the fields. 

SELECT * 
FROM [SalesLT].[Address]
ORDER BY CountryRegion ASC


--10. List the unique state/province and country/region and order alphabetically by country/region and state/province. Note: Write this in one SELECT statement and do not change the order of the fields in the SELECT clause. Note: Unique means to show one time. When there is more than one field, each combination of fields (each row) will be unique (will not be repeated). 

SELECT DISTINCT StateProvince, CountryRegion
FROM [SalesLT].[Address]
ORDER BY CountryRegion, StateProvince ASC

--11. List all orders from the SalesLT.SalesOrderDetail table from highest to lowest on order quantity. Include all data related to each order. 

SELECT *
FROM [SalesLT].[SalesOrderDetail]
ORDER BY OrderQty DESC


--12. List customer IDs for all customers that have placed orders with AdventureWorks. Hint: The customer id will show in the SalesOrderHeader table ONLY if the customer has placed an order. Use the SalesLT.SalesOrderHeader table and show each customer ID only once even if the customer has placed multiple orders. Sort by customer id. Recall that the order of the results is not guaranteed without a Order By clause.

SELECT CustomerID
FROM [SalesLT].[SalesOrderHeader]
ORDER BY CustomerID ASC




 

