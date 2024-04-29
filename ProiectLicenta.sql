USE portGalatiDatabase;

CREATE TABLE tblCompanie(
	id_Companie SMALLINT PRIMARY KEY ,
	numeCompanie VARCHAR(100) NOT NULL,
	nrVaseDetinute SMALLINT DEFAULT 0,
	sectorBusiness VARCHAR(100),
	adresa VARCHAR (200) NOT NULL,
	website VARCHAR(100),
	anulFondarii SMALLINT,
	nrAngajati SMALLINT DEFAULT 0,
	activ BIT,
	nrTelefon VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE
);




INSERT INTO tblCompanie (id_Companie, numeCompanie, nrVaseDetinute, sectorBusiness, adresa, website, anulFondarii, nrAngajati, activ, nrTelefon, email) VALUES
(1, 'Maritime Holdings', 25, 'Transport Maritim', 'Str. Portului 123, Constanta', 'www.maritimeholdings.com', 1990, 150, 1, '0212345678', 'contact@maritimeholdings.com'),
(2, 'Global Shipping Inc.', 40, 'Logistica si Transport', 'Av. Oceanului 456, Miami', 'www.globalshippinginc.com', 1985, 200, 1, '3055551234', 'info@globalshippinginc.com'),
(3, 'TechNaval Solutions', 10, 'Tehnologie Maritima', 'Dockyard St., Londra', 'www.technavalsolutions.co.uk', 2005, 50, 1, '442071234567', 'contact@technavalsolutions.co.uk'),
(4, 'Pacific Lines', 35, 'Transport Maritim', 'Marina Blvd, Honolulu', 'www.pacificlines.com', 1998, 180, 1, '8085559876', 'info@pacificlines.com'),
(5, 'CargoMasters', 15, 'Transport si Logistica', 'Rue du Port 789, Paris', 'www.cargomasters.fr', 2002, 70, 1, '33123456789', 'contact@cargomasters.fr'),
(6, 'Nautical Ventures', 20, 'Vanzare de Vase', 'Pier 7, Sydney', 'www.nauticalventures.com.au', 1995, 90, 1, '6125554321', 'info@nauticalventures.com.au'),
(7, 'Portside Logistics', 30, 'Logistica Portuara', 'Dock Road, Cape Town', 'www.portsidelogistics.co.za', 2000, 120, 1, '27216543210', 'contact@portsidelogistics.co.za'),
(8, 'AquaTech Industries', 5, 'Tehnologie Marina', 'Seaside Ave, San Francisco', 'www.aquatechindustries.com', 2010, 40, 1, '1415556789', 'info@aquatechindustries.com'),
(9, 'Marine Solutions Ltd.', 18, 'Servicii Navale', 'Harbour St., Auckland', 'www.marinesolutions.co.nz', 2008, 80, 1, '6498765432', 'contact@marinesolutions.co.nz'),
(10, 'Oceanic Ventures', 22, 'Explorare Marina', 'Waterfront Dr., Vancouver', 'www.oceanicventures.ca', 2003, 100, 1, '16045551234', 'info@oceanicventures.ca'),
(11, 'Harbor Freight Co.', 12, 'Transport si Logistica', 'Harbor Blvd, Los Angeles', 'www.harborfreightco.com', 1992, 60, 1, '13105551234', 'contact@harborfreightco.com'),
(12, 'SeaTrade Ltd.', 28, 'Comert Maritim', 'Wharf Rd., Wellington', 'www.seatrade.co.nz', 1997, 130, 1, '6497654321', 'info@seatrade.co.nz'),
(13, 'BlueWater Shipping', 38, 'Transport si Logistica', 'Bay Ave, Singapore', 'www.bluewatershipping.com', 1988, 220, 1, '6567890123', 'contact@bluewatershipping.com'),
(14, 'Maritime Logistics', 16, 'Logistica Maritima', 'Dockside Dr., Hamburg', 'www.maritimelogistics.de', 2001, 75, 1, '494032456789', 'info@maritimelogistics.de'),
(15, 'Coastal Connections', 8, 'Conexiuni Maritime', 'Coastline St., Brisbane', 'www.coastalconnections.com.au', 2015, 35, 1, '6175559876', 'contact@coastalconnections.com.au'),
(16, 'Anchor Solutions', 33, 'Solutii de Ancorare', 'Harbor View, Boston', 'www.anchorsolutions.com', 1993, 160, 1, '16175554321', 'info@anchorsolutions.com'),
(17, 'WaveRider Enterprises', 26, 'Surf si Placa de Surf', 'Beachfront Ave, Honolulu', 'www.waveriderenterprises.com', 2006, 110, 1, '8089876543', 'contact@waveriderenterprises.com'),
(18, 'Tidal Transport Inc.', 14, 'Transport pe Apa', 'Tide St., Sydney', 'www.tidaltransport.com.au', 2007, 65, 1, '6125557890', 'info@tidaltransport.com.au'),
(19, 'Seafarer Services', 24, 'Servicii Maritime', 'Sailor Rd., Oslo', 'www.seafarerservices.no', 2004, 85, 1, '4723456789', 'contact@seafarerservices.no'),
(20, 'AquaLine Ventures', 32, 'Investitii Marine', 'Marina Blvd, San Diego', 'www.aqualineventures.com', 1999, 140, 1, '17605557654', 'info@aqualineventures.com'),
(21, 'Pacific Rim Logistics', 19, 'Logistica Pacific', 'Pacific Ave, Seattle', 'www.pacificrimlogistics.com', 2012, 45, 1, '12065559876', 'contact@pacificrimlogistics.com'),
(22, 'Maritime Solutions', 36, 'Solutii Maritime', 'Seafarer St., Tokyo', 'www.maritimesolutions.jp', 1996, 190, 1, '81345678901', 'info@maritimesolutions.jp'),
(23, 'CargoExpress', 11, 'Transport de Marfa', 'Freight Rd., Dubai', 'www.cargoexpress.ae', 2018, 55, 1, '971234567890', 'contact@cargoexpress.ae'),
(24, 'PortAuthority Logistics', 29, 'Logistica Portuara', 'Dockside Ave, Miami', 'www.portauthoritylogistics.com', 2009, 125, 1, '3058765432', 'info@portauthoritylogistics.com'),
(25, 'SeaVentures Ltd.', 21, 'Explorare Marina', 'Seafarer Dr., Cape Town', 'www.seaventures.co.za', 2000, 95, 1, '27215559876', 'contact@seaventures.co.za'),
(26, 'Oceanic Tech Solutions', 17, 'Tehnologie Marina', 'Oceanview St., Sydney', 'www.oceanictechsolutions.com.au', 2011, 50, 1, '6125556789', 'info@oceanictechsolutions.com.au'),
(27, 'MarineTrade Ltd.', 31, 'Comert Maritim', 'Shipyard Rd., Singapore', 'www.marinetrade.sg', 1994, 170, 1, '6561234567', 'contact@marinetrade.sg'),
(28, 'Harbor Masters', 23, 'Management Portuar', 'Harbor Dr., Vancouver', 'www.harbourmasters.ca', 2003, 105, 1, '16045559876', 'info@harbourmasters.ca'),
(29, 'WaveTech Industries', 37, 'Tehnologie Marina', 'Surfside Blvd, Honolulu', 'www.wavetechindustries.com', 2008, 135, 1, '8087654321', 'contact@wavetechindustries.com'),
(30, 'Maritime Holdings Asia', 27, 'Transport Maritim', 'Harbor Rd., Hong Kong', 'www.maritimeholdingsasia.com', 2006, 85, 1, '85298765432', 'info@maritimeholdingsasia.com');





