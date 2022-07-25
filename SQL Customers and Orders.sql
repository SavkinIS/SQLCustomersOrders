Create table Customers(
Id int NOT NULL PRIMARY KEY IDENTITY,
Name varchar(25) not null
);

Insert into Customers
(Name)
Values 
('Max'), ('Pavel'), ('Ivan'), ('Leonid')


Create table Orders(
Id int NOT NULL PRIMARY KEY IDENTITY,
CustomerId int not null REFERENCES Customers (Id)
);

Insert into Orders
(CustomerId) 
Values(2),(4);

Select * from Orders



SELECT
   Name as Customers
FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.CustomerId
WHERE Orders.CustomerId IS NULL



