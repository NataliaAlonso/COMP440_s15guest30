CREATE TABLE [dbo].[roles] (
    [roleID]   INT          IDENTITY (1, 1) NOT NULL,
    [roleName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED ([roleID] ASC)
);

