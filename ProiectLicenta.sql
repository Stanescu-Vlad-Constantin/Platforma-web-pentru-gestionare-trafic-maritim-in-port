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


CREATE TABLE tblPorturi(
	id_Port INT  PRIMARY KEY,
	UNLOCODE VARCHAR(5) UNIQUE NOT NULL,
	numePort VARCHAR(100),
	tara VARCHAR(50),
	oras VARCHAR(50),
	fusOrar DATETIMEOFFSET(0),
	tipPort VARCHAR(50),
	latitudine DECIMAL(10, 8),
    	longitudine DECIMAL(11, 8),
	informatii_de_contact VARCHAR(100)
);

INSERT INTO tblPorturi (id_Port, UNLOCODE, numePort, tara, oras, fusOrar, tipPort, latitudine, longitudine, informatii_de_contact) VALUES
(1, 'USNYC', 'Port of New York', 'USA', 'New York', '2024-04-30 00:08:00 -05:00', 'Container', 40.7128, -74.0060, 'info@portofnewyork.com'),
(2, 'CNHKG', 'Port of Hong Kong', 'China', 'Hong Kong', '2024-04-30 13:08:00 +08:00', 'Container', 22.3193, 114.1694, 'info@porthongkong.cn'),
(3, 'SGSGP', 'Port of Singapore', 'Singapore', 'Singapore', '2024-04-30 13:08:00 +08:00', 'Container', 1.3521, 103.8198, 'info@portofsingapore.sg'),
(4, 'NLRTM', 'Port of Rotterdam', 'Netherlands', 'Rotterdam', '2024-04-30 06:08:00 +01:00', 'Container', 51.9225, 4.4792, 'info@portofrotterdam.nl'),
(5, 'JPTKO', 'Port of Tokyo', 'Japan', 'Tokyo', '2024-04-30 14:08:00 +09:00', 'Container', 35.6895, 139.6917, 'info@portoftokyo.jp'),
(6, 'DEAUX', 'Port of Marseille', 'France', 'Marseille', '2024-04-30 07:08:00 +02:00', 'Container', 43.2965, 5.3698, 'info@portofmarseille.fr'),
(7, 'ESALG', 'Port of Algeciras', 'Spain', 'Algeciras', '2024-04-30 07:08:00 +02:00', 'Container', 36.1408, -5.4569, 'info@portofalgeciras.es'),
(8, 'AUMEL', 'Port of Melbourne', 'Australia', 'Melbourne', '2024-04-30 15:08:00 +10:00', 'Container', -37.8136, 144.9631, 'info@portofmelbourne.com.au'),
(9, 'KRINC', 'Incheon Port', 'South Korea', 'Incheon', '2024-04-30 14:08:00 +09:00', 'Container', 37.4563, 126.7052, 'info@incheonport.kr'),
(10, 'THBKK', 'Port of Bangkok', 'Thailand', 'Bangkok', '2024-04-30 12:08:00 +07:00', 'Container', 13.7563, 100.5018, 'info@portofbangkok.th'),
(11, 'BRSSA', 'Port of Santos', 'Brazil', 'Santos', '2024-04-30 01:08:00 -03:00', 'Container', -23.9542, -46.3330, 'info@portofsantos.com.br'),
(12, 'ARBAH', 'Port of Bahía Blanca', 'Argentina', 'Bahía Blanca', '2024-04-30 02:08:00 -03:00', 'Container', -38.7196, -62.2724, 'info@portofbahiablanca.ar'),
(13, 'EGPSD', 'Port Said', 'Egypt', 'Port Said', '2024-04-30 08:08:00 +02:00', 'Container', 31.2565, 32.2841, 'info@portsaid.eg'),
(14, 'IDJKT', 'Port of Jakarta', 'Indonesia', 'Jakarta', '2024-04-30 13:08:00 +07:00', 'Container', -6.2088, 106.8456, 'info@portofjakarta.id'),
(15, 'NGLOS', 'Apapa Port', 'Nigeria', 'Apapa', '2024-04-30 06:08:00 +01:00', 'Container', 6.4516, 3.3527, 'info@apapaport.ng'),
(16, 'MXVER', 'Port of Veracruz', 'Mexico', 'Veracruz', '2024-04-30 00:08:00 -05:00', 'Container', 19.1738, -96.1342, 'info@portofveracruz.mx'),
(17, 'FRLEH', 'Port of Le Havre', 'France', 'Le Havre', '2024-04-30 07:08:00 +02:00', 'Container', 49.4938, 0.1077, 'info@portoflehavre.fr'),
(18, 'GHTEM', 'Tema Harbour', 'Ghana', 'Tema', '2024-04-30 07:08:00 +00:00', 'Container', 5.6385, -0.0186, 'info@temaharbour.gh'),
(19, 'CAVAN', 'Port of Vancouver', 'Canada', 'Vancouver', '2024-04-30 09:08:00 -07:00', 'Container', 49.2827, -123.1207, 'info@portofvancouver.ca'),
(20, 'PHMNL', 'Port of Manila', 'Philippines', 'Manila', '2024-04-30 14:08:00 +08:00', 'Container', 14.5995, 120.9842, 'info@portofmanila.ph');


