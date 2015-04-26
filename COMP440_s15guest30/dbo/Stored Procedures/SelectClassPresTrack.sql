-- =================================================
-- Author:		Alonso,Natalia
-- Create date: April 20, 2015
-- Description:	Procedure that retrieves all the 
--				classes and their presenter(s) per 
--				track
-- =================================================
CREATE PROCEDURE [dbo].[SelectClassPresTrack] 
AS
BEGIN TRY
	SELECT topic,title,firstName,lastName FROM class
	INNER JOIN track ON class.trackID=track.trackID
	INNER JOIN presenter ON presenter.classID=class.classID
	INNER JOIN person ON presenter.personID=person.personID
	ORDER BY track.trackID ASC
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

