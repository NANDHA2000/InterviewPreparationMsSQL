/* sp_GetAllJoins */  
  
/***********************************************************  
**--Practicing Standard Procedure v1.0--  
** Name:   sp_GetAllJoins  
** Author: Nandhakumar A
** Description:  Basic code for All Joins
**   
**   
** Inputs:  
**   
**   
**   
** Outputs:  
**   

** Revision History  
**            
** Date   Author     Version  Changes  
** --------------------------------------------  
** 05/02/2025 Nandhakumar A   1.0   Initial  
**===========================================  
  
  
**********************************************************/  
CREATE   PROCEDURE sp_GetAllJoins    
AS    
BEGIN    
    /*-- INNER JOIN: Returns matching records from both tables  */  
    PRINT 'INNER JOIN';    
    SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName    
    FROM Employees e    
    INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;    
    
    /*-- LEFT JOIN: Returns all records from the left table and matching records from the right table */   
    PRINT 'LEFT JOIN';    
    SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName    
    FROM Employees e    
    LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;    
    
    /*-- RIGHT JOIN: Returns all records from the right table and matching records from the left table  */  
    PRINT 'RIGHT JOIN';    
    SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName    
    FROM Employees e    
    RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;    
    
    /*-- FULL OUTER JOIN: Returns all records from both tables with NULLs where there is no match  */  
    PRINT 'FULL OUTER JOIN';    
    SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName    
    FROM Employees e    
    FULL OUTER JOIN Departments d ON e.DepartmentID = d.DepartmentID;    
    
    /* -- CROSS JOIN: Returns the Cartesian product of both tables  */  
    PRINT 'CROSS JOIN';    
    SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName    
    FROM Employees e    
    CROSS JOIN Departments d;    
END;