USE Pruebas;
GO
INSERT Ordenes (Descripcion, FechaOrden, UltimaModificacion)
SELECT  pd.Description, DATEADD(year,4, soh.OrderDate), GETDATE()
FROM 
AdventureWorks.Sales.SalesOrderHeader soh
LEFT OUTER JOIN
AdventureWorks.Sales.SalesOrderDetail sod
ON soh.SalesOrderID = sod.SalesOrderID
JOIN AdventureWorks.Production.Product p
ON sod.ProductID = p.ProductID
JOIN AdventureWorks.Production.ProductModel pm
ON p.ProductModelID = pm.ProductModelID
JOIN AdventureWorks.Production.ProductModelProductDescriptionCulture pmpdc
ON pm.ProductModelID = pmpdc.ProductModelID
JOIN AdventureWorks.Production.ProductDescription pd
ON pmpdc.ProductDescriptionID = pd.ProductDescriptionID
where soh.OrderDate BETWEEN '01/01/2002' AND '12/31/2002'