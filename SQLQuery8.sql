/********************************************************
*project      programmer     Date
*--------------------------------------------------------
*  Project2 Rick Edgemon 10/5/2018
*This script creates the database for disk_inventory
*********************************************************/
use master;
--drop db if it exists
IF DB_ID('disk_inventory') IS NOT NULL
 DROP DATABASE disk_inventory;
GO

CREATE DATABASE disk_inventory;
GO

use disk_inventory;

--create the tables for the database
CREATE TABLE Inventory_types
(
    Inventory_type int NOT NULL identity primary key
   ,Description char(20) NOT NULL
);

CREATE TABLE StatusCode
(
    StatusCode int NOT NULL identity primary key
   ,Description varchar(20) NOT NULL
   ,InventoryID int NOT NULL
);

CREATE TABLE Genre
(
    GenreID int NOT NULL identity primary key
   ,Description char(20) NOT NULL
);

CREATE TABLE Inventory
(
    InventoryID int NOT NULL identity primary key
   ,InventoryName varchar(20) NOT NULL unique
   ,Release_date smalldatetime NOT NULL
   ,Inventory_type int NOT NULL references Inventory_types(Inventory_type)
   ,Status_code int NOT NULL references StatusCode(StatusCode)
   ,GenreID int NOT NULL references Genre(GenreID)
);

CREATE TABLE Artist_type
(
    Artist_typeID int NOT NULL identity primary key
   ,Description char(20) NOT NULL
);

CREATE TABLE Artist
(
    ArtistID int NOT NULL identity primary key
   ,Fname varchar(20) NOT NULL
   ,Lname varchar(20) NOT NULL
   ,GroupName varchar(20) NOT NULL
   ,Artist_typeID int NOT NULL references Artist_type(Artist_typeID)
);

CREATE TABLE InventoryHasArtist
(
    InventoryID int NOT NULL references Inventory(InventoryID)
   ,ArtistID int NOT NULL references Artist(ArtistID)
   ,PRIMARY KEY (InventoryID, ArtistID)
);

CREATE TABLE Borrower
(
    BorrowerID int NOT NULL identity primary key
   ,Fname varchar(20) NOT NULL
   ,Lname varchar(20) NOT NULL
   ,Borrower_phone_number int NOT NULL
);

CREATE TABLE DiscHasBorrower
(
    BorrowerID int NOT NULL references Borrower(BorrowerID)
   ,Borrowed_date smalldatetime NOT NULL
   ,Returned_date smalldatetime NOT NULL
   ,InventoryID int NOT NULL references Inventory(InventoryID)
   ,PRIMARY KEY (InventoryID, BorrowerID, Borrowed_date)
);