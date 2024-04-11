use Northwind
--SELECT COUNT(*) as 'cantidad_total_pedidos' from Orders;
--SELECT FirstName,LastName  FROM Employees where Title = 'Sales Representative';
--SELECT TOP 10  ContactName,COUNT(OrderID) AS TotalPedidos FROM Customers c JOIN Orders p ON c.CustomerID = p.CustomerID GROUP BY ContactName ORDER BY TotalPedidos DESC;
--SELECT TOP 5 ProductName, SUM(UnitsOnOrder) AS TotalUnidadesVendidas FROM Products p JOIN   Orders v ON ProductID = ProductID GROUP BY  ProductName ORDER BY TotalUnidadesVendidas DESC;
--SELECT  Country, COUNT(OrderID) AS TotalPedidos FROM  Customers c JOIN  Orders p ON c.CustomerID = p.CustomerID GROUP BY  Country ORDER BY TotalPedidos DESC;
--SELECT ProductName, AVG(UnitsOnOrder) AS Promedio FROM Products GROUP BY ProductName
--SELECT ProductName FROM Products WHERE ProductName LIKE  '%Chocolate%'
--SELECT FirstName,LastName,BirthDate FROM Employees WHERE BirthDate > '1960-01-01';
--SELECT Products.ProductName, Products.UnitPrice,Suppliers.CompanyName,Suppliers.SupplierID FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;
