CREATE TABLE [dbo].[Employees] (
    [EmployeeID]   INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeName] VARCHAR (100) NOT NULL,
    [DepartmentID] INT           NOT NULL,
    [SalaryID]     INT           NOT NULL,
    [PositionID]   INT           NOT NULL,
    [ManagerID]    INT           NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [FK_Employees_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Departments] ([DepartmentID]),
    CONSTRAINT [FK_Employees_Position] FOREIGN KEY ([PositionID]) REFERENCES [dbo].[Position] ([PositionID]),
    CONSTRAINT [FK_Employees_Salary] FOREIGN KEY ([SalaryID]) REFERENCES [dbo].[Salary] ([SalaryID])
);






GO
