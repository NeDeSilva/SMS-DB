USE SENNON_ENERGY;
GO

-- SECTION 1: BASIC SELECT QUERIES (5 Queries)

-- Query 1: Retrieve all active customers and their primary contact details
SELECT Cus_ID, Name, Phone_num, Email, Address
FROM Customer
WHERE Status = 'Active';

-- Query 2: Display all solar systems with a price greater than $5,000, sorted by price (highest first)
SELECT Sys_code, Name, Type, Price, Power
FROM Solar_System
WHERE Price > 5000.00
ORDER BY Price DESC;

-- Query 3: List all active employees, including their title/salary and tax ID
SELECT Emp_ID, Name, Status, Tax_ID, Salary
FROM Employee
WHERE Status = 'Active';

-- Query 4: Show high-wattage activity readings flagged as 'Peak' or 'Warning'
SELECT Sys_code, Date, Time, Flag, Wattage
FROM Activity
WHERE Flag IN ('Peak', 'Warning');

-- Query 5: Retrieve all available vehicles for driver assignment
SELECT V_ID, V_type, V_Status
FROM Vehicle
WHERE V_Status = 'Available';

-- SECTION 2: ADVANCED SELECT QUERIES (5 Queries)

-- Query 6: Find total revenue per customer order count for customers who spent more than $10,000 total
SELECT Order_ID, COUNT(Ins_ID) AS Total_Installments, SUM(Price) AS Total_Spent
FROM Installment
GROUP BY Order_ID
HAVING SUM(Price) > 10000.00
ORDER BY Total_Spent DESC;

-- Query 7: Calculate average salary by employee role type for subtype tables with more than 1 employee
SELECT e.Type AS Engineer_Type, COUNT(e.Emp_ID) AS Engineer_Count, AVG(emp.Salary) AS Avg_Salary
FROM Engineer e
JOIN Employee emp ON e.Emp_ID = emp.Emp_ID
GROUP BY e.Type
HAVING COUNT(e.Emp_ID) >= 2
ORDER BY Avg_Salary DESC;

-- Query 8: Identify suppliers providing more than 1 solar system model with an average model price over $5,000
SELECT Sup_ID, COUNT(Sys_code) AS Models_Offered, AVG(Price) AS Avg_System_Price
FROM Solar_System
GROUP BY Sup_ID
HAVING COUNT(Sys_code) > 1 AND AVG(Price) > 5000.00
ORDER BY Avg_System_Price DESC;

-- Query 9: Count total dependents per employee for employees having more than 1 dependent
SELECT Emp_ID, COUNT(Name) AS Total_Dependents
FROM Dependant
GROUP BY Emp_ID
HAVING COUNT(Name) > 1
ORDER BY Total_Dependents DESC;

-- Query 10: Find total recorded activity logs per solar system with more than 1 logged event
SELECT Sys_code, COUNT(*) AS Total_Logs
FROM Activity
GROUP BY Sys_code
HAVING COUNT(*) > 1
ORDER BY Total_Logs DESC, Sys_code ASC;


-- SECTION 3: JOIN QUERIES (3 Queries)

-- Query 11: Join Customer, Order, and Solar_System to view complete order details
SELECT 
    o.Order_ID,
    o.Date AS Order_Date,
    c.Name AS Customer_Name,
    c.Email AS Customer_Email,
    s.Name AS Solar_System_Name,
    s.Type AS System_Type,
    s.Price
FROM `Order` o
JOIN Customer c ON o.Cus_ID = c.Cus_ID
JOIN Solar_System s ON o.Sys_ID = s.Sys_code
ORDER BY o.Date DESC;

-- Query 12: Join Driver, Employee, and Vehicle to map drivers to their assigned vehicles
SELECT 
    e.Emp_ID,
    e.Name AS Driver_Name,
    e.Phone_num,
    d.Dri_Lic,
    v.V_ID,
    v.V_type,
    v.V_Status
FROM Driver d
JOIN Employee e ON d.Emp_ID = e.Emp_ID
JOIN Vehicle v ON d.V_ID = v.V_ID
ORDER BY e.Name ASC;

-- Query 13: Join Installment, Order, Employee, and Solar_System to track installment service assignments
SELECT 
    i.Ins_ID,
    i.Date AS Installment_Date,
    i.Price AS Amount_Paid,
    i.Order_ID,
    e.Name AS Technician_In_Charge,
    s.Name AS Installed_System
FROM Installment i
JOIN `Order` o ON i.Order_ID = o.Order_ID
JOIN Employee e ON i.Emp_ID = e.Emp_ID
JOIN Solar_System s ON o.Sys_ID = s.Sys_code
ORDER BY i.Date ASC;