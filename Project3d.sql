/***Project 3 Rick Edgemon 10/12/2018***/
--d. insert 20 rows into borrower table delete 1 row
USE [disk_inventory]
GO

INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Le', 'Chiffe', 1234567890)

INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Ernst', 'Blofeld', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Francisco', 'Scaramanga', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Brad', 'Whitaker', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Alec', 'Trevelyan', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Auric', 'Goldfinger', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Emilio', 'Largo', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Max', 'Zorin', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Julius', 'No', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Raoul', 'Silva', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Hugo', 'Drax', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Rosa', 'Klebb', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Mr', 'Oddjob', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('The', 'Jaws', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Pussy', 'Galore', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Tatiana', 'Romanova', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Xenia', 'Onatopp', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Tiffany', 'Case', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('General', 'Orlov', 1234567890)


INSERT INTO [dbo].[Borrower]
           ([Fname], [Lname], [Borrower_phone_number])
     VALUES
           ('Baron', 'Samedi', 1234567890)


DELETE FROM [dbo].[Borrower]
     WHERE Borrower.Fname = 'Mr'
