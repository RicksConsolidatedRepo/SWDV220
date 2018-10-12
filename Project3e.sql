/***Project 3 Rick Edgemon 10/12/2018***/
--e. insert 20 rows into artist table
USE [disk_inventory]

GO

INSERT INTO [dbo].[Artist_type]
           ([Description])
     VALUES
           ('Comedy Movie')

INSERT INTO [dbo].[Artist_type]
           ([Description])
     VALUES
           ('Action Movie')

INSERT INTO [dbo].[Artist_type]
           ([Description])
     VALUES
           ('Rock Music')

INSERT INTO [dbo].[Artist_type]
           ([Description])
     VALUES
           ('Pop music')


INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Luke', 'Skywalker', 'Star Wars', 2)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('James', 'Bond', '007', 2)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('John', 'Bon Jovi', 'Bon Jovi', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Bruce', 'Springstien', 'E Street', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Paul', 'McCartney', 'Wings', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Jimi', 'Hendrix', 'The Experience', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Roger', 'Waters', 'Pink Floyd', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Angus', 'Young', 'AC/DC', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Bob', 'Dylan', 'Wilburies', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('James', 'Hetfield', 'Metallica', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Axl', 'Rose', 'Guns n Roses', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Steven', 'Tyler', 'Aerosmith', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Stevie', 'Knicks', 'Fleetwood Mac', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Roger', 'Daltry', 'The Who', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Bono', 'Edge', 'U2', 1)    

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Eric', 'Clapton', 'Cream', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('David', 'Bowie', 'From Mars', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Jim', 'Morrison', 'The Doors', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('Ozzy', 'Osborne', 'Black Sabbath', 1)

INSERT INTO [dbo].[Artist]
    ([Fname], [Lname], [GroupName], [Artist_typeID])
    VALUES
    ('The', 'Flea', 'Red Hot Chillipeppers', 1)

