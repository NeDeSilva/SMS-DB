USE SENNON_ENERGY;
GO

-- 1. Insert into Customer
INSERT INTO Customer (Cus_ID, Name, Status, Phone_num, DOB, Address, Email) VALUES
('CUS001', 'John Doe', 'Active', '555-0101', '1985-03-15', '123 Elm St, Springfield', 'john.doe@email.com'),
('CUS002', 'Jane Smith', 'Active', '555-0102', '1990-07-22', '456 Oak St, Springfield', 'jane.smith@email.com'),
('CUS003', 'Alice Johnson', 'Inactive', '555-0103', '1978-11-05', '789 Pine St, Metropolis', 'alice.j@email.com'),
('CUS004', 'Bob Brown', 'Active', '555-0104', '1982-01-30', '101 Maple Ave, Gotham', 'bob.brown@email.com'),
('CUS005', 'Charlie Davis', 'Active', '555-0105', '1995-09-12', '202 Birch Rd, Star City', 'charlie.d@email.com'),
('CUS006', 'Diana Prince', 'Active', '555-0106', '1988-04-18', '303 Cedar Ln, Gateway', 'diana.p@email.com'),
('CUS007', 'Evan Wright', 'Inactive', '555-0107', '1992-12-01', '404 Walnut St, Coast City', 'ewright@email.com'),
('CUS008', 'Fiona Gallagher', 'Active', '555-0108', '1996-06-25', '505 Spruce St, Bludhaven', 'fiona.g@email.com'),
('CUS009', 'George Clark', 'Active', '555-0109', '1975-08-14', '606 Ash Dr, Keystone', 'gclark@email.com'),
('CUS010', 'Hannah Abbott', 'Active', '555-0110', '1993-02-28', '707 Beech Ct, Hub City', 'hannah.a@email.com');

-- 2. Insert into Supplier
INSERT INTO Supplier (Sup_ID, Status, Com_name, Com_Reg_Num) VALUES
('SUP001', 'Active', 'SolarTech Corp', 'REG-10001'),
('SUP002', 'Active', 'SunPower Solutions', 'REG-10002'),
('SUP003', 'Active', 'GreenEnergy Inc', 'REG-10003'),
('SUP004', 'Inactive', 'EcoSolar Ltd', 'REG-10004'),
('SUP005', 'Active', 'Helios Power Systems', 'REG-10005'),
('SUP006', 'Active', 'BrightDay Renewables', 'REG-10006'),
('SUP007', 'Active', 'RayEnergy Global', 'REG-10007'),
('SUP008', 'Inactive', 'Apex Solar Group', 'REG-10008'),
('SUP009', 'Active', 'FutureSun Inc', 'REG-10009'),
('SUP010', 'Active', 'Solaria Manufacturing', 'REG-10010');

-- 3. Insert into Vehicle
INSERT INTO Vehicle (V_ID, V_type, V_Status) VALUES
('V001', 'Van', 'Available'),
('V002', 'Truck', 'In Use'),
('V003', 'Van', 'Maintenance'),
('V004', 'Pickup', 'Available'),
('V005', 'Truck', 'Available'),
('V006', 'Van', 'In Use'),
('V007', 'Pickup', 'Maintenance'),
('V008', 'Truck', 'Available'),
('V009', 'Van', 'Available'),
('V010', 'Pickup', 'Available');

