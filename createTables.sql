

-- 1. Customer
CREATE TABLE Customer (
    Cus_ID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Status VARCHAR(50),
    Phone_num VARCHAR(20),
    DOB DATE,
    Address VARCHAR(255),
    Email VARCHAR(100)
);

-- 2. Supplier
CREATE TABLE Supplier (
    Sup_ID VARCHAR(50) PRIMARY KEY,
    Status VARCHAR(50),
    Com_name VARCHAR(100),
    Com_Reg_Num VARCHAR(100)
);

-- 3. Vehicle
CREATE TABLE Vehicle (
    V_ID VARCHAR(50) PRIMARY KEY,
    V_type VARCHAR(50),
    V_Status VARCHAR(50)
);

-- 4. Employee
CREATE TABLE Employee (
    Emp_ID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Status VARCHAR(50),
    Phone_num VARCHAR(20),
    DOB DATE,
    Address VARCHAR(255),
    Email VARCHAR(100),
    Tax_ID VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- 5. Solar System
CREATE TABLE Solar_System (
    Sys_code VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Dimension VARCHAR(50),
    Price DECIMAL(10, 2),
    Warranty VARCHAR(50),
    Type VARCHAR(50),
    Battery_cap VARCHAR(50),
    Power VARCHAR(50),
    Sup_ID VARCHAR(50),
    FOREIGN KEY (Sup_ID) REFERENCES Supplier(Sup_ID)
);

-- 6. Activity
CREATE TABLE Activity (
    Sys_code VARCHAR(50),
    Date DATE,
    Time TIME,
    Flag VARCHAR(50),
    Wattage VARCHAR(50),
    PRIMARY KEY (Sys_code, Date, Time),
    FOREIGN KEY (Sys_code) REFERENCES Solar_System(Sys_code)
);

-- 7. Order
CREATE TABLE [Order] (
    Order_ID VARCHAR(50) PRIMARY KEY,
    Date DATE,
    Cus_ID VARCHAR(50),
    Sys_ID VARCHAR(50),
    FOREIGN KEY (Cus_ID) REFERENCES Customer(Cus_ID),
    FOREIGN KEY (Sys_ID) REFERENCES Solar_System(Sys_code)
);

-- 8. Driver (Subtype of Employee)
CREATE TABLE Driver (
    Emp_ID VARCHAR(50) PRIMARY KEY,
    Dri_Lic VARCHAR(50),
    V_ID VARCHAR(50),
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    FOREIGN KEY (V_ID) REFERENCES Vehicle(V_ID)
);

-- 9. Engineer (Subtype of Employee)
CREATE TABLE Engineer (
    Emp_ID VARCHAR(50) PRIMARY KEY,
    Type VARCHAR(50),
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID)
);

-- 10. Technician (Subtype of Employee)
CREATE TABLE Technician (
    Emp_ID VARCHAR(50) PRIMARY KEY,
    Skill_level VARCHAR(50),
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID)
);

-- 11. Dependant
CREATE TABLE Dependant (
    Emp_ID VARCHAR(50),
    Name VARCHAR(100),
    DOB DATE,
    Gender VARCHAR(20),
    Relation VARCHAR(50),
    PRIMARY KEY (Emp_ID, Name),
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID)
);

-- 12. Installment
CREATE TABLE Installment (
    Ins_ID VARCHAR(50) PRIMARY KEY,
    Date DATE,
    Price DECIMAL(10, 2),
    Emp_ID VARCHAR(50),
    Warrenty VARCHAR(50),
    Order_ID VARCHAR(50),
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    FOREIGN KEY (Order_ID) REFERENCES [Order](Order_ID)
);