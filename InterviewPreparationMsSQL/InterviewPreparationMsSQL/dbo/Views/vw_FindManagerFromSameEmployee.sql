CREATE VIEW vw_FindManagerFromSameEmployee  
AS  
  
/* Write the SQL query to fetch all the Employees who are also managers */  
  
Select E.EmployeeName As EmployeeName,M.EmployeeName As ManagerName   
from   
Employees E   
INNER JOIN   
Employees M   
ON M.EmployeeID = E.ManagerID;