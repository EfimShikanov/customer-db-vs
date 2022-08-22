CREATE TABLE [dbo].[Customer]
(
	CustomerId INT IDENTITY(1,1) PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50) CHECK (LEN(LastName) > 0) NOT NULL,
	PhoneNumber VARCHAR(15) CHECK (PhoneNumber LIKE '[0-9]%') DEFAULT 'Unknown',
	Email VARCHAR(50) CHECK (Email LIKE '%[a-zA-Z0-9._-][@][a-zA-Z0-9]%[.][a-zA-Z0-9]%') DEFAULT 'Unknown',
	TotalPurchasesAmount MONEY DEFAULT NULL
)

