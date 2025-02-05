CREATE TABLE [dbo].[Departments] (
    [DepartmentID]   INT           IDENTITY (1, 1) NOT NULL,
    [DepartmentName] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([DepartmentID] ASC)
);

