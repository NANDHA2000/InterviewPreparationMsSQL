CREATE PROCEDURE sp_CommonTableExpressionCTE    
AS    
BEGIN    
    
WITH EmployeeDepartmentCTE AS (    
    SELECT     
        e.EmployeeID,     
        e.EmployeeName,     
        e.DepartmentID,     
        d.DepartmentName    
    FROM Employees e    
    LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID    
)    
SELECT * FROM EmployeeDepartmentCTE;    
    
END