# SOURCE C:/Users/vlads/Desktop/ProiectLicenta.sql;
DROP DATABASE portGalatiDB;
CREATE DATABASE portGalatiDB;
USE portGalatiDB;

CREATE TABLE tblCompanie(
	id_Companie INT PRIMARY KEY AUTO_INCREMENT,
	numeCompanie VARCHAR(255) NOT NULL,
	nrVaseDetinute INT DEFAULT 0,
	sectorBusiness VARCHAR(50),
	tara_de_proprietate VARCHAR (50),
	oras VARCHAR(50),
	website VARCHAR(100),
	codPostal VARCHAR(50),
	anulFondarii YEAR,
	nrAngajati INT DEFAULT 0,
	activ BOOLEAN DEFAULT TRUE,
	nrTelefon VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE
);



CREATE TABLE tblVasePrezente_in_portGalati(
	id_Vas INT PRIMARY KEY,
	nrIdentificareIMO CHAR(7) UNIQUE NOT NULL,
	nrIdentificareMMSI CHAR(7) UNIQUE NOT NULL,
	tara_de_provenienta VARCHAR(50),
	numeVas VARCHAR(50),
	tipVas VARCHAR(50) NOT NULL,
	TimpEstimatSosire DATETIME,
	TimpExactSosire DATETIME,
	portProvenienta VARCHAR(50),
	portDestinatie VARCHAR(50),
	distantaParcursa VARCHAR(50),
	statusNavigatie VARCHAR (100),
	indicativ_vas VARCHAR(20) UNIQUE NOT NULL,
	vaseInPortGalati SMALLINT,
	vasePlecateLast24h SMALLINT,
	vaseSositeLast24h SMALLINT,
	vaseAsteptate SMALLINT
);

DESCRIBE tblCompanie;
DESCRIBE tblVasePrezente_in_portGalati;



CREATE TABLE tblCaracteristiciVas(
	id_Caracteristici INT PRIMARY KEY,
	vas INT,
	producator VARCHAR(50) NOT NULL,
	tipVas VARCHAR(50) NOT NULL,
	capacitate_DWT INT NOT NULL,
	latime VARCHAR(50),
	lungime VARCHAR (50),
	anulConstruirii YEAR DEFAULT 0,
	CONSTRAINT fk_Vas FOREIGN KEY (vas) REFERENCES tblVasePrezente_in_portGalati(id_Vas)
);

DESCRIBE tblCaracteristiciVas;


CREATE TABLE tblPorturi(
	id_Port INT PRIMARY KEY,
	UNLOCODE VARCHAR(5) UNIQUE NOT NULL,
	numePort VARCHAR(20),
	tara VARCHAR(20),
	oras VARCHAR(20),
	fusOrar CHAR(6),
	tipPort VARCHAR(20),
	latitudine DECIMAL(10, 8),
    longitudine DECIMAL(11, 8) 
);


DESCRIBE tblPorturi;



CREATE TABLE tblStatus_Vase_noi(
	id_Vase_noi INT PRIMARY KEY,
	nrIdentificareIMO CHAR(7) UNIQUE NOT NULL,
	nrIdentificareMMSI CHAR(7) UNIQUE NOT NULL,
	tara_de_provenienta VARCHAR(50),
	numeVas VARCHAR(50),
	status_vase ENUM('Sosire', 'Plecare', 'Stationare'),
	timpEstimatSosire DATETIME,
	timpExactSosire DATETIME,
	timpEstimatPlecare DATETIME,
	timpExactPlecare DATETIME,
	durata_cursa VARCHAR(50),
	portProvenienta VARCHAR(50),
	portDestinatie VARCHAR(50),
	distanta_parcursa VARCHAR(50),
	detaliiNavigatie VARCHAR (100),
	indicativ_vas VARCHAR(20) UNIQUE NOT NULL,
	latitudine DECIMAL(10, 8),
    longitudine DECIMAL(11, 8)
);


DESCRIBE tblStatus_Vase_noi;

CREATE TABLE tblLocuri_de_Parcare_in_Doc (
    doc_id INT PRIMARY KEY,
    numeVas VARCHAR(100),
    tipVas VARCHAR(50),
    timpEstimatSosire DATETIME,
    timpEstimatPlecare DATETIME,
    status_parcare ENUM('Atribuit', 'Disponibil', 'Disfunctional') DEFAULT 'Disponibil'
);

DESCRIBE tblLocuri_de_Parcare_in_Doc;


