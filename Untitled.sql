-- ---------------------------------------STEP1-----------------------------------------:
DROP DATABASE Mydealership;

-- CREATE THE DATABASE


CREATE DATABASE Mydealership;
    

-- ---------------------------------------STEP2-----------------------------------------:
-- CREATE TABLES:

--  Table1:
CREATE TABLE Dealerships(
id int primary key auto_increment,
NAME varchar(50) NOT NULL,
address varchar(50) NOT NULL,
phone varchar(12) NOT NULL
);
    
    
    
    
-- Table2:
CREATE TABLE Vehicles(
vin int primary key,
Make varchar(50) NOT NULL,
Model varchar(50) NOT NULL,
color varchar(50) NOT NULL,
Year int NOT NULL,
sold boolean
);
    
    
    
-- Table3:
CREATE TABLE Inventory(
id int primary key auto_increment,
vin int,
Dealership_id int not null,
FOREIGN KEY(Dealership_id) REFERENCES dealerships(id)
);
    
    
    
-- Table4:   
CREATE TABLE sales_contracts (
  id int not null primary key auto_increment,
  price double,
  soldDate DATETIME,
  vin_id int not null,
  FOREIGN KEY (vin_id) REFERENCES Vehicles (vin)
);






-- ---------------------------------------STEP3-----------------------------------------:
# populate each of your tables with sample data

-- Populate Dealerships:

INSERT INTO Dealerships(name, address,phone)
VALUES("WestHills", "100 conrner street","800-288-1000");

INSERT INTO Dealerships(name, address,phone)
VALUES("A&C Classics", "352 east legon pl","929-900-5043");

INSERT INTO Dealerships(name, address,phone)
VALUES("Accra LUX", "220 bigman avenue","718-701-2020");

INSERT INTO Dealerships(name, address,phone)
VALUES("Ralph Auto", "100 conrner street","800-288-1000");


--  Populate Vehicles:


INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(100, "Audi", "A5", "Black", 2022,true);

INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(150, "BMW", "535I", "White", 2019,false);

INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(200, "VW", "JETTA", "RED", 2010,false);

INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(250, "HONDA", "CIVIC", "GREEN", 2010,true);

INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(300, "Audi", "A7", "RED", 2015,false);

INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(350, "Toyota", "camry", "Blue", 2005,true);

INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(400, "KIA", "Sorento", "RED", 2002,true);

INSERT INTO Vehicles(vin, make, model, color,year,sold)
values(450, "Ford", "fusion", "Green", 2011,false);



--  Populate Inventory:

INSERT INTO Inventory(vin, Dealership_id)
values(100, 1);

INSERT INTO Inventory(vin, Dealership_id)
values(150, 1);

INSERT INTO Inventory(vin, Dealership_id)
values(200, 2);

INSERT INTO Inventory(vin, Dealership_id)
values(250, 2);

INSERT INTO Inventory(vin, Dealership_id)
values(300, 3);

INSERT INTO Inventory(vin, Dealership_id)
values(350, 3);

INSERT INTO Inventory(vin, Dealership_id)
values(400, 4);

INSERT INTO Inventory(vin, Dealership_id)
values(450, 4);


--  Populate sales_contracts:
INSERT INTO sales_contracts( price, soldDate, vin_id)
values(25889.99, now(), 100);

INSERT INTO sales_contracts( price, soldDate, vin_id)
values(15289.99, now(), 250);

INSERT INTO sales_contracts( price, soldDate, vin_id)
values(4999.99, now(), 350);

INSERT INTO sales_contracts( price, soldDate, vin_id)
values(2599.99, now(), 400);







    
    
    
    
