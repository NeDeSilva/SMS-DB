-- Insert into Person
INSERT INTO Person (Gov_ID, First_Name, Last_Name, DOB, Age, Email, Phone_Num, address) VALUES
('GID-001', 'John', 'Doe', '1985-03-12', 41, 'john.doe@example.com', '+15550101', '101 Main St, Springfield'),
('GID-002', 'Jane', 'Smith', '1990-07-22', 36, 'jane.smith@example.com', '+15550102', '202 Oak Ave, Riverdale'),
('GID-003', 'Robert', 'Johnson', '1982-11-05', 43, 'robert.j@example.com', '+15550103', '303 Pine Rd, Fairview'),
('GID-004', 'Emily', 'Davis', '1993-01-30', 33, 'emily.d@example.com', '+15550104', '404 Maple St, Madison'),
('GID-005', 'Michael', 'Brown', '1988-09-18', 38, 'michael.b@example.com', '+15550105', '505 Cedar Ave, Clinton'),
('GID-006', 'Sarah', 'Wilson', '1995-04-12', 31, 'sarah.w@example.com', '+15550106', '606 Elm St, Georgetown'),
('GID-007', 'David', 'Taylor', '1980-06-25', 46, 'david.t@example.com', '+15550107', '707 Walnut Rd, Franklin'),
('GID-008', 'Jessica', 'Anderson', '1992-12-08', 33, 'jessica.a@example.com', '+15550108', '808 Spruce St, Bristol'),
('GID-009', 'James', 'Thomas', '1987-02-14', 39, 'james.t@example.com', '+15550109', '909 Ash Ln, Salem'),
('GID-010', 'Amanda', 'Jackson', '1994-08-19', 32, 'amanda.j@example.com', '+15550110', '110 Birch Dr, Ashland'),
('GID-011', 'Daniel', 'White', '1983-05-01', 43, 'daniel.w@example.com', '+15550111', '111 Cherry St, Oxford'),
('GID-012', 'Laura', 'Harris', '1991-10-15', 34, 'laura.h@example.com', '+15550112', '222 Poplar Rd, Arlington');


-- Insert into Customer
INSERT INTO Customer (Cust_ID, Gov_ID, Status) VALUES
('CUST-101', 'GID-001', 'Active'),
('CUST-102', 'GID-002', 'Active'),
('CUST-103', 'GID-003', 'Inactive'),
('CUST-104', 'GID-004', 'Active'),
('CUST-105', 'GID-005', 'Active'),
('CUST-106', 'GID-006', 'Pending'),
('CUST-107', 'GID-007', 'Active'),
('CUST-108', 'GID-008', 'Active'),
('CUST-109', 'GID-009', 'Inactive'),
('CUST-110', 'GID-010', 'Active');

-- Insert into Employee
INSERT INTO Employee (Emp_ID, Gov_ID, Position, Salary, Date_Hired, Status) VALUES
('EMP-201', 'GID-003', 'Senior Engineer', 85000.00, '2018-03-15', 'Active'),
('EMP-202', 'GID-004', 'Field Technician', 52000.00, '2020-06-01', 'Active'),
('EMP-203', 'GID-005', 'Fleet Driver', 45000.00, '2019-11-10', 'Active'),
('EMP-204', 'GID-007', 'Electrical Engineer', 80000.00, '2017-01-20', 'Active'),
('EMP-205', 'GID-008', 'Solar Technician', 50000.00, '2021-04-12', 'Active'),
('EMP-206', 'GID-009', 'Lead Logistics Driver', 48000.00, '2018-08-05', 'Active'),
('EMP-207', 'GID-010', 'Junior Engineer', 65000.00, '2022-02-01', 'Active'),
('EMP-208', 'GID-011', 'Maintenance Tech', 49000.00, '2021-09-15', 'Active'),
('EMP-209', 'GID-012', 'Operations Manager', 92000.00, '2016-05-10', 'Active'),
('EMP-210', 'GID-002', 'Support Specialist', 42000.00, '2023-01-15', 'Active');

