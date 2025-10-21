use ECommerceDB
go 

-- Write Business Queries

-- Total Revenue per City

Select c.City , Sum(p.Price * s.Quantity) as TotalRevenue
from Sales s
join Customers c on s.CustomerID = s.CustomerID
join Products p on p.ProductID = s.ProductID
Group by c.City;

-- Top Salling Products

Select Top 1 p.ProductName, Sum(Quantity) as TotalSold
From Sales s
join Products p on s.ProductID = p.ProductID
Group by p.ProductName
Order by TotalSold Desc;

-- Customer Who Spent the Most

Select Top 1 c.CustomerName, Sum(p.Price * s.Quantity) as Totalspent
From Sales s
join Customers c on s.CustomerID = c.CustomerID
join Products p on s.ProductID = p.ProductID
Group by c.CustomerName
Order by Totalspent Desc;

-- Category-wise Sales Summary

Select p.Category, Sum(p.Price * s.Quantity) as TotalSales
From Sales s
join Products p on s.ProductID = p.ProductID
Group by p.Category

-- Date Range Filter Example

Select s.SalesDate , Sum(p.Price * s.Quantity) as DailyRevenue
From sales s
join Products p on s.ProductID = p.ProductID
Where s.salesDate Between '2025-09-10'  and '2025-09-14'
group by s.SalesDate
Order by s.SalesDate;


