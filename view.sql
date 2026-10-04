USE SENNON_ENERGY;
GO

-- Create the View
CREATE VIEW vw_CustomerOrderSummary AS
SELECT 
    c.Cus_ID,
    c.Name AS Customer_Name,
    c.Email AS Customer_Email,
    o.Order_ID,
    o.Date AS Order_Date,
    s.Name AS Solar_System_Name,
    s.Price AS System_List_Price,
    COALESCE(SUM(i.Price), 0.00) AS Total_Amount_Paid
FROM Customer c
JOIN [Order] o ON c.Cus_ID = o.Cus_ID
JOIN Solar_System s ON o.Sys_ID = s.Sys_code
LEFT JOIN Installment i ON o.Order_ID = i.Order_ID
GROUP BY 
    c.Cus_ID, 
    c.Name, 
    c.Email, 
    o.Order_ID, 
    o.Date, 
    s.Name, 
    s.Price;
GO

-- Query 1: Retrieve all data directly from the view
SELECT * 
FROM vw_CustomerOrderSummary;