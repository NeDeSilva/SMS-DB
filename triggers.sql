USE SENNON_ENERGY;
GO

CREATE TRIGGER trg_PreventDriverIfEngineer
ON Driver
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any newly added Emp_ID already exists in the Engineer table
    IF EXISTS (
        SELECT 1 
        FROM inserted i
        INNER JOIN Engineer e ON i.Emp_ID = e.Emp_ID
    )
    BEGIN
        RAISERROR ('An employee registered as an Engineer cannot be assigned as a Driver.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
GO

-- test
INSERT INTO Driver (Emp_ID, Dri_Lic, V_ID) 
VALUES ('EMP011', 'DL-TEST01', 'V001');