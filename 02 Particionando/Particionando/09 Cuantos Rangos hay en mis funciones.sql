USE Pruebas;
GO

SELECT f.name nombre, fanout, boundary_value_on_right, boundary_id, value
FROM sys.partition_range_values r
inner join sys.partition_functions f
on r.function_id = f.function_id;
GO


select * from sys.partition_functions
select * from sys.partition_range_values
