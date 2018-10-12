/***Project 3 Rick Edgemon 10/12/2018***/
--c. insert 20 rows into disk table
USE [disk_inventory]
GO

INSERT INTO [dbo].[Inventory_types]
      ([Description])
	  VALUES ('CD')

INSERT INTO [dbo].[Inventory_types]
      ([Description])
	  VALUES ('DVD')

INSERT INTO [dbo].[Inventory_types]
      ([Description])
	  VALUES ('Blu')

INSERT INTO [dbo].[StatusCode]
           ([Description], [InventoryID])
     VALUES ('Borrowed', 1)

INSERT INTO [dbo].[StatusCode]
           ([Description], [InventoryID])
     VALUES ('Returned', 2)

INSERT INTO [dbo].[StatusCode]
           ([Description], [InventoryID])
     VALUES ('In Stock', 3)

INSERT INTO [dbo].[Genre]
           ([Description])
     VALUES
           ('Comedy Movie')

INSERT INTO [dbo].[Genre]
           ([Description])
     VALUES
           ('Action Movie')

INSERT INTO [dbo].[Genre]
           ([Description])
     VALUES
           ('Drama Movie')

INSERT INTO [dbo].[Genre]
           ([Description])
     VALUES
           ('Rock CD')

INSERT INTO [dbo].[Genre]
           ([Description])
     VALUES
           ('Pop CD')

INSERT INTO [dbo].[Genre]
           ([Description])
     VALUES
           ('Classical CD')

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Dr No', '1960', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
     VALUES
     ('From Russia W Love', '1963', 2, 2, 2)
 
 INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Goldfinger', '1964', 2, 2, 2)

 INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Thunderball', '1965', 2, 2, 2)
 
 INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('You Only Live Twice', '1967', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Secret Service', '1969', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Diamonds Are Forever', '1971', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Live and Let Die', '1973', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Golden Gun', '1974', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('The Spy Who Loved Me', '1977', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Moonraker', '1979', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('For Your Eyes Only', '1981', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Octopussy', '1983', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Never Say Never', '1983', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('A View to a Kill', '1985', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Living Daylights', '1967', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Licence To Kill', '1989', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('GoldenEye', '1995', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('Tomorrow Never Dies', '1997', 2, 2, 2)

INSERT INTO [dbo].[Inventory]
    ([InventoryName], [Release_date], [Inventory_type], [Status_code], [GenreID])
    VALUES
    ('World Is Not Enough', '1999', 2, 2, 2)