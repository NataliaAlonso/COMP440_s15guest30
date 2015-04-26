CREATE TABLE [dbo].[person] (
    [personID]  INT          IDENTITY (1, 1) NOT NULL,
    [firstName] VARCHAR (50) NOT NULL,
    [lastName]  VARCHAR (50) NOT NULL,
    [email]     VARCHAR (50) NOT NULL,
    [addressID] INT          NOT NULL,
    CONSTRAINT [PK_person] PRIMARY KEY CLUSTERED ([personID] ASC),
    CONSTRAINT [person_addressID_FK] FOREIGN KEY ([addressID]) REFERENCES [dbo].[address] ([addressID])
);

