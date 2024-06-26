CREATE TABLE USERS
(
    IdUsers SERIAL NOT NULL PRIMARY KEY,
	Email VARCHAR(255) NOT NULL,
	Name VARCHAR(255) NOT NULL,
	Forename VARCHAR(255) NOT NULL,
    Cookie VARCHAR(255),
	Role INT NOT NULL
);

CREATE TABLE MODEL
(
    IdModel SERIAL NOT NULL PRIMARY KEY,
	Path VARCHAR(255) NOT NULL,
	Date DATE NOT NULL,
	IdUsers SERIAL FOREIGN KEY REFERENCES USER(IdUsers)
);