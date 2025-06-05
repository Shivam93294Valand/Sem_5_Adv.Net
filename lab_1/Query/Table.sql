create database address

use address

go

create table country(
	countryID int IDENTITY(1,1) primary key,
	countryName varchar(25)
)
go

create table state(
	stateID int IDENTITY(1,1) primary key,
	stateName varchar(25),
	stateCode varchar(25),
	countryID int
	CONSTRAINT FK_Country FOREIGN KEY (countryID) REFERENCES country(countryID)
)
go 

create table city(
	cityID int IDENTITY(1,1) primary key,
	cityName varchar(25),
	pinCode int,
	stateID int
	constraint FK_State FOREIGN KEY (stateID) REFERENCES state(stateID)
)
go

--country
INSERT INTO country (countryName) VALUES
('India'),
('USA'),
('Canada'),
('UK'),
('Germany');
GO

--state 
INSERT INTO state (stateName, stateCode, countryID) VALUES
('Maharashtra', 'MH', 1),
('California', 'CA', 2),
('Ontario', 'ON', 3),
('London', 'LDN', 4),
('Bavaria', 'BY', 5);
GO

--city 
INSERT INTO city (cityName, pinCode, stateID) VALUES
('Mumbai', 400001, 1),
('Los Angeles', 90001, 2),
('Toronto', 10001, 3),
('London City', 20001, 4),
('Munich', 30001, 5);
GO