-- 4. Insert into Employee (30 Employees)
INSERT INTO Employee (Emp_ID, Name, Status, Phone_num, DOB, Address, Email, Tax_ID, Salary) VALUES
-- Drivers (EMP001 - EMP010)
('EMP001', 'Michael Scott', 'Active', '555-0201', '1965-03-15', '1725 Slough Ave, Scranton', 'm.scott@company.com', 'TAX-801', 55000.00),
('EMP002', 'Jim Halpert', 'Active', '555-0202', '1978-10-01', '124 Harper St, Scranton', 'j.halpert@company.com', 'TAX-802', 52000.00),
('EMP003', 'Pam Beesly', 'Active', '555-0203', '1979-03-25', '124 Harper St, Scranton', 'p.beesly@company.com', 'TAX-803', 50000.00),
('EMP004', 'Dwight Schrute', 'Active', '555-0204', '1970-01-20', 'Schrute Farms, Honesdale', 'd.schrute@company.com', 'TAX-804', 54000.00),
('EMP005', 'Angela Martin', 'Active', '555-0205', '1971-06-25', '452 Pine St, Scranton', 'a.martin@company.com', 'TAX-805', 51000.00),
('EMP006', 'Oscar Martinez', 'Active', '555-0206', '1968-11-18', '883 Elm St, Scranton', 'o.martinez@company.com', 'TAX-806', 53000.00),
('EMP007', 'Kevin Malone', 'Active', '555-0207', '1968-06-01', '231 Maple Ave, Scranton', 'k.malone@company.com', 'TAX-807', 48000.00),
('EMP008', 'Stanley Hudson', 'Active', '555-0208', '1951-01-08', '501 Cedar Ln, Scranton', 's.hudson@company.com', 'TAX-808', 50000.00),
('EMP009', 'Phyllis Vance', 'Active', '555-0209', '1951-07-10', '902 Birch Rd, Scranton', 'p.vance@company.com', 'TAX-809', 49000.00),
('EMP010', 'Darryl Philbin', 'Active', '555-0210', '1971-10-25', '304 Oak St, Scranton', 'd.philbin@company.com', 'TAX-810', 56000.00),

-- Engineers (EMP011 - EMP020)
('EMP011', 'Andy Bernard', 'Active', '555-0211', '1973-01-24', '111 Cornell Rd, Scranton', 'a.bernard@company.com', 'TAX-811', 75000.00),
('EMP012', 'Erin Hannon', 'Active', '555-0212', '1986-05-02', '222 Lake St, Scranton', 'e.hannon@company.com', 'TAX-812', 68000.00),
('EMP013', 'Gabe Lewis', 'Active', '555-0213', '1982-11-15', '333 Sabre St, Scranton', 'g.lewis@company.com', 'TAX-813', 72000.00),
('EMP014', 'Holly Flax', 'Active', '555-0214', '1971-07-12', '444 Nashua Rd, Scranton', 'h.flax@company.com', 'TAX-814', 78000.00),
('EMP015', 'Jan Levinson', 'Active', '555-0215', '1967-09-08', '555 Corporate Dr, New York', 'j.levinson@company.com', 'TAX-815', 85000.00),
('EMP016', 'David Wallace', 'Active', '555-0216', '1963-04-30', '666 Executive Way, New York', 'd.wallace@company.com', 'TAX-816', 90000.00),
('EMP017', 'Karen Filippelli', 'Active', '555-0217', '1976-02-25', '777 Utica St, Utica', 'k.filippelli@company.com', 'TAX-817', 74000.00),
('EMP018', 'Roy Anderson', 'Active', '555-0218', '1972-08-19', '888 Gravel Rd, Scranton', 'r.anderson@company.com', 'TAX-818', 69000.00),
('EMP019', 'Meredith Palmer', 'Active', '555-0219', '1964-12-05', '999 Party Ave, Scranton', 'm.palmer@company.com', 'TAX-819', 71000.00),
('EMP020', 'Creed Bratton', 'Active', '555-0220', '1943-02-08', '000 Unknown St, Scranton', 'c.bratton@company.com', 'TAX-820', 70000.00),

-- Technicians (EMP021 - EMP030)
('EMP021', 'Kelly Kapoor', 'Active', '555-0221', '1980-02-05', '102 Fashion Ave, Scranton', 'k.kapoor@company.com', 'TAX-821', 60000.00),
('EMP022', 'Ryan Howard', 'Active', '555-0222', '1979-05-05', '203 Trend St, Scranton', 'r.howard@company.com', 'TAX-822', 62000.00),
('EMP023', 'Toby Flenderson', 'Active', '555-0223', '1963-02-22', '304 HR Blvd, Scranton', 't.flenderson@company.com', 'TAX-823', 64000.00),
('EMP024', 'Clark Green', 'Active', '555-0224', '1990-06-11', '405 Junior St, Scranton', 'c.green@company.com', 'TAX-824', 58000.00),
('EMP025', 'Pete Miller', 'Active', '555-0225', '1989-09-18', '506 Plott St, Scranton', 'p.miller@company.com', 'TAX-825', 59000.00),
('EMP026', 'Nate Nickerson', 'Active', '555-0226', '1977-03-30', '607 Warehouse Ln, Scranton', 'n.nickerson@company.com', 'TAX-826', 57000.00),
('EMP027', 'Val Johnson', 'Active', '555-0227', '1981-10-14', '708 Dock Rd, Scranton', 'v.johnson@company.com', 'TAX-827', 63000.00),
('EMP028', 'Mose Schrute', 'Active', '555-0228', '1974-04-01', 'Schrute Farms, Honesdale', 'm.schrute@company.com', 'TAX-828', 52000.00),
('EMP029', 'Hank Tate', 'Active', '555-0229', '1955-08-17', '909 Security Ct, Scranton', 'h.tate@company.com', 'TAX-829', 55000.00),
('EMP030', 'Bob Vance', 'Active', '555-0230', '1950-11-20', '110 Refrigeration Way, Scranton', 'b.vance@company.com', 'TAX-830', 65000.00);

