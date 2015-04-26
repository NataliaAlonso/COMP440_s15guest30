CREATE TABLE [dbo].[schedule] (
    [scheduleID]  INT      IDENTITY (1, 1) NOT NULL,
    [classID]     INT      NOT NULL,
    [dateTime]    DATETIME NOT NULL,
    [classroomID] INT      NOT NULL,
    CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED ([scheduleID] ASC),
    CONSTRAINT [schedule_classID_FK] FOREIGN KEY ([classID]) REFERENCES [dbo].[class] ([classID]),
    CONSTRAINT [schedule_classroomID_FK] FOREIGN KEY ([classroomID]) REFERENCES [dbo].[classroom] ([classroomID])
);

