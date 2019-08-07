USE Pruebas;
GO

--CREATE SCHEMA HISTORICOS
CREATE TABLE ORDENES
(
	ID int NOT NULL IDENTITY(1,1)
	, ORDERDATE datetime
	, PURCHASEORDERNUMBER nvarchar(50)
	PRIMARY KEY (ID, ORDERDATE)
)ON EP_FechasOrdenes(ORDERDATE) --FILEGROUP o EsquemaDeParticion
GO 

/*
CREATE NONCLUSTERED INDEX NCI_ClicsSitiosWeb_FechaDeClic
ON dbo.ClicsSitiosWeb(FechaDeClic)
on EP_FechasWeb(FechaDeClic )
go


use AdventureWorks
GO

CREATE NONCLUSTERED INDEX NCI_soh_OrderDate
ON Sales.SalesOrderHeader(OrderDate)
on EP_FechasWeb(OrderDate )
go

*/