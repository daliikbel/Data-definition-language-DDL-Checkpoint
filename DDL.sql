create database Checkpoint;
USE Checkpoint;
CREATE TABLE CUSTOMER(
CustomerID varchar(20) PRIMARY KEY,
CustomerName varchar(5) NOT NULL,
CustomerTel double);
CREATE TABLE Product(
ProductID varchar(20) PRIMARY KEY,
ProductName varchar(20) NOT NULL,
Price double);
CREATE TABLE ORDERS(
CustomerID varchar(20),
ProductID varchar(20),
Quantity double,
Totalamount double,
FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID));
ALTER TABLE PRODUCT
ADD (Category varchar(20));
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT (CURRENT_Date);
ALTER TABLE Product
ADD CONSTRAINT chk_price CHECK (Price > 0);



