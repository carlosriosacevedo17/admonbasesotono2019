USE Pruebas;
GO

alter database Pruebas add filegroup Grupo6
go

alter database Pruebas add
file(name='Archivo6',
filename=N'C:\K\Archivo6.ndf',
size=20MB
) to filegroup Grupo6
go

ALTER PARTITION SCHEME EP_FechasOrdenes
NEXT USED Grupo6;
GO

ALTER PARTITION FUNCTION FP_FechasOrdenes()
SPLIT RANGE ('01/01/2016');
GO

/*
000000000000000
INSERT dbo.ClicsSitiosWeb
VALUES ('Sales Page', '3/4/2005', GETDATE())
go

INSERT dbo.ClicsSitiosWeb
SELECT PaginaWeb, UltimaModificacion, GETDATE()
FROM dbo.ClicsSitiosWeb


*/


USE Pruebas
GO

ALTER PARTITION FUNCTION FP_FechasOrdenes()
SPLIT RANGE ('01/01/2014');
GO
ALTER PARTITION FUNCTION FP_FechasOrdenes()
MERGE RANGE ('01/01/2007');
GO
ALTER PARTITION FUNCTION FP_FechasOrdenes()
MERGE RANGE ('01/01/2008');
GO
ALTER PARTITION FUNCTION FP_FechasOrdenes()
MERGE RANGE ('01/01/2009');
GO
ALTER PARTITION FUNCTION FP_FechasOrdenes()
MERGE RANGE ('01/01/2012');
GO
ALTER PARTITION FUNCTION FP_FechasOrdenes()
MERGE RANGE ('01/08/2012');
GO

USE Pruebas
GO

ALTER PARTITION SCHEME EP_FechasOrdenes
NEXT USED Grupo2;
GO

ALTER PARTITION FUNCTION FP_FechasOrdenes()
SPLIT RANGE ('01/01/2017');
GO

ALTER PARTITION SCHEME EP_FechasOrdenes
NEXT USED Grupo2;
GO

ALTER PARTITION FUNCTION FP_FechasOrdenes()
SPLIT RANGE ('01/08/2008');
GO

ALTER PARTITION SCHEME EP_FechasOrdenes
NEXT USED Grupo3;
GO

ALTER PARTITION FUNCTION FP_FechasOrdenes()
SPLIT RANGE ('01/08/2009');
GO

ALTER PARTITION SCHEME EP_FechasOrdenes
NEXT USED Grupo4;
GO

ALTER PARTITION FUNCTION FP_FechasOrdenes()
SPLIT RANGE ('01/08/2012');
GO