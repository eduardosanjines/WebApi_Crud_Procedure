-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.DeleteGuid 
	-- Add the parameters for the stored procedure here
	@Guid uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE dbo.Alumnos
	FROM dbo.Alumnos
	WHERE Guid = @Guid
END
GO