CREATE TABLE tblVasePort(
	id_Vas INT  PRIMARY KEY ,
	nrIdentificareIMO VARCHAR(7) UNIQUE NOT NULL,
	nrIdentificareMMSI VARCHAR(9) UNIQUE NOT NULL,
	indicativ_vas VARCHAR(20) UNIQUE NOT NULL,
	tara_de_provenienta VARCHAR(50),
	numeVas VARCHAR(100),
	tipVas VARCHAR(50) NOT NULL,
	TimpEstimatPlecare DATETIME,
	TimpExactPlecare DATETIME,
	portDestinatie INT,
	CONSTRAINT fk_portDestinatie FOREIGN KEY (portDestinatie) 
	REFERENCES tblPorturi(id_Port) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO tblVasePort (id_Vas, numeVas, nrIdentificareIMO, nrIdentificareMMSI, indicativ_vas, tara_de_provenienta, portDestinatie, tipVas, timpExactPlecare, TimpEstimatPlecare) VALUES
(1, 'Oceanic Voyager', '1234567', '987654321', 'OV113', 'United States', 1 , 'Petrolier', '2024-04-15 08:00:00', '2024-04-15 07:55:00'),
(2, 'Pacific Explorer', '2345678', '876543210', 'PE156', 'China', 2 , 'Container', '2024-04-15 10:30:00', '2024-04-15 10:32:00'),
(3, 'Atlantic Trader', '3456789', '765432109', 'AT719', 'United Kingdom', 3 , 'Navă de Marfă', '2024-04-15 12:45:00', '2024-04-15 12:40:00'),
(4, 'Caribbean Princess', '4567890', '654321098', 'CP143', 'Bahamas', 4 , 'Cruiser', '2024-04-15 14:20:00', '2024-04-15 14:18:00'),
(5, 'Mediterranean Spirit', '5678901', '543210987', 'MS466', 'Italy', 5 , 'Croaziera', '2024-04-15 16:00:00', '2024-04-15 15:58:00'),
(6, 'Baltic Queen', '6789012', '432109876', 'BQ749', 'Sweden', 6 , 'Ferry', '2024-04-15 18:30:00', '2024-04-15 18:25:00'),
(7, 'Black Sea Voyager', '7890123', '321098765', 'BSV122', 'Russia', 7 , 'Yacht', '2024-04-15 20:10:00', '2024-04-15 20:08:00'),
(8, 'Adriatic Dream', '8901234', '210487654', 'AD416', 'Croatia', 8 , 'Cruiser', '2024-04-15 22:00:00', '2024-04-15 21:58:00'),
(9, 'North Sea Trader', '9012345', '109876543', 'NST189', 'Norway', 9 , 'Nava de Marfa', '2024-04-16 08:45:00', '2024-04-16 08:42:00'),
(10, 'South Pacific Explorer', '0123456', '098765432', 'SPE223', 'Australia', 10, 'Container', '2024-04-16 10:20:00', '2024-04-16 10:22:00'),
(11, 'Indian Ocean Majesty', '1134567', '187654321', 'IOM476', 'India', 11, 'Cruiser', '2024-04-16 12:00:00', '2024-04-16 11:58:00'),
(12, 'Arctic Explorer', '2345178', '876542210', 'AE781', 'Canada', 12, 'Nava de Cercetare', '2024-04-16 14:30:00', '2024-04-16 14:28:00'),
(13, 'Antarctic Spirit', '3451789', '765442109', 'AS416', 'Argentina', 13, 'Nava de Croaziera', '2024-04-16 16:15:00', '2024-04-16 16:12:00'),
(14, 'Caribbean Pearl', '4567170', '654325098', 'CP729', 'Jamaica', 14 , 'Cruiser', '2024-04-16 18:00:00', '2024-04-16 17:58:00'),
(15, 'Mediterranean Explorer', '1678901', '523210987', 'ME173', 'Greece', 15 , 'Nava de Cercetare', '2024-04-16 20:20:00', '2024-04-16 20:18:00'),
(16, 'Baltic Sea Voyager', '6719012', '432104876', 'BSV476', 'Estonia', 16 , 'Yacht', '2024-04-16 22:10:00', '2024-04-16 22:08:00'),
(17, 'Black Sea Pearl', '7890121', '321098755', 'BSP183', 'Bulgaria', 17, 'Cruiser', '2024-04-17 08:30:00', '2024-04-17 08:28:00'),
(18, 'Adriatic Voyager', '8901235', '210987154', 'AV856', 'Montenegro', 18 , 'Ferry', '2024-04-17 10:00:00', '2024-04-17 09:58:00'),
(19, 'North Sea Spirit', '9012344', '109876143', 'NSS189', 'Denmark', 19, 'Nava de Cercetare', '2024-04-17 12:15:00', '2024-04-17 12:12:00'),
(20, 'South Pacific Pearl', '0121556', '098265432', 'SPP183', 'Fiji', 20 , 'Croaziera', '2024-04-17 14:00:00', '2024-04-17 13:58:00');

/*(21, 'Indian Ocean Explorer', '1324567', '917654321', 'IOE416', 'Seychelles', 21 , 'Yacht', '2024-04-17 16:20:00', '2024-04-17 16:18:00'),
(22, 'Arctic Spirit', '2345618', '876543211', 'AS788', 'Greenland', 22 , 'Nava de Marfa', '2024-04-17 18:45:00', '2024-04-17 18:42:00'),
(23, 'Antarctic Explorer', '3451689', '765132109', 'AE451', 'Chile', 23 , 'Container', '2024-04-17 20:30:00', '2024-04-17 20:32:00'),
(24, 'Caribbean Voyager', '4567190', '654311098', 'CV781', 'Dominican Republic', 24 , 'Croaziera', '2024-04-17 22:10:00', '2024-04-17 22:08:00'),
(25, 'Mediterranean Pearl', '5618901', '541210987', 'MP113', 'Spain', 25 , 'Cruiser', '2024-04-18 08:20:00', '2024-04-18 08:18:00'),
(26, 'Baltic Explorer', '6789031', '432109176', 'BE476', 'Finland', 26 , 'Nava de Cercetare', '2024-04-18 10:00:00', '2024-04-18 09:58:00'),
(27, 'Black Sea Explorer', '7892123', '321198765', 'BSE113', 'Romania', 27, 'Container', '2024-04-18 12:15:00', '2024-04-18 12:12:00'),
(28, 'Adriatic Spirit', '8901435', '210087154', 'AS256', 'Italy', 28 , 'Yacht', '2024-04-18 14:30:00', '2024-04-18 14:28:00'),
(29, 'North Sea Explorer', '9022345', '109176543', 'NSE189', 'United Kingdom', 29, 'Nava de Marfa', '2024-04-18 16:00:00', '2024-04-18 15:58:00'),
(30, 'South Pacific Spirit', '0324456', '018765432', 'SPS143', 'New Zealand', 30, 'Croaziera', '2024-04-18 18:20:00', '2024-04-18 18:18:00');*/






CREATE TABLE tblCaracteristiciVas(
	id_Caracteristici SMALLINT  PRIMARY KEY ,
	vas INT,
	producator VARCHAR(50) NOT NULL,
	tipVas VARCHAR(50) NOT NULL,
	tonaj_brut DECIMAL(10,2),
	latime DECIMAL(10,2),
	adancime DECIMAL (10,2),
	anulConstruirii SMALLINT DEFAULT 0,
	CONSTRAINT fk_vas FOREIGN KEY (vas) 
	REFERENCES tblVasePort(id_Vas) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblCaracteristiciVas (id_Caracteristici, vas, producator, tipVas, tonaj_brut, latime, adancime, anulConstruirii)
VALUES 
(1, 1, 'Oceanic Shipyards', 'Cargo', 5000.00, 20.5, 10.2, 2015),
(2, 2, 'Maritime Builders', 'Oil Tanker', 10000.00, 25.3, 12.5, 2010),
(3, 3, 'Seafarer Industries', 'Container Ship', 8000.00, 22.0, 11.0, 2018),
(4, 4, 'Harbor Master', 'Bulk Carrier', 6000.00, 21.8, 11.3, 2012),
(5, 5, 'Fishermans Fleet', 'Fishing Vessel', 2000.00, 15.0, 8.0, 2019),
(6, 6, 'Luxury Yacht Co.', 'Passenger Ship', 7000.00, 24.0, 9.5, 2016),
(7, 7, 'Tugboat Technologies', 'Tugboat', 1500.00, 12.5, 6.8, 2013),
(8, 8, 'Sailors Dream', 'Yacht', 3000.00, 18.2, 8.7, 2017),
(9, 9, 'Exploration Enterprises', 'Research Vessel', 4000.00, 19.5, 10.0, 2014),
(10, 10, 'Cruise Liners Ltd.', 'Cruise Ship', 9000.00, 28.0, 13.0, 2011),
(11, 11, 'Ferry Crafters', 'Ferry', 6000.00, 22.0, 11.5, 2014),
(12, 12, 'Arctic Shipworks', 'Icebreaker', 8500.00, 23.5, 12.0, 2013),
(13, 13, 'Submarine Solutions', 'Submarine', 3000.00, 18.0, 7.5, 2017),
(14, 14, 'Sail Master', 'Sailing Ship', 1200.00, 14.5, 7.0, 2019),
(15, 15, 'Barge Builders Inc.', 'Barge', 4000.00, 20.0, 10.0, 2015),
(16, 16, 'Hovercraft Innovations', 'Hovercraft', 2500.00, 16.8, 8.5, 2016),
(17, 17, 'Trawler Tech', 'Fishing Trawler', 1800.00, 13.2, 6.5, 2018),
(18, 18, 'Dredge Dynamics', 'Dredger', 7000.00, 21.0, 10.8, 2012),
(19, 19, 'Fireboat Fabrications', 'Fireboat', 2200.00, 15.8, 7.8, 2017),
(20, 20, 'Pilot Boat Productions', 'Pilot Boat', 1600.00, 12.0, 6.0, 2019);
/*
(21, 21, 'Motor Yacht Masters', 'Motor Yacht', 3500.00, 17.5, 8.0, 2016),
(22, 22, 'Cargo Carrier Creations', 'Cargo Barge', 4500.00, 18.0, 9.0, 2003);*/





CREATE TABLE tblVaseAsteptate(
	id_Vas_nou INT  PRIMARY KEY,
	nrIdentificareIMO VARCHAR(7) UNIQUE NOT NULL,
	nrIdentificareMMSI VARCHAR(9) UNIQUE NOT NULL,
	indicativ_vas VARCHAR(20) UNIQUE NOT NULL,
	tara_de_provenienta VARCHAR(50),
	numeVas VARCHAR(50) NOT NULL,
	tipVas VARCHAR (50) NOT NULL,
	timpEstimatSosire DATETIME,
	timpExactSosire DATETIME,
	portProvenienta INT,
	CONSTRAINT fk_portProvenienta FOREIGN KEY (portProvenienta) 
	REFERENCES tblPorturi(id_Port) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblVaseAsteptate (id_Vas_nou, numeVas, nrIdentificareIMO, nrIdentificareMMSI, indicativ_vas, tara_de_provenienta, tipVas, timpEstimatSosire, timpExactSosire, portProvenienta)
VALUES
    (1, 'Oceanic Voyager', '1234567', '987654321', 'OV113', 'United States', 'Petrolier', '2024-04-15 09:30:00', '2024-04-15 09:45:00', 1),
    (2, 'Marine Prince', '2345678', '876543210', 'MP456', 'China', 'Cargo', '2024-04-16 11:15:00', '2024-04-16 11:30:00', 2),
    (3, 'Atlantic Trader', '3456789', '765432109', 'AT789', 'Germany', 'Tanker', '2024-04-17 13:45:00', '2024-04-17 14:00:00', 3),
    (4, 'Pacific Jewel', '4567890', '654321098', 'PJ123', 'Australia', 'Cruise', '2024-04-18 16:00:00', '2024-04-18 16:15:00', 4),
    (5, 'Arctic Spirit', '5678901', '543210987', 'AS345', 'Norway', 'Container', '2024-04-19 18:30:00', '2024-04-19 18:45:00', 5),
    (6, 'Mediterranean Queen', '6789012', '432109876', 'MQ678', 'Italy', 'Petrolier', '2024-04-20 21:00:00', '2024-04-20 21:15:00', 6),
    (7, 'Caribbean Princess', '7890123', '321098765', 'CP987', 'Bahamas', 'Cruise', '2024-04-21 23:45:00', '2024-04-22 00:00:00', 7),
    (8, 'Indian Voyager', '8901234', '210987654', 'IV321', 'India', 'Tanker', '2024-04-23 02:15:00', '2024-04-23 02:30:00', 8),
    (9, 'South China Sea Explorer', '9012345', '109876543', 'SCSE23', 'China', 'Container', '2024-04-24 04:30:00', '2024-04-24 04:45:00', 9),
    (10, 'North Sea Trader', '0123456', '098765432', 'NST765', 'Netherlands', 'Cargo', '2024-04-25 06:45:00', '2024-04-25 07:00:00', 10),
    (11, 'Atlantic Voyager', '9234567', '957654321', 'AV543', 'United Kingdom', 'Tanker', '2024-04-26 09:00:00', '2024-04-26 09:15:00', 11),
    (12, 'Tasmanian Explorer', '1345678', '836543210', 'TE210', 'Australia', 'Container', '2024-04-27 11:30:00', '2024-04-27 11:45:00', 12),
    (13, 'Bering Trader', '3556789', '735432109', 'BT876', 'Russia', 'Cargo', '2024-04-28 13:45:00', '2024-04-28 14:00:00', 13),
    (14, 'Adriatic Princess', '1567890', '634321098', 'AP109', 'Italy', 'Cruise', '2024-04-29 16:15:00', '2024-04-29 16:30:00', 14),
    (15, 'Hawaiian Spirit', '2678901', '533210987', 'HS432', 'USA', 'Tanker', '2024-04-30 18:30:00', '2024-04-30 18:45:00', 15),
    (16, 'Galapagos Queen', '5789012', '422109876', 'GQ567', 'Ecuador', 'Container', '2024-05-01 21:00:00', '2024-05-01 21:15:00', 16),
    (17, 'Antarctic Voyager', '1890123', '341098765', 'AV876', 'Antarctica', 'Petrolier', '2024-05-02 23:15:00', '2024-05-02 23:30:00', 17),
    (18, 'Red Sea Explorer', '8701234', '220987654', 'RE654', 'Egypt', 'Cargo', '2024-05-03 02:45:00', '2024-05-03 03:00:00', 18),
    (19, 'Mekong Trader', '9112345', '119876543', 'MT543', 'Vietnam', 'Tanker', '2024-05-04 05:00:00', '2024-05-04 05:15:00', 19),
    (20, 'Amazon Jewel', '0143456', '096765432', 'AJ765', 'Brazil', 'Cruise', '2024-05-05 07:30:00', '2024-05-05 07:45:00', 20);
	/*
    (21, 'Yellow Sea Spirit', '4234567', '981654321', 'YSS321', 'China', 'Container', '2024-05-06 09:45:00', '2024-05-06 10:00:00', 21),
    (22, 'Arabian Voyager', '1345678', '876523210', 'AV876', 'UAE', 'Tanker', '2024-05-07 12:00:00', '2024-05-07 12:15:00', 22),
    (23, 'Caribbean Trader', '2456789', '765532109', 'CT109', 'Jamaica', 'Cargo', '2024-05-08 14:15:00', '2024-05-08 14:30:00', 23),
    (24, 'Indian Princess', '3567890', '654311098', 'IP098', 'India', 'Cruise', '2024-05-09 16:45:00', '2024-05-09 17:00:00', 24)*/


CREATE TABLE tblStatisticiVase(
	id_Statistici SMALLINT  PRIMARY KEY,
	data_curenta DATETIME,
	nr_vasePortGalati SMALLINT,
	nr_vasePlecateLast24h SMALLINT,
	nr_vaseSositeLast24h SMALLINT,
	nr_vaseAsteptateNext24h SMALLINT
);

INSERT INTO tblStatisticiVase (id_Statistici, data_curenta, nr_vasePortGalati, nr_vaseSositeLast24h, nr_vasePlecateLast24h, nr_vaseAsteptateNext24h) VALUES
(1,'2024-04-30 00:00:00', 150, 25, 20, 30),
(2,'2024-05-01 00:00:00', 180, 30, 25, 35),
(3,'2024-05-02 00:00:00', 170, 28, 26, 40),
(4,'2024-05-03 00:00:00', 200, 35, 30, 45),
(5,'2024-05-04 00:00:00', 220, 40, 35, 50),
(6,'2024-05-05 00:00:00', 210, 35, 30, 55),
(7,'2024-05-06 00:00:00', 190, 32, 28, 60),
(8,'2024-05-07 00:00:00', 240, 45, 40, 65),
(9,'2024-05-08 00:00:00', 250, 50, 45, 70),
(10,'2024-05-09 00:00:00', 270, 55, 50, 75),
(11,'2024-05-10 00:00:00', 260, 52, 48, 80),
(12,'2024-05-11 00:00:00', 280, 58, 53, 85),
(13,'2024-05-12 00:00:00', 300, 60, 55, 90),
(14,'2024-05-13 00:00:00', 320, 65, 60, 95),
(15,'2024-05-14 00:00:00', 310, 60, 55, 100),
(16,'2024-05-15 00:00:00', 350, 70, 65, 105),
(17,'2024-05-16 00:00:00', 380, 75, 70, 110),
(18,'2024-05-17 00:00:00', 360, 72, 68, 115),
(19,'2024-05-18 00:00:00', 400, 80, 75, 120),
(20,'2024-05-19 00:00:00', 420, 85, 80, 125),
(21,'2024-05-20 00:00:00', 410, 82, 78, 130),
(22,'2024-05-21 00:00:00', 450, 90, 85, 135),
(23,'2024-05-22 00:00:00', 480, 95, 90, 140),
(24,'2024-05-23 00:00:00', 500, 100, 95, 145),
(25,'2024-05-24 00:00:00', 460, 92, 88, 150),
(26,'2024-05-25 00:00:00', 520, 105, 100, 155),
(27,'2024-05-26 00:00:00', 540, 110, 105, 160),
(28,'2024-05-27 00:00:00', 560, 115, 110, 165),
(29,'2024-05-28 00:00:00', 530, 108, 102, 170),
(30,'2024-05-29 00:00:00', 600, 120, 115, 175);


CREATE TABLE tblLocuriAcostare(
    	doc_id INT  PRIMARY KEY,
	nr_loc VARCHAR(10) UNIQUE,
    	tipVas VARCHAR(50),
	lungime_doc DECIMAL (10,2),
	adancime_maxima DECIMAL (10,2),
    	Status_disponibilitate VARCHAR(100)
);

INSERT INTO tblLocuriAcostare (doc_id, nr_loc, tipVas, lungime_doc, adancime_maxima, Status_disponibilitate)
VALUES
    (1,'A101', 'Barca mica', 8, 4, 'Disponibil'),
    (2,'A102', 'Barca mica', 8, 4, 'Ocupat'),
    (3,'B201', 'Vas mare', 25, 12, 'Disponibil'),
    (4,'B202', 'Vas mare', 25, 12, 'Disponibil'),
    (5,'C301', 'Cargo', 40, 20, 'Disponibil'),
    (6,'C302', 'Cargo', 40, 20, 'Ocupat'),
    (7,'D401', 'Yacht', 18, 8, 'Disponibil'),
    (8,'D402', 'Yacht', 18, 8, 'Disponibil'),
    (9,'E501', 'Barca de pescuit', 10, 5, 'Disponibil'),
    (10,'E502', 'Barca de pescuit', 10, 5, 'Disponibil'),
    (11,'F601', 'Barca mica', 8, 4, 'Disponibil'),
    (12,'F602', 'Barca mica', 8, 4, 'Disponibil'),
    (13,'G701', 'Vas mare', 25, 12, 'Ocupat'),
    (14,'G702', 'Vas mare', 25, 12, 'Disponibil'),
    (15,'H801', 'Cargo', 40, 20, 'Disponibil'),
    (16,'H802', 'Cargo', 40, 20, 'Disponibil'),
    (17,'I901', 'Yacht', 18, 8, 'Disponibil'),
    (18,'I902', 'Yacht', 18, 8, 'Ocupat'),
    (19,'J1001', 'Barca de pescuit', 10, 5, 'Disponibil'),
    (20,'J1002', 'Barca de pescuit', 10, 5, 'Ocupat');



CREATE TABLE tblEchipajVas (
	id_MembruEchipaj INT  PRIMARY KEY,
	id_Vas_Echipaj INT,
	Rol varchar(50) NOT NULL,
	numeMembruEchipaj VARCHAR(50) NOT NULL,
    	prenumeMembruEchipaj VARCHAR(50) NOT NULL,
	nrAni_Experienta TINYINT DEFAULT 0,
	nationalitate varchar(100),
	data_de_nastere date,
	nrTelefon VARCHAR(25) UNIQUE,
	Sex_membruEchipaj VARCHAR(50),
	CONSTRAINT fk_id_Vas_Echipaj FOREIGN KEY (id_Vas_Echipaj) 
	REFERENCES tblVasePort(id_Vas) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblEchipajVas (id_MembruEchipaj, id_Vas_Echipaj, Rol, numeMembruEchipaj, prenumeMembruEchipaj, nrAni_Experienta, nationalitate, data_de_nastere, nrTelefon, Sex_membruEchipaj)
VALUES
(1, 1, 'Capitan', 'Smith', 'John', 15, 'Americană', '1970-05-15', '+1 (555) 123-4567', 'Masculin'),
(2, 1, 'Inginer', 'Garcia', 'Maria', 10, 'Spaniolă', '1980-03-20', '+34 123 456 789', 'Feminin'),
(3, 1, 'Navigator', 'Choi', 'Seung', 8, 'Coreeană', '1985-08-10', '+82 10-1234-5678', 'Masculin'),
(4, 1, 'Electrician', 'Müller', 'Anna', 6, 'Germană', '1990-01-25', '+49 1234 567890', 'Feminin'),
(5, 1, 'Maistru', 'Kawasaki', 'Takashi', 12, 'Japoneză', '1975-11-30', '+81 90-1234-5678', 'Masculin'),
(6, 2, 'Ofițer de securitate', 'Nguyen', 'Hoa', 18, 'Vietnameză', '1965-09-05', '+84 123 456 789', 'Masculin'),
(7, 2, 'Inginer mecanic', 'Lopez', 'Elena', 14, 'Mexicană', '1972-04-12', '+52 1 55 1234 5678', 'Feminin'),
(8, 2, 'Bucătar', 'Kumar', 'Anjali', 9, 'Indiană', '1988-07-20', '+91 12345 67890', 'Feminin'),
(9, 2, 'Navigator', 'Andersen', 'Lars', 7, 'Norvegiană', '1993-02-18', '+47 12 34 56 78', 'Masculin'),
(10, 2, 'Doctor', 'Park', 'Minji', 11, 'Coreeană', '1983-12-10', '+82 10-9876-5432', 'Feminin'),
(11, 3, 'Capitan', 'Jansen', 'Andreas', 20, 'Olandeză', '1960-03-18', '+31 6 12345678', 'Masculin'),
(12, 3, 'Inginer electrician', 'Fernandez', 'Maria', 16, 'Spaniolă', '1978-10-25', '+34 600 123 456', 'Feminin'),
(13, 3, 'Navigator', 'Wong', 'Wei', 10, 'Chineză', '1989-06-15', '+86 138 0012 3456', 'Masculin'),
(14, 3, 'Asistent medical', 'Patel', 'Ananya', 8, 'Indiană', '1992-09-20', '+91 98765 43210', 'Feminin'),
(15, 3, 'Maistru', 'Garcia', 'Javier', 13, 'Spaniolă', '1973-05-30', '+34 612 345 678', 'Masculin'),
(16, 4, 'Capitan adjunct', 'Müller', 'Hans', 22, 'Germană', '1958-07-10', '+49 172 1234567', 'Masculin'),
(17, 4, 'Inginer de sistem', 'Choi', 'Yuna', 18, 'Coreeană', '1967-12-05', '+82 10-8765-4321', 'Feminin'),
(18, 4, 'Ofițer de comunicații', 'Smith', 'Sophie', 11, 'Americană', '1982-11-18', '+1 (555) 987-6543', 'Feminin'),
(19, 4, 'Electrician', 'Nguyen', 'Quang', 9, 'Vietnameză', '1991-04-22', '+84 123 456 789', 'Masculin'),
(20, 4, 'Gestionar', 'Patel', 'Mira', 15, 'Indiană', '1977-08-08', '+91 98765 43210', 'Feminin');





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

INSERT INTO tblPasageri (id_Pasager, id_Vas_Pasageri, numePasager, prenumePasager, nationalitate, data_de_nastere, Cod_de_bare_Bilet, nrLoc_Scaun, port_imbarcare, nrTelefon, Sex_Pasager, email)
VALUES
(1, 1, 'Smith', 'Emma', 'Americană', '1990-02-15', 'ABC123456789', 'A12', 'New York', '+1 (555) 123-4567', 'Feminin', 'emma.smith@example.com'),
(2, 1, 'Garcia', 'Luis', 'Spaniolă', '1985-07-20', 'DEF987654321', 'B23', 'Barcelona', '+34 123 456 789', 'Masculin', 'luis.garcia@example.com'),
(3, 1, 'Kim', 'Soo Min', 'Coreeană', '1995-04-10', 'GHI246813579', 'C34', 'Seoul', '+82 10-9876-5432', 'Feminin', 'soomin.kim@example.com'),
(4, 1, 'Müller', 'Hans', 'Germană', '1980-12-25', 'JKL369258147', 'D45', 'Berlin', '+49 172 1234567', 'Masculin', 'hans.muller@example.com'),
(5, 1, 'Suzuki', 'Takahiro', 'Japoneză', '1978-10-30', 'MNO147258369', 'E56', 'Tokyo', '+81 90-1234-5678', 'Masculin', 'takahiro.suzuki@example.com'),
(6, 1, 'Nguyen', 'Thi Minh', 'Vietnameză', '1992-03-05', 'PQR582369147', 'F67', 'Ho Chi Minh City', '+84 123 456 789', 'Feminin', 'minh.nguyen@example.com'),
(7, 1, 'Lopez', 'Ana', 'Mexicană', '1987-09-12', 'STU951753852', 'G78', 'Mexico City', '+52 1 55 1234 5678', 'Feminin', 'ana.lopez@example.com'),
(8, 1, 'Kumar', 'Rajesh', 'Indiană', '1983-06-18', 'VWX369852147', 'H89', 'Mumbai', '+91 12345 67890', 'Masculin', 'rajesh.kumar@example.com'),
(9, 1, 'Andersen', 'Erik', 'Norvegiană', '1975-11-08', 'YZA753951852', 'I90', 'Oslo', '+47 12 34 56 78', 'Masculin', 'erik.andersen@example.com'),
(10, 1, 'Park', 'Ji Eun', 'Coreeană', '1998-08-22', 'BCD123789456', 'J01', 'Busan', '+82 10-1234-5678', 'Feminin', 'jieun.park@example.com'),
(11, 1, 'Jansen', 'Sophie', 'Olandeză', '1993-05-17', 'EFG456123789', 'K12', 'Amsterdam', '+31 6 12345678', 'Feminin', 'sophie.jansen@example.com'),
(12, 1, 'Fernandez', 'Diego', 'Spaniolă', '1988-02-03', 'HIJ789456123', 'L23', 'Madrid', '+34 600 123 456', 'Masculin', 'diego.fernandez@example.com'),
(13, 1, 'Wong', 'Hui Ying', 'Chineză', '1990-09-28', 'KLM987654321', 'M34', 'Shanghai', '+86 138 0012 3456', 'Feminin', 'huiying.wong@example.com'),
(14, 1, 'Patel', 'Anil', 'Indiană', '1985-04-14', 'NOP369852147', 'N45', 'Mumbai', '+91 98765 43210', 'Masculin', 'anil.patel@example.com'),
(15, 1, 'Garcia', 'Elena', 'Spaniolă', '1995-11-20', 'QRS123456789', 'O56', 'Barcelona', '+34 612 345 678', 'Feminin', 'elena.garcia@example.com'),
(16, 1, 'Müller', 'Anna', 'Germană', '1987-07-05', 'TUV987654321', 'P67', 'Berlin', '+49 173 4567890', 'Feminin', 'anna.muller@example.com'),
(17, 1, 'Choi', 'Yong Jun', 'Coreeană', '1982-01-10', 'VWX369852741', 'Q78', 'Seoul', '+82 10-8765-4321', 'Masculin', 'yongjun.choi@example.com'),
(18, 1, 'Smith', 'Jennifer', 'Americană', '1973-08-28', 'YZA123456789', 'R89', 'Los Angeles', '+1 (555) 987-6543', 'Feminin', 'jennifer.smith@example.com'),
(19, 1, 'Nguyen', 'Minh', 'Vietnameză', '1996-06-15', 'BCD789456123', 'S90', 'Ho Chi Minh City', '+84 123 456 789', 'Masculin', 'minh.nguyen@example.com'),
(20, 1, 'Patel', 'Neha', 'Indiană', '1991-03-02', 'EFG369852147', 'T01', 'Ahmedabad', '+91 98765 43210', 'Feminin', 'neha.patel@example.com');





CREATE TABLE tblDocumentePasageri (
   	document_id_pasager INT  PRIMARY KEY,
   	id_Pasager_doc INT,	
    	Tip_document_pasager VARCHAR(50) NOT NULL,
    	numar_Document VARCHAR(50) UNIQUE NOT NULL,
    	autoritatea_emitenta VARCHAR(50) NOT NULL,
	data_emiterii DATE,
    	data_expirarii DATE,
    	CONSTRAINT fk_id_Pasager FOREIGN KEY (id_Pasager_doc) 
	REFERENCES tblPasageri(id_Pasager) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblDocumentePasageri (document_id_pasager, id_Pasager_doc, Tip_document_pasager, numar_Document, autoritatea_emitenta, data_emiterii, data_expirarii)
VALUES
(1, 1, 'Pașaport', '123456787', 'US Department of State', '2019-05-10', '2029-05-10'),
(2, 2, 'Pașaport', '987654322', 'Ministerio de Asuntos Exteriores', '2020-03-15', '2030-03-15'),
(3, 3, 'Pașaport', '456489012', 'Ministry of Foreign Affairs', '2018-07-20', '2028-07-20'),
(4, 4, 'Pașaport', '321254987', 'Bundesministerium des Innern', '2017-12-25', '2027-12-25'),
(5, 5, 'Pașaport', '135192468', 'Ministry of Foreign Affairs', '2019-10-30', '2029-10-30'),
(6, 6, 'Pașaport', '246201357', 'Bộ Ngoại giao Việt Nam', '2016-09-05', '2026-09-05'),
(7, 7, 'Pașaport', '987654333', 'Secretaría de Relaciones Exteriores', '2020-04-12', '2030-04-12'),
(8, 8, 'Pașaport', '123456786', 'Ministry of External Affairs', '2018-07-20', '2028-07-20'),
(9, 9, 'Pașaport', '456789012', 'Utenriksdepartementet', '2015-11-08', '2025-11-08'),
(10, 10, 'Pașaport', '789456123', 'Ministry of Foreign Affairs', '2021-06-22', '2031-06-22'),
(11, 11, 'Pașaport', '234567891', 'Ministerie van Buitenlandse Zaken', '2017-12-17', '2027-12-17'),
(12, 12, 'Pașaport', '567891234', 'Ministerio de Asuntos Exteriores', '2019-09-03', '2029-09-03'),
(13, 13, 'Pașaport', '789012245', 'Ministry of Foreign Affairs', '2018-04-28', '2028-04-28'),
(14, 14, 'Pașaport', '012345678', 'Ministry of External Affairs', '2016-04-14', '2026-04-14'),
(15, 15, 'Pașaport', '234567891', 'Ministerio de Asuntos Exteriores', '2020-11-20', '2030-11-20'),
(16, 16, 'Pașaport', '456789012', 'Bundesministerium des Innern', '2018-07-05', '2028-07-05'),
(17, 17, 'Pașaport', '789012345', 'Ministry of Foreign Affairs', '2015-01-10', '2025-01-10'),
(18, 18, 'Pașaport', '123456783', 'US Department of State', '2016-08-28', '2026-08-28'),
(19, 19, 'Pașaport', '345678901', 'Bộ Ngoại giao Việt Nam', '2019-06-15', '2029-06-15'),
(20, 20, 'Pașaport', '678901234', 'Ministry of External Affairs', '2017-03-02', '2027-03-02');



CREATE TABLE tblDocumenteEchipajVas (
    	document_id_echipaj INT  PRIMARY KEY,
    	id_MembruEchipaj_doc INT, 
    	Tip_document_echipaj VARCHAR(50) NOT NULL,
    	numar_Document VARCHAR(50) UNIQUE NOT NULL,
    	autoritatea_emitenta VARCHAR(50) NOT NULL,
	data_emiterii DATE,
    	data_expirarii DATE,
    	CONSTRAINT fk_id_MembruEchipaj FOREIGN KEY (id_MembruEchipaj_doc) 
	REFERENCES tblEchipajVas(id_MembruEchipaj) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblDocumenteEchipajVas (document_id_echipaj, id_MembruEchipaj_doc, Tip_document_echipaj, numar_Document, autoritatea_emitenta, data_emiterii, data_expirarii)
VALUES
(1, 1, 'Licență de capitan', '123456', 'Autoritatea Maritimă Română', '2018-01-10', '2023-01-10'),
(2, 2, 'Certificat de inginer', '987654', 'Autoritatea Maritimă Spaniolă', '2019-03-15', '2024-03-15'),
(3, 3, 'Licență de navigator', '456789', 'Autoritatea Maritimă Coreeană', '2020-07-20', '2025-07-20'),
(4, 4, 'Certificat de electrician', '321654', 'Autoritatea Maritimă Germană', '2017-12-25', '2022-12-25'),
(5, 5, 'Certificat de mecanic', '135792', 'Autoritatea Maritimă Japoneză', '2019-10-30', '2024-10-30'),
(6, 6, 'Certificat de securitate', '246801', 'Autoritatea Maritimă Vietnamiană', '2016-09-05', '2021-09-05'),
(7, 7, 'Licență de ofițer', '987154', 'Autoritatea Maritimă Mexicană', '2020-04-12', '2025-04-12'),
(8, 8, 'Certificat de bucătar', '123456', 'Autoritatea Maritimă Indiană', '2018-07-20', '2023-07-20'),
(9, 9, 'Licență de navigator', '451789', 'Autoritatea Maritimă Norvegiană', '2015-11-08', '2020-11-08'),
(10, 10, 'Licență de medic', '789456', 'Autoritatea Maritimă Coreeană', '2021-06-22', '2026-06-22'),
(11, 11, 'Licență de ofițer', '234567', 'Autoritatea Maritimă Olandeză', '2017-12-17', '2022-12-17'),
(12, 12, 'Certificat de inginer', '567890', 'Autoritatea Maritimă Spaniolă', '2019-09-03', '2024-09-03'),
(13, 13, 'Certificat de navigator', '789012', 'Autoritatea Maritimă Chineză', '2018-04-28', '2023-04-28'),
(14, 14, 'Certificat de medic', '012345', 'Autoritatea Maritimă Indiană', '2016-04-14', '2021-04-14'),
(15, 15, 'Certificat de maistru', '234567', 'Autoritatea Maritimă Spaniolă', '2020-11-20', '2025-11-20'),
(16, 16, 'Certificat de electrician', '455789', 'Autoritatea Maritimă Germană', '2018-07-05', '2023-07-05'),
(17, 17, 'Certificat de navigator', '789012', 'Autoritatea Maritimă Chineză', '2015-01-10', '2020-01-10'),
(18, 18, 'Licență de capitan', '113456', 'Autoritatea Maritimă Română', '2016-08-28', '2021-08-28'),
(19, 19, 'Certificat de securitate', '345678', 'Autoritatea Maritimă Vietnamiană', '2019-06-15', '2024-06-15'),
(20, 20, 'Certificat de bucătar', '678901', 'Autoritatea Maritimă Indiană', '2017-03-02', '2022-03-02');



CREATE TABLE tblBagajePasageri (
	id_bagaj INT  PRIMARY KEY,
	id_pasager_bagaje INT ,
	greutate DECIMAL(10,2),
	Tip_bagaj VARCHAR(50) NOT NULL,
	CONSTRAINT fk_id_pasager_bagaje FOREIGN KEY (id_pasager_bagaje) 
	REFERENCES tblPasageri(id_Pasager) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblBagajePasageri (id_bagaj, id_pasager_bagaje, greutate, Tip_bagaj)
VALUES
(1, 1, 20.5, 'Valiză'),
(2, 2, 15.2, 'Rucsac'),
(3, 3, 18.7, 'Troller'),
(4, 4, 23.0, 'Geantă de mână'),
(5, 5, 12.8, 'Valiză'),
(6, 6, 10.0, 'Geantă de mână'),
(7, 7, 14.5, 'Rucsac'),
(8, 8, 21.3, 'Troller'),
(9, 9, 17.9, 'Valiză'),
(10, 10, 19.6, 'Troller'),
(11, 11, 16.4, 'Geantă de mână'),
(12, 12, 22.1, 'Rucsac'),
(13, 13, 18.3, 'Troller'),
(14, 14, 25.0, 'Valiză'),
(15, 15, 13.7, 'Geantă de mână'),
(16, 16, 19.8, 'Rucsac'),
(17, 17, 16.2, 'Troller'),
(18, 18, 24.5, 'Valiză'),
(19, 19, 11.9, 'Geantă de mână'),
(20, 20, 17.0, 'Troller');


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
	TipServicii_Speciale VARCHAR(100),
	id_pasager_serviciu INT,
	CONSTRAINT fk_id_pasager_serviciu FOREIGN KEY (id_pasager_serviciu) 
	REFERENCES tblPasageri(id_Pasager) ON DELETE CASCADE ON UPDATE CASCADE

);

INSERT INTO tblServiciiSpeciale (idServiciu, TipServicii_Speciale, id_pasager_serviciu)
VALUES
(1, 'Asistență la scaun cu rotile', 1),
(2, 'Preferințe pentru animale de companie în cabina pasagerilor', 2),
(3, 'Asistență pentru nevăzători', 4),
(4, 'Asistență pentru nevăzători', 5),
(5, 'Asistență pentru surzi', 7),
(6, 'Asistență la scaun cu rotile', 9),
(7, 'Asistență la scaun cu rotile', 10),
(8, 'Asistență pentru surzi', 14),
(9, 'Asistență la scaun cu rotile', 16),
(10, 'Asistență pentru nevăzători', 19);





/*CREATE TABLE tblLimbiStraine (
	id_limbaStraina INT  PRIMARY KEY,
	id_MembruEchipaj_limba INT,
	id_angajat_limba INT,
	nume_limba varchar(100) NOT NULL,
	nivel VARCHAR(50),
	CONSTRAINT fk_id_MembruEchipaj_limba FOREIGN KEY(id_MembruEchipaj_limba) 
	REFERENCES tblEchipajVas (id_MembruEchipaj) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_id_angajat_limba FOREIGN KEY(id_angajat_limba) 
	REFERENCES tblAngajatiPort (IdAngajat) ON DELETE CASCADE ON UPDATE CASCADE
);*/



CREATE TABLE tblEscalaVase (
	id_escala INT  PRIMARY KEY,
	id_Vas_escala INT NOT NULL,
	id_Port_escala INT NOT NULL,
	numePortEscala varchar(50),
	data_escala DATE,
	motiv_escala VARCHAR(100),
	CONSTRAINT fk_id_VasEscala FOREIGN KEY(id_Vas_Escala) 
	REFERENCES tblVaseAsteptate (id_Vas_nou) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_id_PortEscala FOREIGN KEY(id_Port_escala) 
	REFERENCES tblPorturi (id_Port) ON DELETE CASCADE ON UPDATE CASCADE
);



