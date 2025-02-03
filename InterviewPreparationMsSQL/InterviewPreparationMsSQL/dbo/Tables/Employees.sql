CREATE TABLE [dbo].[Employees] (
    [EmployeeID] INT            NOT NULL,
    [Name]       NVARCHAR (100) NULL,
    [Department] NVARCHAR (50)  NULL,
    [Salary]     INT            NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Employees_Department]
    ON [dbo].[Employees]([Department] ASC);

