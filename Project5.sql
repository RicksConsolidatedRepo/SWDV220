/***project 5 Rick Edgemon 10/23/2018***/
--1. Document each SQL statement – what it is supposed to do. Stored procs & execute statements.
--2 If structure changes are needed to the tables from the previous project, include the code at the beginning of your script & document it/them.
USE disk_inventory
GO
--3 Create Insert, Update, and Delete stored procedures for the artist table 
--Create SPiIsertArtist
CREATE PROC SPInsertArtist -- the variables
       @ArtistFname  varchar(20),
       @ArtistLname varchar(20),
	   @ArtistGroupName varchar(20),
       @ArtistTypeID   int
       
AS
IF NOT EXISTS(SELECT * FROM Artist WHERE Fname = @ArtistFname) --check to make sure it doesn't already exist
    INSERT Artist
    VALUES (@ArtistFname, @ArtistLname, @ArtistGroupName, @ArtistTypeID);
ELSE 
    THROW 50001, 'ArtistID already used!', 1; --Error message
GO
--Insert
USE disk_inventory
GO
BEGIN TRY
    EXEC SPInsertArtist 
        'Han','Solo', 'Star Wars', 2; --the new artist
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'; --Error message
END CATCH;
GO
--DROP PROC SPInsertArtist

--Create SPUpdateArtist
CREATE PROC SPUpdateArtist -- the variables
       @ArtistID int,
       @ArtistFname  varchar(20),
       @ArtistLname varchar(20),
	   @ArtistGroupName varchar(20),
       @ArtistTypeID   int
AS
IF EXISTS(SELECT * FROM Artist WHERE ArtistID = @ArtistID) --check to make sure it does exist
    UPDATE Artist
    SET  Fname = @ArtistFname, Lname = @ArtistLname, 
	GroupName = @ArtistGroupName, Artist_typeID = @ArtistTypeID
	WHERE @ArtistID = ArtistID
ELSE 
    THROW 50001, 'Artist Fname doesnt exist', 1; --Error message
GO
--Update
USE disk_inventory
GO
BEGIN TRY
    EXEC SPUpdateArtist 
        44, 'Lando','Calrissian', 'Star Wars' , 2; --the updated artist
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'; --Error message
END CATCH;
GO
--DROP PROC SPUpdateArtist

--Create SPDeleteArtist
CREATE PROC SPDeleteArtist
       @ArtistID    int       
AS
IF EXISTS(SELECT * FROM Artist WHERE ArtistID = @ArtistID)
    DELETE FROM Artist    
	WHERE @ArtistID = ArtistID
ELSE 
    THROW 50001, 'ArtistID doesnt exist', 1; --Error message
GO
--delete
USE disk_inventory
GO
BEGIN TRY
    EXEC SPDeleteArtist 43 --delete this artist
END TRY
BEGIN CATCH
    PRINT 'An error occurred.' --Error message
END CATCH;
GO
--DROP PROC SPDeleteArtist

--4 Create Insert, Update, and Delete stored procedures for the borrower table.
--Create SPInsertBorrower
CREATE PROC SPInsertBorrower       
       @BorrowerFname  varchar(20),
       @BorrowerLname varchar(20),
       @BorrowerPhone int       
AS
IF NOT EXISTS(SELECT * FROM Borrower WHERE Borrower_phone_number = @BorrowerPhone) --check to make sure it doesn't already exist
    INSERT Borrower
    VALUES (@BorrowerFname, @BorrowerLname, @BorrowerPhone);
ELSE 
    THROW 50001, 'BorrowerID already used!', 1; --Error message
GO
--Insert
USE disk_inventory
GO
BEGIN TRY
    EXEC SPInsertBorrower
         'Justin','Case','123456789'; --the new borrower
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'; --Error message
END CATCH;
GO
DROP PROC SPInsertBorrower

--Create SPUpdateBorrower
CREATE PROC SPUpdateBorrower
	   @BorrowerID int,
       @BorrowerFname  varchar(225),
       @BorrowerLname varchar(225),
       @BorrowerPhone varchar(225)       