CREATE TABLE tblEchipaj_Vas (
	id_MembruEchipaj INT PRIMARY KEY,
	id_Vas_Echipaj INT,
	Rol varchar(50) NOT NULL,
	numeMembruEchipaj VARCHAR(50) NOT NULL,
    prenumeMembruEchipaj VARCHAR(50) NOT NULL,
	nrAni_Experienta int DEFAULT 0,
	nationalitate varchar(100),
	data_de_nastere date,
	nrTelefon VARCHAR(15) UNIQUE,
	sex_membruEchipaj enum('Masculin', 'Feminin'),
	CONSTRAINT fk_id_Vas_Echipaj FOREIGN KEY (id_Vas_Echipaj) REFERENCES tblVasePrezente_in_portGalati(id_Vas)
);

DESCRIBE tblEchipaj_Vas;



CREATE TABLE tblPasageri (
    id_Pasager INT PRIMARY KEY,
    id_Vas_Pasageri INT,
    numePasager VARCHAR(50) NOT NULL,
    prenumePasager VARCHAR(50) NOT NULL,
    nationalitate varchar(100),
	data_de_nastere date,
    Cod_de_bare_Bilet VARCHAR(12) UNIQUE,
    nrLoc_Scaun VARCHAR(10),
    port_imbarcare VARCHAR(50),
	nrTelefon VARCHAR(15) UNIQUE,
	sex_Pasager enum('Masculin', 'Feminin'),
	email VARCHAR(100) UNIQUE,
    CONSTRAINT fk_id_Vas_Pasager FOREIGN KEY (id_Vas_Pasageri) REFERENCES tblVasePrezente_in_portGalati(id_Vas)
);


DESCRIBE tblPasageri;


CREATE TABLE tblDocumente_Pasageri (
    document_id_pasager INT,
    id_Pasager_doc INT,	
    tip_document_pasager ENUM('Pasaport', 'ID_National') NOT NULL,
    numar_Document VARCHAR(50) NOT NULL,
    tara_emitenta VARCHAR(50) NOT NULL,
    data_expirarii DATE,
    CONSTRAINT fk_id_Pasager FOREIGN KEY (id_Pasager_doc) REFERENCES tblPasageri(id_Pasager)
);

DESCRIBE tblDocumente_Pasageri;


CREATE TABLE tblDocumente_EchipajVas (
    document_id_echipaj INT PRIMARY KEY,
    id_MembruEchipaj_doc INT, 
    tip_document_echipaj ENUM('Pasaport', 'ID_National') NOT NULL,
    numar_Document VARCHAR(50) NOT NULL,
    tara_emitenta VARCHAR(50) NOT NULL,
    data_expirarii DATE,
    CONSTRAINT fk_id_MembruEchipaj FOREIGN KEY (id_MembruEchipaj_doc) REFERENCES tblEchipaj_Vas(id_MembruEchipaj)
);

DESCRIBE tblDocumente_EchipajVas;


CREATE TABLE tblBagajePasageri (
	id_bagaj bigint(10) PRIMARY KEY,
	Cod_de_bare_Bagaj VARCHAR(12) UNIQUE,
	CONSTRAINT fk_Cod_de_bare_bagaj FOREIGN KEY (Cod_de_bare_Bagaj) REFERENCES tblPasageri(Cod_de_bare_Bilet) 
);

DESCRIBE tblBagajePasageri;

CREATE TABLE tblFaruri(
	id_Far SMALLINT(5) PRIMARY KEY,
	Cod_ARLHS VARCHAR(10) UNIQUE NOT NULL,
	numeFar VARCHAR(50),
	tara VARCHAR(20),
	zonaLocalizare VARCHAR(50),
	anulConstruirii YEAR DEFAULT 0,
	nr_flashuri SMALLINT,
	tip_iluminare ENUM('fix', 'intermitent', 'directional', 'avertizare') NOT NULL,
	culori_semnal_luminos VARCHAR(50),
	inaltimea_focala VARCHAR (10),
	distanta_focalizare_lumini VARCHAR (10),
	detalii_structuraFar VARCHAR (100) DEFAULT "-",
	latitudine DECIMAL(10, 8),
    longitudine DECIMAL(11, 8) 
);


DESCRIBE tblFaruri;


CREATE TABLE tblAngajati_in_portGalati (
	id_angajat INT PRIMARY KEY,
	Rol varchar(50) NOT NULL,
	numeAngajat VARCHAR(50) NOT NULL,
    prenumeAngajat VARCHAR(50) NOT NULL,
	nrAni_Experienta int DEFAULT 0,
	nationalitate varchar(100),
	data_de_nastere date,
	nrTelefon VARCHAR(15) UNIQUE,
	sex_AngajatPort enum('Masculin', 'Feminin')
);

DESCRIBE tblAngajati_in_portGalati;

