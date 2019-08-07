USE AdventureWorks;
GO

CREATE VIEW dbo.Contactos
AS
SELECT FirstName, LastName, Title
FROM AdventureWorks.Person.Contact
WHERE Title = 'Sr.'
UNION ALL
SELECT FirstName, LastName, Title
FROM AdventureWorks2008R2.Person.PERSON
WHERE Title = 'Sra.'

SELECT * FROM dbo.Contactos
