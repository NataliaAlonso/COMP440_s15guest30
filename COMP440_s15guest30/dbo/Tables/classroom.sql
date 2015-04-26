CREATE TABLE [dbo].[classroom] (
    [classroomID] INT          IDENTITY (1, 1) NOT NULL,
    [roomNumber]  VARCHAR (50) NOT NULL,
    [venueID]     SMALLINT     NOT NULL,
    CONSTRAINT [PK_classroom] PRIMARY KEY CLUSTERED ([classroomID] ASC),
    CONSTRAINT [classroom_venueID_FK] FOREIGN KEY ([venueID]) REFERENCES [dbo].[venue] ([venueID])
);

