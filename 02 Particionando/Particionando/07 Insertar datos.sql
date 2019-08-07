USE Pruebas;
GO

insert into ordenes(orderdate,PURCHASEORDERNUMBER)
values('01/01/2010','JUAN'),
('01/01/2009','PEDRO'),
('01/01/2008','MANUEL');

insert into alumnos(nombre,paterno,fecha_ingreso)
values('Leopoldo','Muñoz','2013-08-01'),
      ('Carlos','Rios','1998-08-01'),
	  ('Alberto','Flores','2009-08-01');
	  go
--exec sp_spaceused 'dbo.ordenes'

use AdventureWorks2014
go
select year(orderdate) from
sales.SalesOrderHeader
group by year(orderdate)
go


INSERT dbo.Ordenes (orderdate,
 PURCHASEORDERNUMBER)
SELECT  OrderDate, PURCHASEORDERNUMBER
FROM 
AdventureWorks2014.Sales.SalesOrderHeader
--WHERE soh.OrderDate >= '01/01/2004' --AND '12/31/2003'

/*
--VALUES 
--		  ('About Page', '01/05/2007', GETDATE())
--		, ('Home Page', '10/02/2006', GETDATE())
--		, ('Sales Page', '5/09/2008', GETDATE())
--		, ('Sales Page', '3/04/2000', GETDATE())
GO
		
SELECT [IdClic]
      ,[PaginaWeb]
      ,[FechaDeClic]
      ,[UltimaModificacion]
  FROM [Prueba].[dbo].[ClicsSitiosWeb]
GO

SELECT $PARTITION.FP_ClicsWeb('03/03/10') AS Particion
*/