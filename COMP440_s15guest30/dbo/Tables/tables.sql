CREATE TABLE [dbo].[tables] (
    [tableID]  INT          IDENTITY (1, 1) NOT NULL,
    [venueID]  SMALLINT     NOT NULL,
    [location] VARCHAR (50) NOT NULL,
    [vendorID] INT          NOT NULL,
    CONSTRAINT [PK_table] PRIMARY KEY CLUSTERED ([tableID] ASC),
    CONSTRAINT [tables_vendorID_FK] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[vendor] ([vendorID]),
    CONSTRAINT [tables_venueID_FK] FOREIGN KEY ([venueID]) REFERENCES [dbo].[venue] ([venueID])
);

