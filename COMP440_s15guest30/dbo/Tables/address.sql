CREATE TABLE [dbo].[address] (
    [addressID] INT          IDENTITY (1, 1) NOT NULL,
    [address]   VARCHAR (50) NOT NULL,
    [city]      VARCHAR (50) NOT NULL,
    [state]     VARCHAR (50) NOT NULL,
    [zip]       VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED ([addressID] ASC)
);

