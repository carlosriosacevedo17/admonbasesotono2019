USE Pruebas;
GO


CREATE TABLE Ordenes_Copia
(
	id int not null identity(1,1),
	orderdate datetime not null,
	purchaseordernumber nvarchar(50),
		PRIMARY KEY (id, orderdate)
)ON EP_FechasOrdenes(orderdate) --FILEGROUP o EsquemaDeParticion
GO 


SELECT *
FROM Ordenes_Copia


ALTER TABLE Ordenes SWITCH PARTITION 1
TO Ordenes_Copia PARTITION 2




SELECT TOP 1 * FROM ORDENES 
SELECT TOP 1 * FROM Ordenes_Copia


/*

SELECT WebSiteHitID, WebSitePage, HitDate
from Sales.WebSiteHits
go

SELECT WebSiteHitID, WebSitePage, HitDate
from Sales.WebSiteHitsHistory
go
*/