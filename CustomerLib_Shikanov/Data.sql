USE CustomerLib_Shikanov
GO

INSERT 
	INTO
		Customer (FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
	VALUES
		('','Mcguire','11515132048','sociis.nAtoque@outlook.org', 500),
		('Tyrone','Drake','1423478','dolor.sit@google.org', 1337),
		('Cedric','Parrish','16738565284','da_sda@gmail.com', 15),
		('Karyn','Morrow','12066335117','in.sod-ales.elit@google.ca', 250),
		('Malik','Estrada','17274613088','euismod@google.ca', 100)

INSERT
	INTO 
		Address (CustomerId, AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country)
	VALUES
		(1, 'Ipsum St.', '6', 'Shipping', 'Las-Vegas', '89049', 'Nevada', 'United States'),
		(2, 'Dolor St.', '6', 'Billing', 'Las-Vegas', '89049', 'Nevada', 'Canada')

INSERT
	INTO
		Notes (CustomerId, Note)
	VALUES
		(1, 'note'),
		(2, 'note two')

SELECT * FROM Customer
SELECT * FROM Address
SELECT * FROM Notes