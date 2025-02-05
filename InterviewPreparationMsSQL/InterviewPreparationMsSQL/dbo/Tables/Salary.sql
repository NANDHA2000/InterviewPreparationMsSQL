CREATE TABLE [dbo].[Salary] (
    [SalaryID]     INT             IDENTITY (1, 1) NOT NULL,
    [SalaryAmount] DECIMAL (18, 2) NOT NULL,
    [Currency]     VARCHAR (10)    NOT NULL,
    PRIMARY KEY CLUSTERED ([SalaryID] ASC)
);

