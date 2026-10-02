USE SENNON_ENERGY;
GO

-- 1. Create Database Roles
CREATE ROLE AdminRole;
CREATE ROLE ManagerRole;
CREATE ROLE EmployeeRole;
GO

-- 2. Grant Permissions on the default schema (dbo)
-- Admin permissions
GRANT CONTROL TO AdminRole;

-- Manager permissions
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::dbo TO ManagerRole;

-- Employee permissions
GRANT SELECT ON SCHEMA::dbo TO EmployeeRole;
GO

-- 3. Create Server Logins (Authentication Level)
CREATE LOGIN admin_user WITH PASSWORD = 'StrongAdminPassword123!';
CREATE LOGIN manager_user WITH PASSWORD = 'StrongManagerPassword123!';
CREATE LOGIN employee_user WITH PASSWORD = 'StrongEmployeePassword123!';
GO

-- 4. Create Database Users (Database Level)
CREATE USER admin_user FOR LOGIN admin_user;
CREATE USER manager_user FOR LOGIN manager_user;
CREATE USER employee_user FOR LOGIN employee_user;
GO

-- 5. Add Users as Members of Database Roles
ALTER ROLE AdminRole ADD MEMBER admin_user;
ALTER ROLE ManagerRole ADD MEMBER manager_user;
ALTER ROLE EmployeeRole ADD MEMBER employee_user;
GO