CREATE TABLE [dbo].[presenter] (
    [personID] INT NOT NULL,
    [classID]  INT NOT NULL,
    CONSTRAINT [PK_presenter] PRIMARY KEY CLUSTERED ([personID] ASC, [classID] ASC),
    CONSTRAINT [presenter_classID_FK] FOREIGN KEY ([classID]) REFERENCES [dbo].[class] ([classID]),
    CONSTRAINT [presenter_personID_FK] FOREIGN KEY ([personID]) REFERENCES [dbo].[person] ([personID])
);

