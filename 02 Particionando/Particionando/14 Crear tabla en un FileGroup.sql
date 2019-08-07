use Pruebas
GO

CREATE TABLE Contactos(
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[NameStyle] BIT NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] nvarchar(25) NOT NULL,
	[MiddleName] nvarchar(25) NULL,
	[LastName] nvarchar(25) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[EmailPromotion] [int] NOT NULL,
	[Phone] nvarchar(25) NULL,
	[PasswordHash] [varchar](128) NOT NULL,
	[PasswordSalt] [varchar](10) NOT NULL,
	[AdditionalContactInfo] [xml] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
) ON FgCatalogo

GO

