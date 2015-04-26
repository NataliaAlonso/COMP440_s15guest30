CREATE TABLE [dbo].[track] (
    [trackID] INT  IDENTITY (1, 1) NOT NULL,
    [topic]   TEXT NOT NULL,
    CONSTRAINT [PK_track] PRIMARY KEY CLUSTERED ([trackID] ASC)
);

