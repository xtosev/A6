ALTER TABLE Vozilo
ADD PocCena FLOAT,
CHECK (PocCena >=0);
 
CREATE TABLE Vlasnici (
	VlasniciID INT NOT NULL,
	Ime VARCHAR(20) NOT NULL,
	Prezime VARCHAR(20) NOT NULL,
	Telefon VARCHAR(20) NOT NULL,
	Adresa VARCHAR(50) NOT NULL,
	PrviVlasnik BIT NOT NULL,
	PRIMARY KEY(VlasniciID)
);
 
ALTER TABLE Vozilo
ADD VlasnikID INT,
FOREIGN KEY(VlasnikID) REFERENCES Vlasnici(VlasniciID);