-- Insert into Supplier
INSERT INTO Supplier (Sup_ID, Gov_ID, Status, company_name, company_Registration_No) VALUES
('SUP-301', 'GID-001', 'Active', 'SunPower Solutions Inc.', 'REG-9901'),
('SUP-302', 'GID-002', 'Active', 'EcoEnergy Components', 'REG-9902'),
('SUP-303', 'GID-003', 'Active', 'Apex Solar Cells Ltd.', 'REG-9903'),
('SUP-304', 'GID-004', 'Inactive', 'GreenTech Inverters', 'REG-9904'),
('SUP-305', 'GID-005', 'Active', 'Photonics Battery Corp', 'REG-9905'),
('SUP-306', 'GID-006', 'Active', 'Helios Wiring & Hardware', 'REG-9906'),
('SUP-307', 'GID-007', 'Active', 'Volt Grid Supplies', 'REG-9907'),
('SUP-308', 'GID-008', 'Pending', 'CleanRay Energy Tech', 'REG-9908'),
('SUP-309', 'GID-009', 'Active', 'Solace Panel Manufacturing', 'REG-9909'),
('SUP-310', 'GID-010', 'Active', 'Terra Power Systems', 'REG-9910');

-- Insert into Driver
INSERT INTO Driver (License_No, Driver_ID, Gov_ID) VALUES
('DL-881021', 'DRV-401', 'GID-005'),
('DL-881022', 'DRV-402', 'GID-009'),
('DL-881023', 'DRV-403', 'GID-001'),
('DL-881024', 'DRV-404', 'GID-002'),
('DL-881025', 'DRV-405', 'GID-003'),
('DL-881026', 'DRV-406', 'GID-004'),
('DL-881027', 'DRV-407', 'GID-006'),
('DL-881028', 'DRV-408', 'GID-007'),
('DL-881029', 'DRV-409', 'GID-008'),
('DL-881030', 'DRV-410', 'GID-010');

-- Insert into Engineer
INSERT INTO Engineer (Specialization, Eng_ID, Gov_ID) VALUES
('Photovoltaic System Design', 'ENG-501', 'GID-003'),
('Grid Integration & Microgrids', 'ENG-502', 'GID-007'),
('Structural & Thermal Analysis', 'ENG-503', 'GID-010'),
('Electrical Distribution', 'ENG-504', 'GID-001'),
('Renewable Energy Systems', 'ENG-505', 'GID-002'),
('Battery Storage Technology', 'ENG-506', 'GID-004'),
('High Voltage Architecture', 'ENG-507', 'GID-005'),
('Power Conversion & Electronics', 'ENG-508', 'GID-006'),
('Embedded Controls', 'ENG-509', 'GID-008'),
('Solar Farm Infrastructure', 'ENG-510', 'GID-009');

-- Insert into Technician
INSERT INTO Technician (Tech_ID, Gov_ID) VALUES
('TECH-601', 'GID-004'),
('TECH-602', 'GID-008'),
('TECH-603', 'GID-011'),
('TECH-604', 'GID-001'),
('TECH-605', 'GID-002'),
('TECH-606', 'GID-003'),
('TECH-607', 'GID-005'),
('TECH-608', 'GID-006'),
('TECH-609', 'GID-007'),
('TECH-610', 'GID-009');

-- Insert into Vehicle
INSERT INTO Vehicle (Reg_No, Model, Capacity, Status) VALUES
('REG-1001', 'Ford Transit Cargo Van', 1500, 'Active'),
('REG-1002', 'Mercedes Sprinter 2500', 1800, 'Active'),
('REG-1003', 'Isuzu NPR Box Truck', 3500, 'Active'),
('REG-1004', 'Chevrolet Silverado 2500HD', 1200, 'Maintenance'),
('REG-1005', 'RAM ProMaster 3500', 2000, 'Active'),
('REG-1006', 'Ford F-150 Lightning', 900, 'Active'),
('REG-1007', 'GMC Sierra 3500HD', 3000, 'Active'),
('REG-1008', 'Nissan NV3500 Cargo', 1600, 'Active'),
('REG-1009', 'Hino 195 Flatbed Truck', 4000, 'Active'),
('REG-1010', 'Ford E-350 Cutaway', 2500, 'Inactive');

