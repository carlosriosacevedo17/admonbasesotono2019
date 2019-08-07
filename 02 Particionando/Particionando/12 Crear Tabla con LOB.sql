/* 
	CREAR UNA TABLA CON LOB's
	LOB = Large OBject
	
		CLOB = Character LOB
				nText	-- se sigue utilizando por compatibilidad
				Text	-- se sigue utilizando por compatibilidad			
				Varchar(max)	
				nVarchar(max)
		BLOB = Binary LOB
				Imgage -- se sigue utilizando por compatibilidad
				nVarBinary(MAX)
				VarBinaryu(MAX)
	TODOS SOPORTAN UN DATO DE HASTA 2GB
*/

USE AdventureWorks;
GO

CREATE TABLE dbo.Usuarios
(
	IdUsuario bigint NOT NULL IDENTITY(1,1)
	, Nombre varchar(255) NOT NULL
	, Contratacion datetime NOT NULL
	, Curriculo nvarchar(max) NULL 
	, Foto varbinary(max) NULL
)
ON [PRIMARY] 
TEXTIMAGE_ON fg3;

