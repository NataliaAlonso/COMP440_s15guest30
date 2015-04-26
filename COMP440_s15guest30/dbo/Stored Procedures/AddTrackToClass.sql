-- =================================================
-- Author:		Alonso, Natalia
-- Create date: April 20, 2015
-- Description:	Procedure that associates a class 
--				with the track
-- =================================================
CREATE PROCEDURE [dbo].[AddTrackToClass] 
	@trackID INT,
	@classID INT
AS
BEGIN TRY

UPDATE class SET trackID = @trackID WHERE classID = @classID

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