CREATE TABLE tblServicii_Speciale (
	Cod_de_bare_Bilet varchar(12) PRIMARY KEY,
	Servicii_Speciale enum('Scaun_cu_rotile', 'Asistenta_pentru_handicap', 'Scaun_XL', 'Imbarcare_prioritara'),
	CONSTRAINT fk_Cod_de_bare_bilet FOREIGN KEY (Cod_de_bare_Bilet) REFERENCES tblPasageri(Cod_de_bare_Bilet)

);


DESCRIBE tblServicii_Speciale;


CREATE TABLE tblLimbi_vorbite_EchipajVas (
	id_MembruEchipaj_limba INT PRIMARY KEY,
	Limba varchar(50) NOT NULL,
	CONSTRAINT fk_id_MembruEchipaj_limba FOREIGN KEY(id_MembruEchipaj_limba) REFERENCES tblEchipaj_Vas (id_MembruEchipaj)
);

DESCRIBE tblLimbi_vorbite_EchipajVas;

CREATE TABLE tblEscala_Vase (
	id_Port_escala INT PRIMARY KEY,
	id_Vas_escala INT NOT NULL,
	numePortEscala varchar(50),
	timp_stationare VARCHAR(50)
);

DESCRIBE tblEscala_Vase;


/* CREATE TABLE tblStiriMaritime(
	
); 
INSERT INTO tblVase VALUES(1, "Marea Britanie", "Queen Elizabeth", "9241061",'2024-01-08 12:35:00', "Southampton", "Passenger",45.439284, 28.080150);
INSERT INTO tblVase VALUES(2, "Panama", "Ever Given", "9811000",'2024-01-07 18:40:00', "Colombo", "Cargo",45.437267, 28.074571);
INSERT INTO tblVase VALUES(3, "SUA", "Paul Tregurtha", "7729057",'2024-01-09 13:10:00', "Indiana Harbor", "Cargo",45.435731, 28.072254);
INSERT INTO tblVase VALUES(4, "SUA", "Time Bandit", "8852356",'2024-01-10 09:20:00', "Sandpoint", "Fishing",45.437899, 28.081223);
INSERT INTO tblVase VALUES(5, "Grecia", "Psara Glory", "7909437",'2024-01-11 10:00:00', "Psara", "Passenger",45.440670, 28.087660);

INSERT INTO tblPortGalati VALUES (1,'2024-01-08 12:00:00',"2456",NOW(),"1233","678","323");
INSERT INTO tblPortGalati VALUES (2,'2024-01-09 12:00:00',"3201",NOW(),"2134","1234","589");
INSERT INTO tblPortGalati VALUES (3,'2024-01-10 12:00:00',"2987",NOW(),"1888","987","290");
INSERT INTO tblPortGalati VALUES (4,'2024-01-11 12:00:00',"1890",NOW(),"876","390","150");
INSERT INTO tblPortGalati VALUES (5,'2024-01-12 12:00:00',"2103",NOW(),"1590","871","432");

INSERT INTO tblVaseAsteptate VALUES (1,"Caracal 286","Cargo","Yoho",'2024-01-08 12:30:00','2024-01-08 12:35:50',"TDW Marine","Ship Repairs");
INSERT INTO tblVaseAsteptate VALUES (2,"Duende","Cargo","Basel",'2024-01-09 14:30:00','2024-01-09 14:31:30',"Amerimed Hospitals","Healthcare");
INSERT INTO tblVaseAsteptate VALUES (3,"Spirit Of France","Tanker","Falmouth",'2024-01-10 15:20:00','2024-01-10 15:22:50',"Efforts Solutions IT","Information Technology");
INSERT INTO tblVaseAsteptate VALUES (4,"Gas 90","Tanker","Antwerp",'2024-01-11 12:30:00','2024-01-11 12:33:30',"Kempsmps","Ship Chandlers");
INSERT INTO tblVaseAsteptate VALUES (5,"Jileyu02888","Fishing","Dakar",'2024-01-12 11:00:00','2024-01-12 11:10:25',"Marine Surveys & Design Ltd","Surveyors");

INSERT INTO tblStatusVase VALUES (1,"Caracal 286","arrival",'2024-01-08 12:35:50',"Yoho","Port");
INSERT INTO tblStatusVase VALUES (2,"Apollo18","departure",'2024-01-09 13:40:25',"Kanda","Port");
INSERT INTO tblStatusVase VALUES (3,"Kvalnes","departure",'2024-01-10 14:25:00',"Haroy","Marina");
INSERT INTO tblStatusVase VALUES (4,"Wan Yun 29","arrival",'2024-01-11 16:30:50',"Nantong Anch","Anchorage");
INSERT INTO tblStatusVase VALUES (5,"Mai Po","departure",'2024-01-12 09:10:10',"Gnl Del Plata","Offshore Terminal");


*/