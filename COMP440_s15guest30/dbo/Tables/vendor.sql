CREATE TABLE [dbo].[vendor] (
    [vendorID]    INT          IDENTITY (1, 1) NOT NULL,
    [companyName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_vendor] PRIMARY KEY CLUSTERED ([vendorID] ASC)
);

