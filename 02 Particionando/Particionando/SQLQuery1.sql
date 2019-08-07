CREATE DATABASE [AdventureWorks] ON PRIMARY
( NAME = N'AdventureWorks_Data', FILENAME = N'C:\AdventureWorks_Data.mdf' ),
FILEGROUP [OrderHistoryGroup]
( NAME = N'OrdHist1', FILENAME = N'D:\OrdHist1.ndf' ),
( NAME = N'OrdHist2', FILENAME = N'D:\OrdHist2.ndf' )
LOG ON
( NAME = N'AdventureWorks_log', FILENAME = N'E:\AdventureWorks_log.ldf')



USE [master]
GO
ALTER DATABASE [AdventureWorks] ADD FILEGROUP [FG1]
GO
ALTER DATABASE [AdventureWorks] ADD 
FILE ( NAME = N'h1', 
FILENAME = N'C:\h1.ndf' , SIZE = 3072KB , FILEGROWTH = 1024KB ) TO FILEGROUP [FG1]
GO
ALTER DATABASE [AdventureWorks] 
ADD FILE ( NAME = N'H2', 
FILENAME = N'E:\H2.ndf' , SIZE = 3072KB , FILEGROWTH = 1024KB ) TO FILEGROUP [FG1]
GO
