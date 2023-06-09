-- ---------------------------------------STEP1-----------------------------------------:
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
CREATE TABLE sales_contracts(
id int primary key auto_increment,
vin int,

Dealership_id int not null,
FOREIGN KEY(Dealership_id) REFERENCES dealerships(id)
);

-- ---------------------------------------STEP3-----------------------------------------:
# populate each of your tables with sample data




    
    
    
    
