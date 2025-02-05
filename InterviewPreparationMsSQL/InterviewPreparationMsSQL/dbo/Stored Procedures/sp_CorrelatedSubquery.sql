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