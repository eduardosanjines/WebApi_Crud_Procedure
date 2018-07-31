-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.UpdateAlumno 
	-- Add the parameters for the stored procedure here
	@Guid uniqueidentifier,
	@Nombre nvarchar(50),
	@Apellidos nvarchar(50),
	@Dni nvarchar(50),
	@Edad int,
	@Nacimiento date, 
	@Registro date

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Alumnos
	SET Guid = @Guid, Nombre = @Nombre, Apellidos = @Apellidos, 
	Dni = @Dni, Edad = @Edad, Nacimiento = @Nacimiento, Registro = @Registro
	FROM dbo.Alumnos
	WHERE Guid = @Guid
END
GO
