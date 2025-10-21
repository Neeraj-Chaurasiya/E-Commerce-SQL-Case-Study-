-- Created Database

Create Database ECommerceDB;
go
Use ECommerceDB;
go

-- Created Tables

Create Table Customers (
	CustomerID Int Primary Key Identity,
	CustmoerName Varchar(100),
	City Varchar(50),
	Email Varchar(100)
);

Create Table Products (
	ProductID Int Primary key Identity ,
	ProductName Varchar(100),
	Category Varchar(50),
	Price Decimal(10,2)
);

Create Table Sales (
	SalesID Int Primary Key Identity,
	CustomerID Int Foreign Key References Customers(CustomerID),
	ProductID Int Foreign Key References Products(ProductID),
	Quantity Int,
	SalesData Date
);


EXEC sp_rename 'dbo.Customers.CustmoerName', 'CustomerName', 'COLUMN';
EXEC sp_rename 'dbo.Sales.SalesData', 'SalesDate', 'COLUMN';


	