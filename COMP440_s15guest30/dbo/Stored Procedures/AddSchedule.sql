-- =================================================
-- Author:		Alonso,Natalia
-- Create date: April 20, 2015
-- Description:	Procedure that adds a schedule entry
-- =================================================
CREATE PROCEDURE [dbo].[AddSchedule]
	@classID INT,
	@dateTime datetime,
	@classroomID INT

AS

BEGIN TRY

INSERT INTO schedule VALUES (@classID, @dateTime, @classroomID)

END TRY

BEGIN CATCH

DECLARE @ErrorMessage NVARCHAR(4000);
DECLARE @ErrorSeverity INT;
DECLARE @ErrorState INT;

SELECT
	@ErrorMessage = ERROR_MESSAGE(),
	@ErrorSeverity = ERROR_SEVERITY(),
	@ErrorState = ERROR_STATE();

RAISERROR (@ErrorMessage,@ErrorSeverity,@ErrorState);

END CATCH

