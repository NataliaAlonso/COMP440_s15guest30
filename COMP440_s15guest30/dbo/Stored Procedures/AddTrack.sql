-- =============================================
-- Author:		Alonso, Natalia
-- Create date: April 20, 2015
-- Description:	Procedure that adds a track
-- =============================================
CREATE PROCEDURE [dbo].[AddTrack] 
	-- Add the parameters for the stored procedure here
	@topic text
AS

BEGIN TRY

INSERT INTO track
	(topic)
VALUES
	(@topic)

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