-- Insert into Dependant
INSERT INTO Dependant (Emp_ID, Name, relation, Age, Gender) VALUES
('EMP-201', 'Mark Johnson', 'Son', 12, 'Male'),
('EMP-201', 'Sarah Johnson', 'Daughter', 9, 'Female'),
('EMP-202', 'Lucas Davis', 'Son', 5, 'Male'),
('EMP-203', 'Clara Brown', 'Spouse', 36, 'Female'),
('EMP-204', 'Ethan Taylor', 'Son', 15, 'Male'),
('EMP-204', 'Chloe Taylor', 'Daughter', 11, 'Female'),
('EMP-206', 'Oliver Thomas', 'Son', 8, 'Male'),
('EMP-207', 'Sophia Jackson', 'Daughter', 3, 'Female'),
('EMP-209', 'Henry Harris', 'Spouse', 38, 'Male'),
('EMP-209', 'Grace Harris', 'Daughter', 6, 'Female');

-- Insert into Solar_System
INSERT INTO Solar_System (System_ID, Power, Capacity, Name, Type, Price) VALUES
('SYS-701', 5000, 10.50, 'HomeBasic 5kW Kit', 'Grid-Tied', 7500.00),
('SYS-702', 8000, 15.00, 'EcoPro 8kW System', 'Hybrid', 12000.00),
('SYS-703', 12000, 24.00, 'CommercialMax 12kW', 'Grid-Tied', 18500.00),
('SYS-704', 3000, 5.00, 'CabinOffGrid 3kW', 'Off-Grid', 5200.00),
('SYS-705', 10000, 20.00, 'ResiPower 10kW Plus', 'Hybrid', 15000.00),
('SYS-706', 15000, 30.00, 'Industrial Grid-15', 'Grid-Tied', 24000.00),
('SYS-707', 6000, 12.00, 'SunSaver 6kW System', 'Grid-Tied', 8900.00),
('SYS-708', 9000, 18.00, 'FlexiPower 9kW', 'Hybrid', 13800.00),
('SYS-709', 20000, 40.00, 'MegaGrid 20kW Pro', 'Grid-Tied', 32000.00),
('SYS-710', 4000, 8.00, 'CompactEco 4kW', 'Off-Grid', 6400.00);

-- Insert into Activity
INSERT INTO Activity (System_ID, wattage, flag, date, time) VALUES
('SYS-701', 4800, 'Normal Production Peak', '2026-09-01', '12:30:00'),
('SYS-701', 1200, 'Cloud Cover Drop', '2026-09-01', '14:15:00'),
('SYS-702', 7900, 'Optimal Efficiency', '2026-09-02', '13:00:00'),
('SYS-703', 11500, 'High Demand Peak', '2026-09-02', '12:45:00'),
('SYS-704', 2900, 'Battery Charging Full', '2026-09-03', '11:20:00'),
('SYS-705', 9800, 'Normal Operations', '2026-09-03', '13:10:00'),
('SYS-706', 14200, 'Grid Feed In Active', '2026-09-04', '12:00:00'),
('SYS-707', 5900, 'Normal Peak', '2026-09-04', '13:30:00'),
('SYS-708', 8700, 'Normal Operations', '2026-09-05', '12:15:00'),
('SYS-709', 19500, 'Industrial Load Active', '2026-09-05', '14:00:00');

-- Insert into Installment
INSERT INTO Installment (Ins_ID, Amount, Due_Date, Status, System_ID) VALUES
('INS-801', 1250.00, '2026-10-15', 'Pending', 'SYS-701'),
('INS-802', 1250.00, '2026-11-15', 'Pending', 'SYS-701'),
('INS-803', 2000.00, '2026-09-01', 'Paid', 'SYS-702'),
('INS-804', 2000.00, '2026-10-01', 'Pending', 'SYS-702'),
('INS-805', 3083.33, '2026-08-15', 'Paid', 'SYS-703'),
('INS-806', 3083.33, '2026-09-15', 'Paid', 'SYS-703'),
('INS-807', 866.67, '2026-10-01', 'Pending', 'SYS-704'),
('INS-808', 2500.00, '2026-09-10', 'Overdue', 'SYS-705'),
('INS-809', 4000.00, '2026-10-20', 'Pending', 'SYS-706'),
('INS-810', 1483.33, '2026-09-30', 'Paid', 'SYS-707');