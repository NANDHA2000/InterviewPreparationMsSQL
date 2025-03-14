﻿/* sp_CommonTableExpressionCTE */    
    
/***********************************************************    
**--Practicing Standard Procedure v1.0--    
** Name:   sp_CommonTableExpressionCTE    
** Author: Nandhakumar A  
** Description:  Basic code for CTE  
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