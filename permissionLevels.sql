-- Create roles

CREATE ROLE Admin;
CREATE ROLE Manager;
CREATE ROLE Employee;

-- Grant Permissions

GRANT ALL PRIVILEGES ON DATABASE sms_db TO Admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO Manager;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO Employee;

-- create user accounts

CREATE USER admin_user WITH PASSWORD '12345678';
CREATE USER manager_user WITH PASSWORD '12345';
CREATE USER employee_user WITH PASSWORD '123';

GRANT Admin TO admin_user;
GRANT Manager TO manager_user;
GRANT Employee TO employee_user;