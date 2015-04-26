CREATE TABLE [dbo].[venue] (
    [venueID]   SMALLINT IDENTITY (1, 1) NOT NULL,
    [name]      TEXT     NOT NULL,
    [addressID] INT      NOT NULL,
    [occupancy] INT      NOT NULL,
    CONSTRAINT [PK_venue] PRIMARY KEY CLUSTERED ([venueID] ASC),
    CONSTRAINT [venue_addressID_FK] FOREIGN KEY ([addressID]) REFERENCES [dbo].[address] ([addressID])
);

