use ECommerceDB
go

-- Create a View

Create View v_CustomerSalesSummary as 
Select c.CustomerName, c.City, sum(p.Price * s.Quantity) as Totalspent
From Sales s
join customers c on s.customerID = c.CustomerID
join Products p on p.ProductID = s.ProductID
Group by c.CustomerName, c.City;

Select * from v_CustomerSalesSummary;

-- Create a Stored Procedure

Create Procedure GetSalesByCity @CityName varchar(50)
As
Begin
	Select c.CustomerName, sum(p.Price * s.Quantity) as Totalspent
	From Sales s 
	join Customers c on s.CustomerID = c.CustomerID
	join Products p on s.ProductID = p.ProductID
	Where c.City = @CityName
	Group by c.CustomerName;
End;

EXEC GetSalesByCity 'Delhi';

-- Add Trigger Example

CREATE TRIGGER trg_SaleInsert
ON Sales
AFTER INSERT
AS
BEGIN
    PRINT '✅ New Sale Recorded Successfully!';
END;

-- Test Everything

INSERT INTO Sales (CustomerID, ProductID, Quantity, SalesDate)
VALUES (2, 3, 2, '2025-09-15');
