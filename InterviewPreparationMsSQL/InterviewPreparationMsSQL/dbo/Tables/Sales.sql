CREATE TABLE [dbo].[Sales] (
    [SaleID]      INT             NULL,
    [ProductName] NVARCHAR (50)   NULL,
    [SaleAmount]  DECIMAL (10, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Sales_ProductName]
    ON [dbo].[Sales]([ProductName] ASC);


GO
CREATE CLUSTERED INDEX [IX_Sales_SaleID]
    ON [dbo].[Sales]([SaleID] ASC);

