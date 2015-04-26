CREATE TABLE [dbo].[event] (
    [eventID]   INT      IDENTITY (1, 1) NOT NULL,
    [venueID]   SMALLINT NOT NULL,
    [name]      TEXT     NOT NULL,
    [startDate] DATETIME NOT NULL,
    [endDate]   DATETIME NOT NULL,
    CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED ([eventID] ASC),
    CONSTRAINT [event_venueID_FK] FOREIGN KEY ([venueID]) REFERENCES [dbo].[venue] ([venueID])
);