CREATE TABLE tblVasePort(
	id_Vas INT  PRIMARY KEY ,
	nrIdentificareIMO CHAR(7) UNIQUE NOT NULL,
	nrIdentificareMMSI CHAR(9) UNIQUE NOT NULL,
	indicativ_vas VARCHAR(20) UNIQUE NOT NULL,
	tara_de_provenienta VARCHAR(50),
	numeVas VARCHAR(100),
	tipVas VARCHAR(50) NOT NULL,
	TimpEstimatSosire DATETIME,
	TimpExactSosire DATETIME,
	portProvenienta VARCHAR(50)
);


INSERT INTO tblVasePort (id_Vas, numeVas, nrIdentificareIMO, nrIdentificareMMSI, indicativ_vas, tara_de_provenienta, portProvenienta, tipVas, timpEstimatSosire, TimpExactSosire) VALUES
(1, 'Oceanic Voyager', '1234567', '987654321', 'OV113', 'United States', 'New York', 'Petrolier', '2024-04-15 08:00:00', '2024-04-15 07:55:00'),
(2, 'Pacific Explorer', '2345678', '876543210', 'PE156', 'China', 'Shanghai', 'Container', '2024-04-15 10:30:00', '2024-04-15 10:32:00'),
(3, 'Atlantic Trader', '3456789', '765432109', 'AT719', 'United Kingdom', 'Southampton', 'Navă de Marfă', '2024-04-15 12:45:00', '2024-04-15 12:40:00'),
(4, 'Caribbean Princess', '4567890', '654321098', 'CP143', 'Bahamas', 'Nassau', 'Cruiser', '2024-04-15 14:20:00', '2024-04-15 14:18:00'),
(5, 'Mediterranean Spirit', '5678901', '543210987', 'MS466', 'Italy', 'Genoa', 'Croaziera', '2024-04-15 16:00:00', '2024-04-15 15:58:00'),
(6, 'Baltic Queen', '6789012', '432109876', 'BQ749', 'Sweden', 'Stockholm', 'Ferry', '2024-04-15 18:30:00', '2024-04-15 18:25:00'),
(7, 'Black Sea Voyager', '7890123', '321098765', 'BSV122', 'Russia', 'Novorossiysk', 'Yacht', '2024-04-15 20:10:00', '2024-04-15 20:08:00'),
(8, 'Adriatic Dream', '8901234', '210487654', 'AD416', 'Croatia', 'Dubrovnik', 'Cruiser', '2024-04-15 22:00:00', '2024-04-15 21:58:00'),
(9, 'North Sea Trader', '9012345', '109876543', 'NST189', 'Norway', 'Oslo', 'Nava de Marfa', '2024-04-16 08:45:00', '2024-04-16 08:42:00'),
(10, 'South Pacific Explorer', '0123456', '098765432', 'SPE223', 'Australia', 'Sydney', 'Container', '2024-04-16 10:20:00', '2024-04-16 10:22:00'),
(11, 'Indian Ocean Majesty', '1134567', '187654321', 'IOM476', 'India', 'Mumbai', 'Cruiser', '2024-04-16 12:00:00', '2024-04-16 11:58:00'),
(12, 'Arctic Explorer', '2345178', '876542210', 'AE781', 'Canada', 'Toronto', 'Nava de Cercetare', '2024-04-16 14:30:00', '2024-04-16 14:28:00'),
(13, 'Antarctic Spirit', '3451789', '765442109', 'AS416', 'Argentina', 'Buenos Aires', 'Nava de Croaziera', '2024-04-16 16:15:00', '2024-04-16 16:12:00'),
(14, 'Caribbean Pearl', '4567170', '654325098', 'CP729', 'Jamaica', 'Kingston', 'Cruiser', '2024-04-16 18:00:00', '2024-04-16 17:58:00'),
(15, 'Mediterranean Explorer', '1678901', '523210987', 'ME173', 'Greece', 'Piraeus', 'Nava de Cercetare', '2024-04-16 20:20:00', '2024-04-16 20:18:00'),
(16, 'Baltic Sea Voyager', '6719012', '432104876', 'BSV476', 'Estonia', 'Tallinn', 'Yacht', '2024-04-16 22:10:00', '2024-04-16 22:08:00'),
(17, 'Black Sea Pearl', '7890121', '321098755', 'BSP183', 'Bulgaria', 'Varna', 'Cruiser', '2024-04-17 08:30:00', '2024-04-17 08:28:00'),
(18, 'Adriatic Voyager', '8901235', '210987154', 'AV856', 'Montenegro', 'Kotor', 'Ferry', '2024-04-17 10:00:00', '2024-04-17 09:58:00'),
(19, 'North Sea Spirit', '9012344', '109876143', 'NSS189', 'Denmark', 'Copenhagen', 'Nava de Cercetare', '2024-04-17 12:15:00', '2024-04-17 12:12:00'),
(20, 'South Pacific Pearl', '0121556', '098265432', 'SPP183', 'Fiji', 'Suva', 'Croaziera', '2024-04-17 14:00:00', '2024-04-17 13:58:00'),
(21, 'Indian Ocean Explorer', '1324567', '917654321', 'IOE416', 'Seychelles', 'Victoria', 'Yacht', '2024-04-17 16:20:00', '2024-04-17 16:18:00'),
(22, 'Arctic Spirit', '2345618', '876543211', 'AS788', 'Greenland', 'Nuuk', 'Nava de Marfa', '2024-04-17 18:45:00', '2024-04-17 18:42:00'),
(23, 'Antarctic Explorer', '3451689', '765132109', 'AE451', 'Chile', 'Valparaiso', 'Container', '2024-04-17 20:30:00', '2024-04-17 20:32:00'),
(24, 'Caribbean Voyager', '4567190', '654311098', 'CV781', 'Dominican Republic', 'Santo Domingo', 'Croaziera', '2024-04-17 22:10:00', '2024-04-17 22:08:00'),
(25, 'Mediterranean Pearl', '5618901', '541210987', 'MP113', 'Spain', 'Barcelona', 'Cruiser', '2024-04-18 08:20:00', '2024-04-18 08:18:00'),
(26, 'Baltic Explorer', '6789031', '432109176', 'BE476', 'Finland', 'Helsinki', 'Nava de Cercetare', '2024-04-18 10:00:00', '2024-04-18 09:58:00'),
(27, 'Black Sea Explorer', '7892123', '321198765', 'BSE113', 'Romania', 'Constanta', 'Container', '2024-04-18 12:15:00', '2024-04-18 12:12:00'),
(28, 'Adriatic Spirit', '8901435', '210087154', 'AS256', 'Italy', 'Venice', 'Yacht', '2024-04-18 14:30:00', '2024-04-18 14:28:00'),
(29, 'North Sea Explorer', '9022345', '109176543', 'NSE189', 'United Kingdom', 'Aberdeen', 'Nava de Marfa', '2024-04-18 16:00:00', '2024-04-18 15:58:00'),
(30, 'South Pacific Spirit', '0324456', '018765432', 'SPS143', 'New Zealand', 'Auckland', 'Croaziera', '2024-04-18 18:20:00', '2024-04-18 18:18:00');






