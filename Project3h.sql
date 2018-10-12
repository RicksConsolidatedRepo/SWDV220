/***Project 3 Rick Edgemon 10/12/2018***/
--h. create a query to list the discs that are on loan and have not been returned
USE [disk_inventory]

GO
--the discs that have not yet been returned 
SELECT BorrowerID, Borrowed_date, Returned_date, InventoryID
FROM DiscHasBorrower 
WHERE Returned_date IS NULL;


--the borrowed discs names and borrowers
SELECT DiscHasBorrower.BorrowerID, Borrower.FName, DiscHasBorrower.InventoryID, Inventory.InventoryName, Borrowed_date, Returned_date

FROM DiscHasBorrower 
JOIN Borrower
    ON DiscHasBorrower.BorrowerID = Borrower.BorrowerID
	JOIN Inventory
    ON DiscHasBorrower.InventoryID = Inventory.InventoryID
WHERE Returned_date IS NULL;