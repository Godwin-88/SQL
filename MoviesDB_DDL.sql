/* MOVIES DATABASE CREATION SCRIPT */

CREATE DATABASE Movies_DB;
GO

USE Movies_DB;
GO

Create Table Director
(
	DirectorID INT IDENTITY(1,1) NOT NULL, 
	Director_FirstName VARCHAR(15),
	Director_LastName VARCHAR(25) NOT NULL,
	CONSTRAINT Director_PK PRIMARY KEY (DirectorID)
);
GO

Create Table Star
(
	StarID INT IDENTITY(1,1) NOT NULL, 
	Star_FirstName VARCHAR(15),
	Star_LastName VARCHAR(25) NOT NULL,
	CONSTRAINT Star_PK PRIMARY KEY (StarID)
);
GO

Create Table Genre
(
	GenreID INT Identity(1,1) NOT NULL, 
	Genre VARCHAR(15) NOT NULL,
	CONSTRAINT Genre_PK PRIMARY KEY (GenreID)	
);
GO

CREATE TABLE Producer
(
	ProducerID INT IDENTITY(1,1) NOT NULL,
	Producer_FirstName VARCHAR(15), 
	Producer_LastName VARCHAR(35) NOT NULL
	CONSTRAINT Producer_PK PRIMARY KEY (ProducerID)
);
GO

Create Table Movies(
	MovieID INT Identity(1,1) NOT NULL,
	Title VARCHAR(35) NOT NULL,
	DirectorID INT NOT NULL,
	StarID INT NOT NULL,
	GenreID INT NOT NULL,
	ProducerID INT NOT NULL,
	Rating NUMERIC(3,1) NOT NULL,
	CONSTRAINT Movies_PK PRIMARY KEY (MovieID)
);
GO

ALTER TABLE Movies
ADD CONSTRAINT Movies_FK1 
FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID);
GO

ALTER TABLE Movies
ADD CONSTRAINT Movies_FK2 
FOREIGN KEY (StarID) REFERENCES Star(StarID);
GO 

ALTER TABLE Movies
ADD CONSTRAINT Movies_FK3 
FOREIGN KEY (GenreID) REFERENCES Genre(GenreID);
GO

ALTER TABLE Movies
ADD CONSTRAINT Movies_FK4 
FOREIGN KEY (ProducerID) REFERENCES Producer(ProducerID);
GO 

