-- retrives all data form active customers

SELECT
	c.Cust_ID,
	p.First_Name,
	p.Last_Name,
	p.Email,
	p.Phone_Num,
FROM Customer c
JOIN Person p ON c.Gov_ID = p.Person_ID
WHERE c.Status = 'Active';

-- retrieves solar systems currently has overdue installment payments

SELECT
	s.System_ID,
	S.Name AS System_Name,
	i.Ins_ID,
	i.Amount,
	i.Due_Date,
	i.Status AS Installment_Status
FROM Solar_System s
JOIN Installment i ON s.System_ID = i.System_ID
WHERE i.Status = 'Overdue';


-- geeral statistics of employees
SELECT 
    Position,
    COUNT(Emp_ID) AS Total_Employees,
    AVG(Salary) AS Average_Salary,
    SUM(Salary) AS Total_Payroll
FROM Employee
WHERE Status = 'Active'
GROUP BY Position
ORDER BY Total_Payroll DESC;

-- list details of specilize Engineers

SELECT 
    eng.Eng_ID,
    p.First_Name,
    p.Last_Name,
    eng.Specialization,
    emp.Date_Hired,
    emp.Salary
FROM Engineer eng
JOIN Employee emp ON eng.Gov_ID = emp.Gov_ID
JOIN Person p ON eng.Gov_ID = p.Gov_ID;

-- Peak power output recorded for each solar system

SELECT 
    s.System_ID,
    s.Name AS System_Name,
    s.Power AS Rated_Capacity_Watts,
    MAX(a.wattage) AS Peak_Wattage_Recorded,
    a.date AS Log_Date
FROM Solar_System s
JOIN Activity a ON s.System_ID = a.System_ID
GROUP BY s.System_ID, s.Name, s.Power, a.date
ORDER BY Peak_Wattage_Recorded DESC;

-- list employees with more than one position and high average salary

SELECT 
    Position,
    COUNT(Emp_ID) AS Total_Employees,
    AVG(Salary) AS Average_Salary,
    SUM(Salary) AS Total_Payroll
FROM Employee
WHERE Status = 'Active'
GROUP BY Position
HAVING COUNT(Emp_ID) > 1 
   AND AVG(Salary) > 50000.00
ORDER BY Average_Salary DESC;

-- list systems with multiple installments and high billing

SELECT 
    s.System_ID,
    s.Name AS System_Name,
    s.Price AS System_Price,
    COUNT(i.Ins_ID) AS Total_Installments,
    SUM(i.Amount) AS Total_Billed_Amount
FROM Solar_System s
JOIN Installment i ON s.System_ID = i.System_ID
GROUP BY s.System_ID, s.Name, s.Price
HAVING COUNT(i.Ins_ID) > 1 
   AND SUM(i.Amount) > 10000.00
ORDER BY Total_Billed_Amount DESC;


-- list employees with 2 or more dependents

SELECT 
    e.Emp_ID,
    p.First_Name,
    p.Last_Name,
    e.Position,
    COUNT(d.Name) AS Dependant_Count,
    AVG(d.Age) AS Avg_Dependant_Age
FROM Employee e
JOIN Person p ON e.Gov_ID = p.Gov_ID
JOIN Dependant d ON e.Emp_ID = d.Emp_ID
GROUP BY e.Emp_ID, p.First_Name, p.Last_Name, e.Position
HAVING COUNT(d.Name) >= 2
ORDER BY Dependant_Count DESC, Avg_Dependant_Age ASC;

-- list systems by type with high average power output

SELECT 
    s.Type AS System_Type,
    COUNT(DISTINCT s.System_ID) AS Total_Systems,
    MAX(a.wattage) AS Max_Observed_Wattage,
    AVG(a.wattage) AS Avg_Recorded_Wattage
FROM Solar_System s
JOIN Activity a ON s.System_ID = a.System_ID
GROUP BY s.Type
HAVING AVG(a.wattage) > 5000
ORDER BY Avg_Recorded_Wattage DESC;