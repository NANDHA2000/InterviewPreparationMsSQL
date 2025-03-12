/* sp_Tranaction */  
  
/***********************************************************  
**--Practicing Standard Procedure v1.0--  
** Name:   sp_Tranaction  
** Author: Nandhakumar A
** Description:  Basic code for Transaction
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
CREATE   PROCEDURE sp_Tranaction    
AS    
BEGIN    
    
BEGIN TRANSACTION;    
    
BEGIN TRY    
  
   /* -- Insert a new employee */   
    INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)    
    VALUES (5, 'Alice Brown', 999);    
    
    /*-- Assign the employee to an existing department  */  
    UPDATE Departments    
    SET DepartmentName = 'HR'     
    WHERE DepartmentID = 102;    
    
    /*-- Commit the transaction if both operations succeed  */  
    COMMIT TRANSACTION;    
END TRY    
BEGIN CATCH    
    /* -- Rollback the transaction if there is an error  */  
    ROLLBACK TRANSACTION;    
    
    /* -- Print the error message  */  
    PRINT ERROR_MESSAGE();    
END CATCH;    
    
END;