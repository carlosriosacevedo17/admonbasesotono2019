USE [master]
GO
EXEC master.dbo.sp_addumpdevice  @devtype = N'disk',
 @logicalname = N'fullpruebas',
  @physicalname = N'D:\devices\full\fullpruebas'
GO

USE [master]
GO
EXEC master.dbo.sp_addumpdevice  @devtype = N'disk',
 @logicalname = N'logspruebas',
  @physicalname = N'D:\devices\logs\logspruebas'
GO

