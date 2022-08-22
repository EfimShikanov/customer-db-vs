CREATE TABLE [dbo].[Address]
(
	AddressId INT IDENTITY(1,1) PRIMARY KEY,
	CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customer(CustomerId),
	AddressLine VARCHAR(100) CHECK (LEN(AddressLine) > 0) NOT NULL,
	AddressLine2 VARCHAR(100),
	AddressType VARCHAR(50) CHECK (AddressType IN ('Shipping', 'Billing')),
	City VARCHAR(50) CHECK (LEN(City) > 0) NOT NULL,
	PostalCode VARCHAR(6) CHECK (LEN(PostalCode) > 0) NOT NULL,
	State VARCHAR(20) CHECK (LEN(State) > 0) NOT NULL,
	Country VARCHAR(50) CHECK (Country IN ('United States', 'Canada'))
)
