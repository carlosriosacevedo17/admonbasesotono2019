USE [AdventureWorks]
GO

/****** Object:  Table [HumanResources].[Department]    Script Date: 08/16/2010 12:12:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Department](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[GroupName] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT 
 [PK_Department_DepartmentID] 
 PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)
	WITH 
	(PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) 
		ON fg3
) ON fg2

GO


CREATE TABLE dbo.Ordenes
(
	IdOrden int IDENTITY(1,1) NOT NULL
	, Fecha dateTime NOT NULL
	, IdCliente int NOT NULL
	
) ON fg4

