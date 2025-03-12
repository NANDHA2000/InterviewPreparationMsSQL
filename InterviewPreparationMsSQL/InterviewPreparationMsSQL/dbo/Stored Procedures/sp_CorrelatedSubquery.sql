/* sp_CorrelatedSubquery */    
    
/***********************************************************    
**--Practicing Standard Procedure v1.0--    
** Name:   sp_CorrelatedSubquery    
** Author: Nandhakumar A  
** Description:  Basic code for Correlated Subquery  
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
CREATE PROC sp_CorrelatedSubquery      
AS      
BEGIN      
SELECT SaleID, ProductName, SaleAmount      
FROM Sales AS S1      
WHERE SaleAmount = (      
    SELECT MAX(SaleAmount)      
    FROM Sales AS S2      
    WHERE S1.ProductName = S2.ProductName      
)      
ORDER BY SaleAmount DESC;      
      
END