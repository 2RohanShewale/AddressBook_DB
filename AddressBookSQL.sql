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
