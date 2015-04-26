CREATE TABLE [dbo].[class] (
    [classID]         INT           IDENTITY (1, 1) NOT NULL,
    [title]           VARCHAR (100) NOT NULL,
    [duration]        INT           NOT NULL,
    [difficultyLevel] VARCHAR (50)  NOT NULL,
    [trackID]         INT           NOT NULL,
    CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED ([classID] ASC),
    CONSTRAINT [class_trackID_FK] FOREIGN KEY ([trackID]) REFERENCES [dbo].[track] ([trackID])
);

