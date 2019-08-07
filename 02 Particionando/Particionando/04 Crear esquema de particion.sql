use Pruebas
go

CREATE PARTITION SCHEME EP_FechasOrdenes
AS 
PARTITION FP_FechasOrdenes
TO ( grupo1, grupo2, grupo3, grupo4, grupo5 );
go


