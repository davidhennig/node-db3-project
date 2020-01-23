-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName
FROM product
JOIN category
    on category.Id = product.categoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [order].Id, Shipper.CompanyName, OrderDate
FROM [order]
JOIN shipper
    on shipper.id = [order].shipvia
    WHERE OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT Product.ProductName, Quantity, [Order].Id
FROM OrderDetail
JOIN Product
    on Product.Id = OrderDetail.ProductId
JOIN [Order]
    on [Order].Id = OrderDetail.OrderId
WHERE [Order].Id = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [Order].Id, Customer.CompanyName, Employee.LastName
FROM [Order]
JOIN Customer
    on Customer.Id = [Order].CustomerId
JOIN Employee
    on Employee.Id = [Order].EmployeeId
