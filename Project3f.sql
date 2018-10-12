/***Project 3 Rick Edgemon 10/12/2018***/
--f. insert 20 rows into DiscHasBorrower table

USE [disk_inventory]
GO
--f2 borrower 1 has borrowed 2 different discs
INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (1, '10/10/2018', '10/12/2018', 100)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (1, '10/08/2018', '10/10/2018', 110)
--f3 disc 100 has two different borrowers
INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (2, '10/08/2018', '10/09/2018', 100)
--f8 at least one borrower must have at least 2 rows here 
INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (2, '10/10/2018', '10/12/2018', 115)
--f4 one disk has been borrowed by borrower 3, two different times
INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (3, '10/08/2018', '10/09/2018', 98)
--f6 at least 1 disc must have at least 1 row here
INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (3, '10/10/2018', '10/12/2018', 98)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (4, '10/10/2018', '10/12/2018', 101)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (5, '10/10/2018', '10/12/2018', 102)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (6, '10/10/2018', '10/12/2018', 103)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (7, '10/10/2018', '10/12/2018', 104)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (8, '10/10/2018', '10/12/2018', 105)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (9, '10/10/2018', '10/12/2018', 106)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (10, '10/10/2018', '10/12/2018', 107)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (11, '10/10/2018', '10/12/2018', 108)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (12, '10/10/2018', '10/12/2018', 109)


INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (14, '10/10/2018', '10/12/2018', 111)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (15, '10/10/2018', '10/12/2018', 112)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (16, '10/10/2018', '10/12/2018', 113)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (17, '10/10/2018', '10/12/2018', 114)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (18, '10/08/2018', '10/09/2018', 115)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (19, '10/10/2018', '10/12/2018', 116)

INSERT INTO [dbo].[DiscHasBorrower]
           ([BorrowerID], [Borrowed_date], [Returned_date], [InventoryID])
     VALUES
           (20, '10/10/2018', '10/12/2018', 118)
--f5 one disk does not have a related row disc 120
--f7 at least one borrower does not have a related row here, borrower 13