-- 5. Insert into Solar_System
INSERT INTO Solar_System (Sys_code, Name, Dimension, Price, Warranty, Type, Battery_cap, Power, Sup_ID) VALUES
('SYS001', 'SunCore 3000', '2x1.5m', 4500.00, '10 Years', 'Residential', '10kWh', '3 kW', 'SUP001'),
('SYS002', 'SunCore 5000', '3x2.0m', 7200.00, '10 Years', 'Residential', '15kWh', '5 kW', 'SUP001'),
('SYS003', 'Helios Max 10', '4x2.5m', 12500.00, '15 Years', 'Commercial', '30kWh', '10 kW', 'SUP005'),
('SYS004', 'EcoHome 200', '1.5x1m', 2800.00, '5 Years', 'Residential', '5kWh', '2 kW', 'SUP003'),
('SYS005', 'RayPro 8000', '3.5x2m', 9800.00, '12 Years', 'Residential', '20kWh', '8 kW', 'SUP007'),
('SYS006', 'BrightLite 15', '5x3.0m', 18000.00, '20 Years', 'Commercial', '50kWh', '15 kW', 'SUP006'),
('SYS007', 'Apex Ultra 6', '3x2.0m', 8100.00, '10 Years', 'Residential', '12kWh', '6 kW', 'SUP002'),
('SYS008', 'Solaria Grid 20', '6x4.0m', 25000.00, '25 Years', 'Industrial', '100kWh', '20 kW', 'SUP010'),
('SYS009', 'FutureSun 4K', '2.5x1.5m', 5600.00, '8 Years', 'Residential', '8kWh', '4 kW', 'SUP009'),
('SYS010', 'EcoHome 400', '2x1.5m', 4200.00, '5 Years', 'Residential', '8kWh', '4 kW', 'SUP003');

-- 6. Insert into Activity
INSERT INTO Activity (Sys_code, Date, Time, Flag, Wattage) VALUES
('SYS001', '2026-10-01', '08:00:00', 'Normal', '1200W'),
('SYS001', '2026-10-01', '12:00:00', 'Peak', '2900W'),
('SYS002', '2026-10-01', '09:00:00', 'Normal', '2100W'),
('SYS002', '2026-10-01', '13:00:00', 'Peak', '4800W'),
('SYS003', '2026-10-01', '10:00:00', 'Normal', '6500W'),
('SYS004', '2026-10-02', '11:00:00', 'Low', '800W'),
('SYS005', '2026-10-02', '12:30:00', 'Peak', '7600W'),
('SYS006', '2026-10-02', '14:00:00', 'Normal', '11000W'),
('SYS007', '2026-10-02', '15:00:00', 'Normal', '4200W'),
('SYS008', '2026-10-02', '16:00:00', 'Warning', '18500W');

-- 7. Insert into Order
INSERT INTO `Order` (Order_ID, Date, Cus_ID, Sys_ID) VALUES
('ORD001', '2026-09-01', 'CUS001', 'SYS001'),
('ORD002', '2026-09-03', 'CUS002', 'SYS002'),
('ORD003', '2026-09-05', 'CUS003', 'SYS004'),
('ORD004', '2026-09-10', 'CUS004', 'SYS003'),
('ORD005', '2026-09-12', 'CUS005', 'SYS005'),
('ORD006', '2026-09-15', 'CUS006', 'SYS007'),
('ORD007', '2026-09-18', 'CUS007', 'SYS009'),
('ORD008', '2026-09-20', 'CUS008', 'SYS006'),
('ORD009', '2026-09-22', 'CUS009', 'SYS008'),
('ORD010', '2026-09-25', 'CUS010', 'SYS010');

