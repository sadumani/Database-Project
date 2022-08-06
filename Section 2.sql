--Inserting data into the customer table
INSERT INTO Customers (Customer_ID, Name, Email, Address) VALUES (4, 'Cardinal', 'Cardinal45@gmail.com', 'Norway');

--Updating name and address of the customer where id is 1
UPDATE Customers SET Name = 'Alfred Schmidt', Address= 'Verginia' WHERE Customer_ID = 1;

--Deleting the data from customer table where id is 4
DELETE FROM Customers WHERE Customer_ID = 4;

--Order by statement with select command 
SELECT * FROM Products ORDER BY Price desc;

--Command with filtering statement WHERE
SELECT * FROM Stock WHERE Stock_ID = 1;

-- using join statement to join Sales_ID and Customer_ID
SELECT Sales.Sales_ID, Customers.Customer_ID FROM Sales INNER JOIN Customers ON Sales.Customer_ID = Customers.Customer_ID;

--Command for MIN Statement for the price of product
SELECT MIN(Price) AS Smallest_Price FROM Products;

--Command for MAX statement to check the greater quantity of the item 
SELECT MAX(available_quantity) AS Largest_Quantity FROM Stock;

--Command for AVG statement for average sales
SELECT AVG(total_amount) FROM Sales;

--Command for COUNT statement
SELECT COUNT(Payment_ID) FROM Payment;

--using alias AS for multi-table to combine the sales id, sales total amount and customer id
SELECT S.Sales_ID, S.total_amount, C.Customer_ID FROM Customers AS C, Sales AS S WHERE C.Name='Sai Manideep' AND C.Customer_ID = S.Customer_ID;

