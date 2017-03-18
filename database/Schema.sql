﻿SET search_path = SHOESTORE;

DROP SCHEMA IF EXISTS SHOESTORE CASCADE;
CREATE SCHEMA SHOESTORE;

CREATE DOMAIN SHOESTORE.sexType AS CHAR
	CHECK (VALUE IN ('M', 'F','U'));

CREATE TABLE IF NOT EXISTS shoestore.Client ( 

	CID SERIAL NOT NULL,
	Fname VARCHAR(30) NOT NULL,
	Lname VARCHAR(30) NOT NULL,
	Email VARCHAR(30) UNIQUE NOT NULL,
	password_digest VARCHAR NOT NULL,
	Gender shoestore.sexType DEFAULT 'U',
	Dob DATE,
	PRIMARY KEY (CID)
);

CREATE TABLE IF NOT EXISTS Category ( 

	CatID SERIAL NOT NULL,
	nom VARCHAR(15) NOT NULL,
	isMen BOOLEAN DEFAULT TRUE,
	Image VARCHAR(50) NOT NULL,
	PRIMARY KEY (CatID)
);

CREATE TABLE IF NOT EXISTS Shoes ( 

	SID SERIAL NOT NULL,
	Name VARCHAR(30) NOT NULL,
	Price INTEGER NOT NULL,
	Image VARCHAR(50) NOT NULL,
	CatID INTEGER NOT NULL,
	PRIMARY KEY (SID),
	FOREIGN KEY (CatID) REFERENCES Category(CatID)
);



CREATE TABLE IF NOT EXISTS Sizes ( 

	SizeID SERIAL NOT NULL,
	Size NUMERIC(2,1) NOT NULL,
	PRIMARY KEY (SizeID)
);

CREATE TABLE IF NOT EXISTS Colors ( 

	ColorID SERIAL NOT NULL,
	Color VARCHAR(10) NOT NULL,
	PRIMARY KEY (ColorID)
);

CREATE TABLE IF NOT EXISTS AvailableSizes ( 

	SizeID SERIAL NOT NULL,
	SID SERIAL NOT NULL,
	Quantity INTEGER NOT NULL,
	PRIMARY KEY (SizeID,SID),
	FOREIGN KEY (SID) REFERENCES Shoes(SID), 
	FOREIGN KEY (SizeID) REFERENCES Sizes(SizeID)
);

CREATE TABLE IF NOT EXISTS AvailableColors ( 
	
	ColorID SERIAL NOT NULL,
	SID SERIAL NOT NULL,
	PRIMARY KEY (ColorID,SID),
	FOREIGN KEY (SID) REFERENCES Shoes(SID), 
	FOREIGN KEY (ColorID) REFERENCES Colors(ColorID)
);

CREATE TABLE IF NOT EXISTS Orders ( 

	OID SERIAL ,
	Hour TIME NOT NULL,
	SID INTEGER NOT NULL,
	CID INTEGER NOT NULL,
	quantity INTEGER NOT NULL,
	colorid INTEGER NOT NULL,
	size integer not null,
	Dor DATE NOT NULL,
	PRIMARY KEY (OID),
	FOREIGN KEY (CID) REFERENCES Client(CID), 
	FOREIGN KEY (SID) REFERENCES Shoes(SID),
	FOREIGN KEY (colorid) REFERENCES Colors(colorID),
	FOREIGN KEY (size) REFERENCES Sizes(sizeID)
	
);