AS
IF EXISTS(SELECT * FROM Borrower WHERE BorrowerID = @BorrowerID)
    UPDATE Borrower
    SET  Fname = @BorrowerFname,
         Lname = @BorrowerLname, 
	     Borrower_phone_number = @BorrowerPhone
	WHERE @BorrowerID = BorrowerID
ELSE 
    THROW 50001, 'Borrower Phone # doesnt exist', 1; --Error message
GO
--Update
USE disk_inventory
GO
BEGIN TRY
    EXEC SPUpdateBorrower
         21, 'Throwme', 'Abone', '123456789'; --the updated borrower
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'; --Error message
END CATCH;
GO
--DROP PROC SPUpdateBorrower

--Create SPDeleteBorrower
CREATE PROC SPDeleteBorrower
       @BorrowerID    int       
AS
IF EXISTS(SELECT * FROM Borrower WHERE BorrowerID = @BorrowerID)
    DELETE FROM Borrower    
	WHERE @BorrowerID = BorrowerID
ELSE 
    THROW 50001, 'Borrower doesnt exist', 1; --Error message
GO
--delete
USE disk_inventory
GO
BEGIN TRY
    EXEC SPDeleteBorrower 21 --the borrower to be deleted
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'; --Error message
END CATCH;
GO
--DROP PROC SPDeleteBorrower

--5. Create Insert, Update, and Delete stored procedures for the disk table.
--Create SPInsertDisc
CREATE PROC SPInsertDisc 
       @InventoryName varchar(50),
	   @Release_date smalldatetime, 
	   @Inventory_type int,
	   @Status_code int,
	   @GenreID int       
AS
IF NOT EXISTS(SELECT * FROM Inventory WHERE InventoryName = @InventoryName) --check to make sure it doesn't already exist
    INSERT Inventory
    VALUES (@InventoryName, @Release_date, @Inventory_type, @Status_code, @GenreID);
ELSE 
    THROW 50001, 'Inventory ID already used!', 1; --Error message
GO
--Insert
USE disk_inventory
GO
BEGIN TRY
    EXEC SPInsertDisc
         'Heavy Metal', '1981', 1, 2, 4; --the new disc
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'
END CATCH;
GO
--DROP PROC SPInsertDisc

--Create SPUpdateDisc
CREATE PROC SPUpdateDisc
	   @InventoryID  int,
       @InventoryName varchar(50),
	   @Release_date smalldatetime        
AS
IF EXISTS(SELECT * FROM Inventory WHERE InventoryID = @InventoryID)
    UPDATE Inventory
    SET  InventoryName = @InventoryName,
		 Release_date = @Release_date
	WHERE @InventoryID = InventoryID
ELSE 
    THROW 50001, 'Inventory ID doesnt exist', 1; --Error message
GO
--Update
USE disk_inventory
GO
BEGIN TRY
    EXEC SPUpdateDisc
         125, 'Heavy Metal 2000', '2000'; --the updated disc
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'; --Error message
END CATCH;
GO
--DROP PROC SPUpdateDisc

--Create SPDeleteDisc
CREATE PROC SPDeleteDisc
       @InventoryID    int       
AS
IF EXISTS(SELECT * FROM Inventory WHERE InventoryID = @InventoryID)
    DELETE FROM Inventory   
	WHERE @InventoryID = InventoryID
ELSE 
    THROW 50001, 'Disc doesnt exist', 1; --Error message
GO
--delete
USE disk_inventory
GO
BEGIN TRY
    EXEC SPDeleteDisc 125 --the disc to delete
END TRY
BEGIN CATCH
    PRINT 'An error occurred.'; --Error message
END CATCH;
GO
--DROP PROC SPDeleteDisc

/**********************************************************************************************************
6. Script file includes all required ‘GO’ statements.

7. Store procedures contain error processing (try-catch).

8. Script file includes all execute statements needed to invoke each stored procedure.
***********************************************************************************************************/