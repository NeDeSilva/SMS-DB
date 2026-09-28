CREATE TABLE Person(
    Gov_ID VARCHAR(20),
    Sys_ID VARCHAR(20),
    Name VARCHAR(50),
    Phone_num VARCHAR(20),
    Address VARCHAR(100),
);

-- Create a new table called 'Customer' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.Customer', 'U') IS NOT NULL
DROP TABLE SchemaName.Customer
GO
-- Create the table in the specified schema
CREATE TABLE SchemaName.Customer
(
    CustomerId INT NOT NULL PRIMARY KEY, -- primary key column
    Column1 [NVARCHAR](50) NOT NULL,
    Column2 [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO

-- Create a new table called 'Employee' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.Employee', 'U') IS NOT NULL
DROP TABLE SchemaName.Employee
GO
-- Create the table in the specified schema
CREATE TABLE SchemaName.Employee
(
    EmployeeId INT NOT NULL PRIMARY KEY, -- primary key column
    Column1 [NVARCHAR](50) NOT NULL,
    Column2 [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO