-- create all 12 tables

CREATE TABLE Person (
    Gov_ID VARCHAR(20) NOT NULL,
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    DOB DATE NOT NULL,
    Age INT,
    Email VARCHAR(50) NOT NULL,
    Phone_Num VARCHAR(15) NOT NULL,
    address VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Person PRIMARY KEY (Gov_ID),
    CONSTRAINT UQ_Person_Email UNIQUE (Email),
    CONSTRAINT UQ_Person_Phone UNIQUE (Phone_Num)
);

CREATE TABLE Customer (
    Cust_ID VARCHAR(20) NOT NULL,
    Gov_ID VARCHAR(20) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active',
    CONSTRAINT PK_Customer PRIMARY KEY (Cust_ID),
    CONSTRAINT UQ_Customer_GovID UNIQUE (Gov_ID),
    CONSTRAINT FK_Customer_Person FOREIGN KEY (Gov_ID) REFERENCES Person(Gov_ID),
);

CREATE TABLE Employee (
    Emp_ID VARCHAR(20) NOT NULL,
    Gov_ID VARCHAR(20) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2),
    Date_Hired DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active',
    CONSTRAINT PK_Employee PRIMARY KEY (Emp_ID),
    CONSTRAINT FK_Employee_Person FOREIGN KEY (Gov_ID) REFERENCES Person(Gov_ID),
);



CREATE TABLE Supplier (
    Sup_ID VARCHAR(20) NOT NULL,
    Gov_ID VARCHAR(20) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active',
    company_name VARCHAR(50) NOT NULL,
    company_Registration_No VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Supplier PRIMARY KEY (Sup_ID),
    CONSTRAINT FK_Supplier_Person FOREIGN KEY (Gov_ID) REFERENCES Person(Gov_ID),
);

CREATE TABLE Driver (
    License_No VARCHAR(50) NOT NULL,
    Driver_ID VARCHAR(20) NOT NULL,
    Gov_ID VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Driver PRIMARY KEY (Driver_ID),
    CONSTRAINT FK_Driver_Person FOREIGN KEY (Gov_ID) REFERENCES Person(Gov_ID),
);

CREATE TABLE Engineer (
    Specialization VARCHAR(50) NOT NULL,
    Eng_ID VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Engineer PRIMARY KEY (Eng_ID),
    CONSTRAINT FK_Engineer_Person FOREIGN KEY (Gov_ID) REFERENCES Person(Gov_ID),
);

CREATE TABLE Technician (
    Tech_ID VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Technician PRIMARY KEY (Tech_ID),
    CONSTRAINT FK_Technician_Person FOREIGN KEY (Gov_ID) REFERENCES Person(Gov_ID),
);

CREATE TABLE Vehicle (
    Reg_No VARCHAR(20) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Capacity INT,
    Status VARCHAR(20) DEFAULT 'Active',
    CONSTRAINT PK_Vehicle PRIMARY KEY (Reg_No),
);

CREATE TABLE Dependant (
    Name VARCHAR(50) NOT NULL,
    relation VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
);

CREATE TABLE Activity (
    wattage INT NOT NULL,
    flag VARCHAR(255),
    date DATE,
    time TIME,
);

CREATE TABLE Solar_System (
    System_ID VARCHAR(20) NOT NULL,
    Power INT,
    Capacity DECIMAL(10, 2),
    Name VARCHAR(50),
    Type VARCHAR(20),
    Price DECIMAL(10, 2),
    CONSTRAINT PK_Solar_System PRIMARY KEY (System_ID),
);

CREATE TABLE Installment (
	Ins_ID VARCHAR(20) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Due_Date DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Pending',
    System_ID VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Installment PRIMARY KEY (Ins_ID),
    CONSTRAINT FK_Installment_SolarSystem FOREIGN KEY (System_ID) REFERENCES Solar_System(System_ID),
);
