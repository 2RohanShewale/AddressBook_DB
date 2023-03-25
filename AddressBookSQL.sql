--UC1 Creating Database
CREATE DATABASE AddressBook_Service

--UC2 Creating  Address Book table 
CREATE TABLE AddressBook_DB
(
PersonId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR(50) NOT NULL
);

--UC3
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES
('Rohan','Shewale','location','Mumbai','Maharastra',400022,1234567890,'rohan@gamil.com'),
('Mandar','Bhurke','location','Thane','Maharastra',400022,1234567890,'mandar@gamil.com'),
('Shubham','Wagh','location','Pune','Maharastra',400022,1234567890,'wagh@gamil.com'),
('Chhaya','Shewale','location','Pune','Maharastra',400022,1234567890,'chhaya@gamil.com'),
('Priya','Bhurke','location','Thane','Maharastra',400022,1234567890,'priya@gamil.com'),
('Nikita','Wagh','location','Pune','Maharastra',400022,1234567890,'nikita@gamil.com')

--UC4
UPDATE AddressBook_DB SET LastName = 'Patil' WHERE FirstName = 'Priya'
UPDATE AddressBook_DB SET Address = 'Other location' WHERE LastName = 'Wagh'
UPDATE AddressBook_DB SET City = 'Karad' WHERE LastName = 'Shewale'
UPDATE AddressBook_DB SET State = 'Gujrat' WHERE FirstName = 'Shubham'
UPDATE AddressBook_DB SET Zip = 40054 WHERE FirstName = 'Rohan'

--UC5 Delete contact
DELETE FROM AddressBook_DB WHERE FirstName = 'Nikita'

-- UC6 Retrive By City or State
SELECT * FROM AddressBook_DB WHERE City = 'Mumbai'
SELECT * FROM AddressBook_DB WHERE State = 'Maharastra'

-- UC7 Size of Address book 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY City 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY State

SELECT COUNT (*) FROM AddressBook_DB WHERE City = 'Mumbai' GROUP BY City
SELECT COUNT (*) FROM AddressBook_DB WHERE State = 'Maharastra' GROUP BY State

SELECT COUNT (*) AS CityCount,City FROM AddressBook_DB GROUP BY City
SELECT COUNT (*) AS StateCount,State FROM AddressBook_DB GROUP BY State


-- UC8 Sort By First Name For City
SELECT * FROM AddressBook_DB WHERE City = 'Thane' ORDER BY FirstName