CREATE TABLE tblCaracteristiciVas(
	id_Caracteristici SMALLINT  PRIMARY KEY ,
	vas INT,
	producator VARCHAR(50) NOT NULL,
	tipVas VARCHAR(50) NOT NULL,
	tonaj_brut DECIMAL(10,2),
	latime DECIMAL(10,2),
	lungime DECIMAL (10,2),
	adancime DECIMAL (10,2),
	anulConstruirii SMALLINT DEFAULT 0,
	CONSTRAINT fk_vas FOREIGN KEY (vas) 
	REFERENCES tblVasePort(id_Vas) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE tblPorturi(
	id_Port INT  PRIMARY KEY,
	UNLOCODE VARCHAR(5) UNIQUE NOT NULL,
	numePort VARCHAR(100),
	tara VARCHAR(50),
	oras VARCHAR(50),
	fusOrar DATETIMEOFFSET(6),
	tipPort VARCHAR(50),
	latitudine DECIMAL(10, 8),
    	longitudine DECIMAL(11, 8),
	informatii_de_contact VARCHAR(100)
);





CREATE TABLE tblStatusVase(
	id_Vas_nou INT  PRIMARY KEY,
	nrIdentificareIMO CHAR(7) UNIQUE NOT NULL,
	nrIdentificareMMSI CHAR(7) UNIQUE NOT NULL,
	indicativ_vas VARCHAR(20) UNIQUE NOT NULL,
	tara_de_provenienta VARCHAR(50),
	numeVas VARCHAR(50) NOT NULL,
	tipVas VARCHAR (50) NOT NULL,
	Status_vase VARCHAR(200),
	timpEstimatSosire DATETIME,
	timpExactSosire DATETIME,
	timpEstimatPlecare DATETIME,
	timpExactPlecare DATETIME,
	durata_calatorie VARCHAR(50),
	distanta_calatorie VARCHAR(50),
	portProvenienta VARCHAR(50),
	portDestinatie VARCHAR(50),
	tipPort VARCHAR(50),
	statusNavigatie VARCHAR (100)
);



CREATE TABLE tblStatisticiVase(
	id_Statistici SMALLINT  PRIMARY KEY,
	nr_vasePortGalati SMALLINT,
	nr_vasePlecateLast24h SMALLINT,
	nr_vaseSositeLast24h SMALLINT,
	nr_vaseAsteptateNext24h SMALLINT
);




CREATE TABLE tblLocuriAcostare(
    	doc_id INT  PRIMARY KEY,
	nr_loc VARCHAR(10),
    	numeVas VARCHAR(100),
    	tipVas VARCHAR(50),
	lungime_doc DECIMAL (10,2),
	adancime_maxima DECIMAL (10,2),
   	timpEstimatSosire DATETIME,
    	timpEstimatPlecare DATETIME,
    	Status_disponibilitate VARCHAR(100)
);



CREATE TABLE tblEchipajVas (
	id_MembruEchipaj INT  PRIMARY KEY,
	id_Vas_Echipaj INT,
	Rol varchar(50) NOT NULL,
	numeMembruEchipaj VARCHAR(50) NOT NULL,
    	prenumeMembruEchipaj VARCHAR(50) NOT NULL,
	nrAni_Experienta TINYINT DEFAULT 0,
	nationalitate varchar(100),
	data_de_nastere date,
	nrTelefon VARCHAR(20) UNIQUE,
	Sex_membruEchipaj VARCHAR(50),
	CONSTRAINT fk_id_Vas_Echipaj FOREIGN KEY (id_Vas_Echipaj) 
	REFERENCES tblVasePort(id_Vas) ON DELETE CASCADE ON UPDATE CASCADE
);





CREATE TABLE tblPasageri (
   	id_Pasager INT  PRIMARY KEY,
    	id_Vas_Pasageri INT,
    	numePasager VARCHAR(50) NOT NULL,
    	prenumePasager VARCHAR(50) NOT NULL,
    	nationalitate varchar(100),
	data_de_nastere date,
    	Cod_de_bare_Bilet VARCHAR(12) UNIQUE,
    	nrLoc_Scaun VARCHAR(10),
    	port_imbarcare VARCHAR(50),
	nrTelefon VARCHAR(20) UNIQUE,
	Sex_Pasager VARCHAR(20),
	email VARCHAR(100) UNIQUE,
    	CONSTRAINT fk_id_Vas_Pasager FOREIGN KEY (id_Vas_Pasageri) 
	REFERENCES tblVasePort(id_Vas) ON DELETE CASCADE ON UPDATE CASCADE
);





CREATE TABLE tblDocumentePasageri (
   	document_id_pasager INT  PRIMARY KEY,
   	id_Pasager_doc INT,	
    	Tip_document_pasager VARCHAR(50) NOT NULL,
    	numar_Document VARCHAR(50) NOT NULL,
    	autoritatea_emitenta VARCHAR(50) NOT NULL,
	data_emiterii DATE,
    	data_expirarii DATE,
    	CONSTRAINT fk_id_Pasager FOREIGN KEY (id_Pasager_doc) 
	REFERENCES tblPasageri(id_Pasager) ON DELETE CASCADE ON UPDATE CASCADE
);




CREATE TABLE tblDocumenteEchipajVas (
    	document_id_echipaj INT  PRIMARY KEY,
    	id_MembruEchipaj_doc INT, 
    	Tip_document_echipaj VARCHAR(50) NOT NULL,
    	numar_Document VARCHAR(50) NOT NULL,
    	autoritatea_emitenta VARCHAR(50) NOT NULL,
	data_emiterii DATE,
    	data_expirarii DATE,
    	CONSTRAINT fk_id_MembruEchipaj FOREIGN KEY (id_MembruEchipaj_doc) 
	REFERENCES tblEchipajVas(id_MembruEchipaj) ON DELETE CASCADE ON UPDATE CASCADE
);




CREATE TABLE tblBagajePasageri (
	id_bagaj INT  PRIMARY KEY,
	id_pasager_bagaje INT ,
	greutate DECIMAL(10,2),
	Tip_bagaj VARCHAR(50) NOT NULL,
	CONSTRAINT fk_id_pasager_bagaje FOREIGN KEY (id_pasager_bagaje) 
	REFERENCES tblPasageri(id_Pasager) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE tblFaruri(
	id_Far SMALLINT  PRIMARY KEY,
	Cod_ARLHS VARCHAR(10) UNIQUE NOT NULL,
	numeFar VARCHAR(50),
	tara VARCHAR(20),
	zonaLocalizare VARCHAR(50),
	anulConstruirii INT DEFAULT 0,
	nr_flashuri SMALLINT,
	Tip_iluminare VARCHAR(50) NOT NULL,
	culori_semnal_luminos VARCHAR(50),
	inaltimea_focala VARCHAR(20),
	distanta_focalizare_lumini VARCHAR(10),
	detalii_structuraFar VARCHAR(100),
	latitudine DECIMAL(10, 8),
    longitudine DECIMAL(11, 8) 
);




INSERT INTO tblFaruri (id_Far,numeFar, Cod_ARLHS, tara, zonaLocalizare, Tip_iluminare, anulConstruirii, nr_flashuri, culori_semnal_luminos, inaltimea_focala, distanta_focalizare_lumini, detalii_structuraFar, latitudine, longitudine) VALUES
(1,'Sandy Hook', 'USA-729', 'Statele Unite', 'New York', 'fix', 1764, 1, 'alb', 40.0, 15.0, 'Turnul de cărămidă roșie', 40.475000, -74.015000),
(2,'Cabo da Roca', 'POR-001', 'Portugalia', 'Lisabona', 'intermitent', 1772, 3, 'alb, roșu', 168.0, 20.0, 'Turnul de piatră', 38.780000, -9.500000),
(3,'Kjeungskjær', 'NOR-044', 'Norvegia', 'Trondheim', 'fix', 1880, 1, 'alb', 20.0, 10.0, 'Turnul de fontă', 63.464444, 10.570833),
(4,'Fastnet Rock', 'IRE-026', 'Irlanda', 'Cork', 'directional', 1904, 3, 'alb', 54.0, 27.0, 'Turnul din oțel', 51.388889, -9.610278),
(5,'Dungeness', 'ENG-015', 'Regatul Unit', 'Dover', 'fix', 1904, 2, 'alb', 43.0, 20.0, 'Turnul de oțel', 50.921111, 0.963056),
(6,'Split Rock', 'USA-782', 'Statele Unite', 'Duluth', 'intermitent', 1910, 2, 'alb', 49.0, 22.0, 'Turnul de oțel cu dale de granit', 47.206944, -91.395556),
(7,'Les Éclaireurs', 'ARG-033', 'Argentina', 'Ushuaia', 'fix', 1920, 2, 'alb', 22.0, 15.0, 'Turnul de fontă', -54.898889, -68.265000),
(8,'Flamborough Head', 'ENG-020', 'Regatul Unit', 'Hull', 'directional', 1806, 4, 'alb', 82.0, 29.0, 'Turnul de piatră', 54.133056, -0.119444),
(9,'Point Reyes', 'USA-058', 'Statele Unite', 'San Francisco', 'intermitent', 1870, 4, 'alb', 26.0, 18.0, 'Turnul de cărămidă roșie', 38.032500, -122.974722),
(10,'La Corbière', 'ENG-004', 'Regatul Unit', 'Jersey', 'fix', 1874, 2, 'alb', 19.0, 12.0, 'Turnul de granit', 49.184444, -2.228611),
(11,'St. Abb''s Head', 'SCO-222', 'Regatul Unit', 'Edinburgh', 'directional', 1862, 3, 'alb', 28.0, 15.0, 'Turnul de piatră', 55.903056, -2.123611),
(12,'Portland Bill', 'ENG-123', 'Regatul Unit', 'Portland', 'intermitent', 1906, 3, 'alb', 41.0, 22.0, 'Turnul de piatră', 50.517222, -2.456111),
(13,'St. Marys Lighthouse', 'ENG-124', 'Regatul Unit', 'Newcastle', 'fix', 1898, 2, 'alb', 12.0, 8.0, 'Turnul de piatră cu casa asociată', 55.079722, -1.432500),
(14,'Cape Hatteras', 'USA-113', 'Statele Unite', 'Cape Hatteras', 'intermitent', 1870, 3, 'alb', 64.0, 23.0, 'Turnul de cărămidă', 35.255000, -75.528056),
(15,'Cap de la Hague', 'FRA-117', 'Franța', 'Cherbourg-Octeville', 'fix', 1837, 2, 'alb', 52.0, 29.0, 'Turnul de piatră', 49.726111, -1.932222),
(16,'Paldiski', 'EST-001', 'Estonia', 'Tallinn', 'directional', 1730, 4, 'alb', 35.0, 20.0, 'Turnul de piatră', 59.357500, 24.058611),
(17,'New London Harbor', 'USA-526', 'Statele Unite', 'New London', 'intermitent', 1801, 4, 'alb', 30.0, 16.0, 'Turnul de piatră', 41.290278, -72.089722),
(18,'Capul Bonavista', 'CAN-019', 'Canada', 'St. John''s', 'fix', 1843, 2, 'alb', 20.0, 15.0, 'Turnul de piatră', 48.708333, -53.113611),
(19,'Hook Head', 'IRL-044', 'Irlanda', 'Waterford', 'directional', 1172, 3, 'alb', 36.0, 20.0, 'Turnul de piatră', 52.124722, -6.929444);





CREATE TABLE tblAngajatiPort (
	IdAngajat INT  PRIMARY KEY,
	Rol varchar(100) NOT NULL,
	numeAngajat VARCHAR(50) NOT NULL,
	departament VARCHAR(100),
    	prenumeAngajat VARCHAR(50) NOT NULL,
	nationalitate varchar(100),
	Data_angajarii date,
	nrTelefon VARCHAR(20) UNIQUE NOT NULL,
	Sex_AngajatPort VARCHAR(50)
);



INSERT INTO tblAngajatiPort (IdAngajat, Rol, numeAngajat, prenumeAngajat, departament, nationalitate, Data_angajarii, nrTelefon, Sex_AngajatPort)
VALUES
    (1, 'Oficial al Autorității Portuare', 'Popescu', 'Ion', 'Administrație', 'Română', '2023-05-15', '0722456789', 'Masculin'),
    (2, 'Maistru de Port', 'Ionescu', 'Maria', 'Operatiuni Portuare', 'Română', '2022-10-10', '0733123456', 'Feminin'),
    (3, 'Muncitor de la Docuri', 'Dumitrescu', 'Andrei', 'Operatiuni Portuare', 'Română', '2023-01-20', '0765432198', 'Masculin'),
    (4, 'Ofițer de Securitate Portuară', 'Popa', 'Elena', 'Securitate', 'Română', '2022-08-03', '0722345678', 'Feminin'),
    (5, 'Pilot de Port', 'Georgescu', 'Alexandru', 'Navigație', 'Română', '2021-11-30', '0745123456', 'Masculin'),
    (6, 'Echipă de Mentenanță și Reparații', 'Stan', 'Ana', 'Mentenanță', 'Română', '2023-03-25', '0789123456', 'Feminin'),
    (7, 'Ofițer de Vamă și Protecție a Frontierei', 'Mihai', 'Diana', 'Vamă', 'Română', '2022-05-10', '0723456780', 'Feminin'),
    (8, 'Manager de Logistică și Lanț de Aprovizionare', 'Gheorghiu', 'Mihai', 'Logistică', 'Română', '2021-09-18', '0732123451', 'Masculin'),
    (9, 'Specialist în operațiuni portuare', 'Ionescu', 'Andrei', 'Operatiuni Portuare', 'Română', '2023-04-10', '0721345672', 'Masculin'),
    (10, 'Inginer mecanic', 'Stoica', 'Elena', 'Mentenanță', 'Română', '2022-11-20', '0789456123', 'Feminin'),
    (11, 'Coordonator al securității portuare', 'Iacob', 'Ana', 'Securitate', 'Română', '2022-06-05', '0722345674', 'Feminin'),
    (12, 'Operator de macara portuară', 'Andrei', 'Georgescu', 'Operatiuni Portuare', 'Română', '2021-12-15', '0765432195', 'Masculin'),
    (13, 'Planificator logistic', 'Vasilescu', 'Cristina', 'Logistică', 'Română', '2023-02-28', '0798765436', 'Feminin'),
    (14, 'Inspector vamal', 'Pop', 'Maria', 'Vamă', 'Română', '2022-09-08', '0734567897', 'Feminin'),
    (15, 'Navigator', 'Florea', 'Alex', 'Navigație', 'Română', '2021-10-25', '0756789018', 'Masculin'),
    (16, 'Tehnician de mentenanță', 'Ionescu', 'Andreea', 'Mentenanță', 'Română', '2023-03-10', '0712345677', 'Feminin'),
    (17, 'Inspector de mediu', 'Popescu', 'George', 'Protecție a Mediului', 'Română', '2022-07-15', '0790123450', 'Masculin'),
    (18, 'Dispecer portuar', 'Marinescu', 'Ioana', 'Operatiuni Portuare', 'Română', '2021-12-05', '0789012341', 'Feminin'),
    (19, 'Electrician portuar', 'Dobre', 'Radu', 'Mentenanță', 'Română', '2023-05-20', '0754321092', 'Masculin'),
    (20, 'Specialist în resurse umane', 'Munteanu', 'Alina', 'Resurse Umane', 'Română', '2022-10-18', '0712366673', 'Feminin'),
    (21, 'Tehnician de securitate', 'Moldovan', 'Marius', 'Securitate', 'Română', '2023-01-08', '0769432104', 'Masculin'),
    (22, 'Colector de taxe portuare', 'Avram', 'Ana', 'Finanțe', 'Română', '2022-08-30', '0798765435', 'Feminin'),
    (23, 'Operator de echipamente de ridicat', 'Barbu', 'Cristian', 'Operatiuni Portuare', 'Română', '2021-11-25', '0712305676', 'Masculin'),
    (24, 'Ghid turistic portuar', 'Stanciu', 'Andreea', 'Servicii turistice', 'Română', '2023-04-05', '0789012377', 'Feminin'),
    (25, 'Operator de terminale petroliere', 'Gheorghiu', 'Ioan', 'Operatiuni Portuare', 'Română', '2022-02-10', '0755789018', 'Masculin'),
    (26, 'Specialist în siguranță și sănătate în muncă', 'Stanescu', 'Elena', 'Securitate și Sănătate în Muncă', 'Română', '2021-09-20', '0734567899', 'Feminin'),
    (27, 'Inspector de calitate', 'Popa', 'Mihai', 'Calitate', 'Română', '2023-03-15', '0712345670', 'Masculin'),
    (28, 'Coordonator al transportului', 'Dumitru', 'Cristina', 'Logistică', 'Română', '2022-06-28', '0790183451', 'Feminin'),
    (29, 'Operator de dronă portuară', 'Marin', 'Ana', 'Navigație', 'Română', '2021-08-05', '0789012342', 'Feminin'),
    (30, 'Operator de sistem de management al traficului portuar', 'Stoian', 'Cristian', 'Navigație', 'Română', '2023-02-10', '0756789013', 'Masculin'),
    (31, 'Arhitect naval', 'Ionescu', 'Andreea', 'Proiectare Navă', 'Română', '2022-11-15', '0734567894', 'Feminin'),
    (32, 'Tehnician de radar portuar', 'Gheorghe', 'Ioana', 'Navigație', 'Română', '2022-04-30', '0733345675', 'Feminin'),
    (33, 'Responsabil de marketing și comunicare', 'Popa', 'Mihai', 'Marketing și Comunicare', 'Română', '2021-10-25', '0760123456', 'Masculin'),
    (34, 'Specialist în relații cu clienții', 'Andrei', 'Ana', 'Relații cu Clienții', 'Română', '2023-01-08', '0757789017', 'Feminin'),
    (35, 'Tehnician IT portuar', 'Georgescu', 'Vasile', 'IT', 'Română', '2022-07-30', '0712345078', 'Masculin');





CREATE TABLE tblServiciiSpeciale (
	idServiciu INT  PRIMARY KEY,
	TipServicii_Speciale VARCHAR(50),
	id_pasager_serviciu INT,
	CONSTRAINT fk_id_pasager_serviciu FOREIGN KEY (id_pasager_serviciu) 
	REFERENCES tblPasageri(id_Pasager) ON DELETE CASCADE ON UPDATE CASCADE

);





CREATE TABLE tblLimbiStraine (
	id_limbaStraina INT  PRIMARY KEY,
	id_MembruEchipaj_limba INT,
	id_angajat_limba INT,
	nume_limba varchar(100) NOT NULL,
	nivel VARCHAR(50),
	CONSTRAINT fk_id_MembruEchipaj_limba FOREIGN KEY(id_MembruEchipaj_limba) 
	REFERENCES tblEchipajVas (id_MembruEchipaj) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_id_angajat_limba FOREIGN KEY(id_angajat_limba) 
	REFERENCES tblAngajatiPort (IdAngajat) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE tblEscalaVase (
	id_escala INT  PRIMARY KEY,
	id_Vas_escala INT NOT NULL,
	id_Port_escala INT NOT NULL,
	numePortEscala varchar(50),
	data_escala DATE,
	motiv_escala VARCHAR(100)
);




