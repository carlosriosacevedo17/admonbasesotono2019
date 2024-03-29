USE [master]
GO
EXEC master.dbo.sp_addumpdevice  
@devtype = N'disk', @logicalname = N'FULL', 
@physicalname = N'D:\devices\full\FULL'
GO
USE [master]
GO
EXEC master.dbo.sp_addumpdevice  
@devtype = N'disk', @logicalname = N'LOGS', 
@physicalname = N'D:\devices\logs\LOGS'
GO
BACKUP DATABASE [PRUEBAS] TO  
[FULL] WITH NOFORMAT, NOINIT,  
NAME = N'PRUEBAS-Full Database Backup'
GO
BACKUP LOG [PRUEBAS] TO  [LOGS] WITH NOFORMAT, 
NOINIT,  NAME = N'PRUEBAS-LOG1Database Backup'
GO
