use ECommerceDB
go 

Insert into customers (CustomerName ,City ,Email ) Values 
('Ravi Kumar','Delhi','ravi@gmail.com'),
('Neha Sharma', 'Mumbai', 'neha@gmail.com'),
('Amit Singh', 'Pune', 'amit@gmail.com'),
('Priya Das', 'Kolkata', 'priya@gmail.com');


Insert into Products(ProductName, Category, Price) Values
('Laptop', 'Electronics', 60000),
('Phone', 'Electronics', 30000),
('Shoes', 'Fashion', 2500),
('Watch', 'Accessories', 4000);

Insert into sales (CustomerID, ProductID, Quantity, SalesDate) Values 
(1, 1, 2, '2025-09-10'),
(2, 2, 1, '2025-09-11'),
(3, 3, 3, '2025-09-12'),
(4, 4, 1, '2025-09-13'),
(1, 2, 1, '2025-09-14');

