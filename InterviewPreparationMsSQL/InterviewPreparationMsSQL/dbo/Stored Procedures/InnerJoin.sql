CREATE PROC InnerJoin
AS
BEGIN
WITH MaxSales AS (
    SELECT ProductName, MAX(SaleAmount) AS MaxAmount
    FROM Sales
    GROUP BY ProductName
)
SELECT S.SaleID, S.ProductName, S.SaleAmount
FROM Sales AS S
INNER JOIN MaxSales AS M
ON S.ProductName = M.ProductName AND S.SaleAmount = M.MaxAmount;

END