-- 8. Insert into Driver
INSERT INTO Driver (Emp_ID, Dri_Lic, V_ID) VALUES
('EMP001', 'DL-99001', 'V001'),
('EMP002', 'DL-99002', 'V002'),
('EMP003', 'DL-99003', 'V003'),
('EMP004', 'DL-99004', 'V004'),
('EMP005', 'DL-99005', 'V005'),
('EMP006', 'DL-99006', 'V006'),
('EMP007', 'DL-99007', 'V007'),
('EMP008', 'DL-99008', 'V008'),
('EMP009', 'DL-99009', 'V009'),
('EMP010', 'DL-99010', 'V010');

-- 9. Insert into Engineer
INSERT INTO Engineer (Emp_ID, Type) VALUES
('EMP011', 'Electrical'),
('EMP012', 'System Integrator'),
('EMP013', 'Solar Design'),
('EMP014', 'Electrical'),
('EMP015', 'Project Engineer'),
('EMP016', 'Structural'),
('EMP017', 'Electrical'),
('EMP018', 'Quality Control'),
('EMP019', 'Maintenance'),
('EMP020', 'Electrical');

-- 10. Insert into Technician
INSERT INTO Technician (Emp_ID, Skill_level) VALUES
('EMP021', 'Senior'),
('EMP022', 'Intermediate'),
('EMP023', 'Junior'),
('EMP024', 'Expert'),
('EMP025', 'Intermediate'),
('EMP026', 'Senior'),
('EMP027', 'Junior'),
('EMP028', 'Intermediate'),
('EMP029', 'Senior'),
('EMP030', 'Expert');

-- 11. Insert into Dependant
INSERT INTO Dependant (Emp_ID, Name, DOB, Gender, Relation) VALUES
('EMP001', 'Cecelia Scott', '2015-05-10', 'Female', 'Daughter'),
('EMP002', 'Philip Halpert', '2012-02-14', 'Male', 'Son'),
('EMP002', 'Cece Halpert', '2010-03-04', 'Female', 'Daughter'),
('EMP004', 'Dwight Jr.', '2018-08-20', 'Male', 'Son'),
('EMP005', 'Philip Martin', '2011-11-01', 'Male', 'Son'),
('EMP008', 'Melissa Hudson', '1990-04-12', 'Female', 'Daughter'),
('EMP010', 'Jada Philbin', '2005-09-30', 'Female', 'Daughter'),
('EMP010', 'Darryl Jr.', '2008-01-15', 'Male', 'Son'),
('EMP006', 'Elena Martinez', '2014-07-19', 'Female', 'Niece'),
('EMP009', 'Bob Vance Jr.', '1988-12-05', 'Male', 'Son');

-- 12. Insert into Installment
INSERT INTO Installment (Ins_ID, Date, Price, Emp_ID, Warrenty, Order_ID) VALUES
('INS001', '2026-09-02', 4500.00, 'EMP021', '10 Years', 'ORD001'),
('INS002', '2026-09-04', 7200.00, 'EMP022', '10 Years', 'ORD002'),
('INS003', '2026-09-06', 2800.00, 'EMP023', '5 Years', 'ORD003'),
('INS004', '2026-09-11', 12500.00, 'EMP024', '15 Years', 'ORD004'),
('INS005', '2026-09-13', 9800.00, 'EMP025', '12 Years', 'ORD005'),
('INS006', '2026-09-16', 8100.00, 'EMP026', '10 Years', 'ORD006'),
('INS007', '2026-09-19', 5600.00, 'EMP027', '8 Years', 'ORD007'),
('INS008', '2026-09-21', 18000.00, 'EMP028', '20 Years', 'ORD008'),
('INS009', '2026-09-23', 25000.00, 'EMP029', '25 Years', 'ORD009'),
('INS010', '2026-09-26', 4200.00, 'EMP030', '5 Years', 'ORD010');