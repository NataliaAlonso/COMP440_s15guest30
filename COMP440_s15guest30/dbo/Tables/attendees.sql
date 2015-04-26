CREATE TABLE [dbo].[attendees] (
    [personID] INT NOT NULL,
    [eventID]  INT NOT NULL,
    [roleID]   INT NOT NULL,
    CONSTRAINT [attendees_eventID_fk] FOREIGN KEY ([eventID]) REFERENCES [dbo].[event] ([eventID]),
    CONSTRAINT [attendees_personID_fk] FOREIGN KEY ([personID]) REFERENCES [dbo].[person] ([personID]),
    CONSTRAINT [attendees_roleID_fk] FOREIGN KEY ([roleID]) REFERENCES [dbo].[roles] ([roleID])
);

