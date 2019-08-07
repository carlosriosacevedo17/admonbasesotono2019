USE [master]
GO

CREATE DATABASE [Pruebas] ON  PRIMARY 
( NAME = N'Pruebas', 
  FILENAME = N'D:\devices\C\Pruebas.mdf' 
  , SIZE = 20MB)
 LOG ON 
( NAME = N'Pruebas_log', 
  FILENAME = N'D:\devices\D\Pruebas_log.ldf' 
  , SIZE =20MB)
GO

