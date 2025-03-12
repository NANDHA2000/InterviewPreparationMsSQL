/* sp_DeleteDuplicateSales */  
  
/***********************************************************  
**--Practicing Standard Procedure v1.0--  
** Name:   sp_DeleteDuplicateSales  
** Author: Nandhakumar A
** Description:  Basic code for Delete the Duplicate Records there is no common values
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
create proc sp_DeleteDuplicateSales    
AS    
BEGIN    
with T as    
(    
    select * , row_number() over (partition by SaleID order by SaleID) as rank    
    from Sales    
)    
    
delete    
from T    
where rank > 1    
    
END