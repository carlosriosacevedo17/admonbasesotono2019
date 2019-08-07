USE master;
GO

ALTER DATABASE Pruebas ADD 
FILE ( NAME = 'Archivo1', 
FILENAME = N'D:\devices\E\Archivo1.ndf', SIZE = 5MB) 
TO FILEGROUP grupo1

ALTER DATABASE Pruebas ADD 
FILE ( NAME = 'Archivo2', 
FILENAME = N'D:\devices\F\Archivo2.ndf', SIZE = 5MB) 
TO FILEGROUP grupo2
GO

ALTER DATABASE Pruebas ADD 
FILE ( NAME = 'Archivo3', 
FILENAME = N'D:\devices\G\Archivo3.ndf', SIZE = 5MB)  
TO FILEGROUP grupo3
GO

ALTER DATABASE Pruebas ADD 
FILE ( NAME = 'archivo4', 
FILENAME = N'D:\devices\H\Archivo4.ndf', SIZE = 5MB)  
TO FILEGROUP grupo4
GO

ALTER DATABASE Pruebas ADD 
FILE ( NAME = 'archivo5', 
FILENAME = N'D:\devices\I\Archivo5.ndf', SIZE = 5MB)  
TO FILEGROUP grupo5
GO


