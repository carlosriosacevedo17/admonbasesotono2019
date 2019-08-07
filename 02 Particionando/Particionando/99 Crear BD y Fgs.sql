USE [master]
GO

/****** Object:  Database [Pruebas]    Script Date: 10/01/2011 16:21:47 ******/
CREATE DATABASE [Pruebas] ON  PRIMARY 
( NAME = N'Pruebas', FILENAME = N'E:\DATA\Pruebas.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%), 
 FILEGROUP [Grupo1] 
( NAME = N'Archivo1', FILENAME = N'H:\Archivo1.ndf' , SIZE = 52096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%), 
 FILEGROUP [Grupo2] 
( NAME = N'Archivo2', FILENAME = N'I:\Archivo2.ndf' , SIZE = 512KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%), 
 FILEGROUP [Grupo3] 
( NAME = N'Archivo3', FILENAME = N'J:\Archivo3.ndf' , SIZE = 83520KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%), 
 FILEGROUP [Grupo4] 
( NAME = N'archivo4', FILENAME = N'H:\archivo4.ndf' , SIZE = 69120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%), 
 FILEGROUP [Grupo5] 
( NAME = N'archivo5', FILENAME = N'I:\archivo5.ndf' , SIZE = 32256KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Pruebas_log', FILENAME = N'E:\DATA\Pruebas_log.LDF' , SIZE = 512KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Pruebas] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pruebas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Pruebas] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Pruebas] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Pruebas] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Pruebas] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Pruebas] SET ARITHABORT OFF 
GO

ALTER DATABASE [Pruebas] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Pruebas] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Pruebas] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Pruebas] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Pruebas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Pruebas] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Pruebas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Pruebas] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Pruebas] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Pruebas] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Pruebas] SET  ENABLE_BROKER 
GO

ALTER DATABASE [Pruebas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Pruebas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Pruebas] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Pruebas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Pruebas] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Pruebas] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Pruebas] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Pruebas] SET  READ_WRITE 
GO

ALTER DATABASE [Pruebas] SET RECOVERY FULL 
GO

ALTER DATABASE [Pruebas] SET  MULTI_USER 
GO

ALTER DATABASE [Pruebas] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Pruebas] SET DB_CHAINING OFF 
GO

