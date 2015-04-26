
-- ================================================
-- Author:		Alonso,Natalia
-- Create date: April 20, 2015
-- Description:	Procedure that retrieves all the 
-- rooms per track - with respective presentations
-- ================================================
CREATE PROCEDURE [dbo].[SelectRoomPresTrack]
AS
BEGIN TRY
	SELECT track.topic,class.title,classroom.roomNumber FROM class
	INNER JOIN track ON class.trackID=track.trackID
	INNER JOIN schedule ON class.classID=schedule.classID
	INNER JOIN classroom ON schedule.classroomID=classroom.classroomID
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

