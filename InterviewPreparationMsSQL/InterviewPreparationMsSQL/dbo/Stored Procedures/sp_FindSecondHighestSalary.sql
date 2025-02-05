CREATE PROC sp_FindSecondHighestSalary    
AS    
BEGIN    
  
  
/* Find SecondHighest Salary Without TOP or LIMIT */  
  
SELECT MAX(SalaryAmount) AS SecondHighestSalary   
FROM Salary  
WHERE SalaryAmount < (SELECT MAX(SalaryAmount) FROM Salary);  
    
    
/*---------- Two approach ----------- */    
    
Select * from     
Employees E     
INNER JOIN Departments D     
ON E.DepartmentID = D.DepartmentID    
INNER JOIN Position P     
ON E.PositionID = P.PositionID    
INNER JOIN Salary S    
ON E.SalaryID = S.SalaryID    
WHERE s.SalaryAmount = (SELECT DISTINCT TOP 1 SalaryAmount    
FROM Salary WHERE SalaryAmount < (SELECT MAX(SalaryAmount) FROM Salary)       
ORDER BY SalaryAmount DESC );     
    
/*------------------------------  */  
    
WITH SalaryRank AS (    
    SELECT     
        e.EmployeeID,    
        e.EmployeeName,    
        d.DepartmentName,    
        s.SalaryAmount,    
        p.PositionName,    
        DENSE_RANK() OVER (ORDER BY s.SalaryAmount DESC) AS SalaryRank    
    FROM Employees e    
    JOIN Salary s ON e.SalaryID = s.SalaryID    
    JOIN Departments d ON e.DepartmentID = d.DepartmentID    
    JOIN Position p ON e.PositionID = p.PositionID    
)    
SELECT EmployeeID, EmployeeName, DepartmentName, SalaryAmount, PositionName    
FROM SalaryRank    
WHERE SalaryRank = 2;    
    
END;