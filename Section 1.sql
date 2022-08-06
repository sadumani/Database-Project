create database SMFRL_company;
use SMFRL_company;
show tables;
create table Products (product_id int not null, name varchar(255) not null, price bigint not null, PRIMARY KEY (product_id));
describe Products;
create table Customers (customer_id int not null, name varchar(255), email varchar(255), address varchar(255), PRIMARY KEY (customer_id));
describe Customers; 
create table Sales (sales_id int not null, product_id int, customer_id int, quantity bigint, total_amount bigint, PRIMARY KEY (sales_id), FOREIGN KEY (product_id) REFERENCES Products(product_id), FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));
describe Sales;
create table Payment (payment_id int not null, sales_id int, payment_method text, date date, PRIMARY KEY (payment_id), FOREIGN KEY (sales_id) REFERENCES Sales(sales_id));
describe Payment;
create table Stock (stock_id int not null, product_id int, available_quantity bigint, PRIMARY KEY (stock_id), FOREIGN KEY (product_id) REFERENCES Products(product_id));
describe Stock;
show tables;
select * from Products;
LOAD DATA LOCAL INFILE "C:/Program Files/MariaDB 10.8/data/smfrl_company/Products.csv" INTO TABLE Products FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Products;

select * from Customers;
LOAD DATA LOCAL INFILE "C:/Program Files/MariaDB 10.8/data/smfrl_company/Customers.csv" INTO TABLE Customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Customers;

select * from Sales;
LOAD DATA LOCAL INFILE "C:/Program Files/MariaDB 10.8/data/smfrl_company/Sales.csv" INTO TABLE Sales FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Sales;

select * from Payment;
LOAD DATA LOCAL INFILE "C:/Program Files/MariaDB 10.8/data/smfrl_company/Payment.csv" INTO TABLE Payment FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Payment;

select * from Stock;
LOAD DATA LOCAL INFILE "C:/Program Files/MariaDB 10.8/data/smfrl_company/Stock.csv" INTO TABLE Stock FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Stock;




