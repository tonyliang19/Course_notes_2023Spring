CREATE TABLE Instructor (email VARCHAR(255) PRIMARY KEY, name VARCHAR(255) NOT NULL);

CREATE TABLE Institution (name VARCHAR(255), country VARCHAR(255), PRIMARY KEY(name, country)) ;

CREATE TABLE Attended (email VARCHAR(255), school_name VARCHAR(255), country VARCHAR(255), degree VARCHAR(9), PRIMARY KEY(email, school_name, country), FOREIGN KEY(email) REFERENCES Instructor ON DELETE CASCADE, FOREIGN KEY(school_name, country) REFERENCES Institution); 