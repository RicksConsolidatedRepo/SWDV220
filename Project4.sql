/***Project 4 Rick Edgemon 10/19/2018***/
--1. Document each SQL statement – what it is supposed to do. Include a modification log.
--2 list needed changes first
--add solo album
INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Street Legal', '1989', 1, 2, 4)
--add solo album
INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Traveling Wilburys', '1995', 1, 2, 4)
--add group album
INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Use Your Illusion', '1991', 1, 2, 4)
--add group album
INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('The Black Album', '1991', 1, 2, 4)
--add artists to albums
INSERT INTO [dbo].[InventoryHasArtist]
           ([InventoryID], [ArtistID])
    VALUES
    (121, 29)

INSERT INTO [dbo].[InventoryHasArtist]
           ([InventoryID], [ArtistID])
    VALUES
    (122, 29)

INSERT INTO [dbo].[InventoryHasArtist]
           ([InventoryID], [ArtistID])
    VALUES
    (123, 31)

INSERT INTO [dbo].[InventoryHasArtist]
           ([InventoryID], [ArtistID])
    VALUES
    (124, 30)

USE disk_inventory
GO
--3. show disks with indivedual artist
SELECT InventoryName, CAST(Release_date AS DATE) AS ReleaseDate, Fname AS FirstName, Lname AS LastName --
FROM Inventory, Artist, InventoryHasArtist
WHERE Inventory.InventoryID = InventoryHasArtist.InventoryID --where Inventory Id matches
AND InventoryHasArtist.ArtistID = Artist.ArtistID --and matching artists
AND Artist.Artist_typeID = 5 --disks in your database and any associated Individual artists only
ORDER BY FirstName, LastName, InventoryName
GO

--DROP VIEW View_Individual_Artists
--4. show artist names and not group names
CREATE VIEW View_Individual_Artists AS --Create  view
SELECT Fname AS FirstName, Lname AS LastName 
FROM Artist 
WHERE Artist.Artist_typeID = 5 --where is a solo artist
GO

SELECT * FROM View_Individual_Artists --select created view


--5. show disks with group artists only
SELECT InventoryName, CAST(Release_date AS DATE) AS ReleaseDate, GroupName AS GroupName
FROM Inventory, InventoryhasArtist, Artist
WHERE Inventory.InventoryID = InventoryHasArtist.InventoryID --where Inventory Id matches
AND InventoryHasArtist.ArtistID = Artist.ArtistID --and matching artists
AND NOT EXISTS(SELECT * FROM View_Individual_Artists --But does not exist in Previous View
WHERE Artist.Artist_typeID = 3) -- where is anything but a solo artist
GO

--6. show which disks have been borrowed and who borrowed them
SELECT Fname AS FirstName, Lname AS LastName, InventoryName 
FROM Inventory, DiscHasBorrower hb, Borrower b, StatusCode
WHERE Inventory.InventoryID = hb.InventoryID --With Matching InventoryID
AND hb.BorrowerID = b.BorrowerID --With Matching BorrwerID
AND StatusCode.StatusCode = 1 -- borrowed
ORDER BY LastName
GO

--7. show the number of times each disk has been borrowe
SELECT Inventory.InventoryID AS DiskID, InventoryName AS DiskName, COUNT(DiscHasBorrower.InventoryID)AS TimesBorrowed
FROM Inventory, DiscHasBorrower
WHERE Inventory.InventoryID = DiscHasBorrower.InventoryID --With Matching InventoryID
GROUP BY Inventory.InventoryID, InventoryName

--8 Show the disks outstanding or on-loan and who has each disk. Sort by disk name
SELECT Inventory.InventoryName, Borrowed_date as Borrowed
, Returned_date as Returned, Borrower.LName as LastName
FROM DiscHasBorrower 
JOIN Borrower
    ON DiscHasBorrower.BorrowerID = Borrower.BorrowerID
	JOIN Inventory
    ON DiscHasBorrower.InventoryID = Inventory.InventoryID
WHERE Returned_date IS NULL
ORDER BY InventoryName;