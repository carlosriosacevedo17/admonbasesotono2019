USE Pruebas
GO


INSERT Contactos
SELECT [NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailAddress]
      ,[EmailPromotion]
      ,[Phone]
      ,[PasswordHash]
      ,[PasswordSalt]
      ,[AdditionalContactInfo]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks].[Person].[Contact]
GO

