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