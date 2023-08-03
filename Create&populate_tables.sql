CREATE table echipe(nume varchar(20) PRIMARY KEY, oras varchar(20), nr_victorii numeric, nr_infrangeri numeric, nume_antrenor varchar(20), prenume_antrenor varchar(20))
INSERT INTO echipe VALUES ('CSM Oradea', 'Oradea', 5, 0, 'Achim', 'Cristian')
INSERT INTO echipe VALUES ('UBT Cluj-Napoca', 'Cluj-Napoca', 4, 1, 'Silvăsan', 'Mihai')
INSERT INTO echipe VALUES ('CSU Sibiu', 'Sibiu', 3, 2, 'Fleseriu', 'Dan')
INSERT INTO echipe VALUES ('CSO Voluntari', 'Voluntari', 2, 3, 'Ocokoljic', 'Sasha')
INSERT INTO echipe VALUES ('BCM Arges-Pitesti', 'Pitesti', 1, 5, 'Costescu', 'Tudor')
INSERT INTO echipe VALUES ('SCM Timisoara', 'Timisoara', 0, 6, 'Petricevic', 'Dragan')
SELECT *
FROM echipe


CREATE table arbitrii(id char(3) PRIMARY KEY, nume varchar(30), prenume varchar(30), varsta numeric, vechime numeric)
INSERT INTO arbitrii VALUES ('100', 'Ciulin', 'Marius', 45, 15);
INSERT INTO arbitrii VALUES ('110', 'Stoica', 'Ciprian', 43, 11);
INSERT INTO arbitrii VALUES ('120', 'Stretea', 'Victor', 34, 10);
INSERT INTO arbitrii VALUES ('130', 'Breban', 'Darius', 30, 6);
INSERT INTO arbitrii VALUES ('140', 'Veres', 'Marian', 35, 8)
INSERT INTO arbitrii VALUES ('150', 'Fernea', 'Andrei', 33, 7)
SELECT *
FROM arbitrii


CREATE table terenuri(nr_inreg char(4) PRIMARY KEY, denumire char(20), oras char(15), capacitate numeric)
INSERT INTO terenuri
VALUES('1113', 'Oradea Arena', 'Oradea', 5300)
SELECT *
FROM terenuri


CREATE table jucatori(id_jucator varchar(4) PRIMARY KEY, nume varchar(15), prenume varchar(15), varsta numeric, inaltime numeric, pozitie numeric, nume_echipa varchar(20) REFERENCES echipe(nume))
/*alter table jucatori modify (nume_echipa varchar(25))*/
INSERT INTO jucatori VALUES('20','Richard', 'Kris', 32, 192, 2, 'CSM Oradea')
INSERT INTO jucatori VALUES('21','Green', 'Garlon', 30, 204, 4, 'CSM Oradea')
INSERT INTO jucatori VALUES('22','Holt', 'Stephan', 28, 194, 3, 'CSM Oradea')
INSERT INTO jucatori VALUES('23','Gavrilovic', 'Alex', 31, 210, 5, 'CSM Oradea')
INSERT INTO jucatori VALUES('24','Bickauskis', 'Dovis', 27, 190, 1, 'CSM Oradea')
INSERT INTO jucatori VALUES('25','Ogden', 'Mark', 27, 207, 4, 'CSM Oradea')
INSERT INTO jucatori VALUES('26','Nicolescu', 'Bobe', 24, 196, 3, 'CSM Oradea')
INSERT INTO jucatori VALUES('27','Fometescu', 'Tudor', 23, 191, 2, 'CSM Oradea')
INSERT INTO jucatori VALUES('28','Baciu', 'Catalin', 32, 214, 5, 'CSM Oradea')
INSERT INTO jucatori VALUES('29','Marinau', 'Vlad', 19, 186, 1, 'CSM Oradea')
INSERT INTO jucatori VALUES('30','Richard', 'Patrick', 33, 196, 2, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('31','Brown', 'Brendon', 28, 192, 1, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('32','Stipanovic', 'Andrija', 35, 207, 5, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('33','Guzman', 'Karel', 30, 200, 3, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('34','Hogue', 'Dustin', 27, 204, 4, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('35','Bircevic', 'Stefan', 34, 207, 5, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('36','Grasu', 'Stefan', 19, 200, 4, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('37','Kuti', 'Nandor', 24, 195, 2, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('38','Colceag', 'Luca', 19, 197, 3, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('39','Lapuste', 'David', 18, 186, 1, 'UBT Cluj-Napoca')
INSERT INTO jucatori VALUES('40','Tamulis', 'Justas', 28, 198, 3, 'CSU Sibiu')
INSERT INTO jucatori VALUES('41','Pratt', 'Monyea', 37, 196, 2, 'CSU Sibiu')
INSERT INTO jucatori VALUES('42','McGrew', 'Anthony', 30, 207, 5, 'CSU Sibiu')
INSERT INTO jucatori VALUES('43','Uta', 'Rares', 24, 208, 5, 'CSU Sibiu')
INSERT INTO jucatori VALUES('44','Tohatan', 'Lucas', 23, 192, 1, 'CSU Sibiu')
INSERT INTO jucatori VALUES('45','Blake', 'Justin', 32, 198, 3, 'CSU Sibiu')
INSERT INTO jucatori VALUES('46','Padgett', 'Jamal', 27, 204, 4, 'CSU Sibiu')
INSERT INTO jucatori VALUES('47','Ardelean', 'Rares', 20, 203, 4, 'CSU Sibiu')
INSERT INTO jucatori VALUES('48','Nastrut', 'Luca', 19, 187, 1, 'CSU Sibiu')
INSERT INTO jucatori VALUES('49','Dragoste', 'Mirel', 28, 192, 2, 'CSU Sibiu')
INSERT INTO jucatori VALUES('50','Vasiliauskas', 'Donatas', 30, 190, 1, 'CSO Voluntari')
INSERT INTO jucatori VALUES('51','Gotcher', 'Tim', 31, 187, 1, 'CSO Voluntari')
INSERT INTO jucatori VALUES('52','Lee', 'Malcom', 29, 201, 3, 'CSO Voluntari')
INSERT INTO jucatori VALUES('53','Thomson', 'Erik', 30, 207, 4, 'CSO Voluntari')
INSERT INTO jucatori VALUES('54','Barro', 'Ousmane', 32, 209, 5, 'CSO Voluntari')
INSERT INTO jucatori VALUES('55','Moldoveanu', 'Vlad', 33, 206, 5, 'CSO Voluntari')
INSERT INTO jucatori VALUES('56','Woods', 'Arnold', 26, 195, 2, 'CSO Voluntari')
INSERT INTO jucatori VALUES('57','Torok', 'Roland', 32, 204, 4, 'CSO Voluntari')
INSERT INTO jucatori VALUES('58','Vida', 'David', 24, 197, 3, 'CSO Voluntari')
INSERT INTO jucatori VALUES('59','Badiu', 'Marcu', 22, 190, 2, 'CSO Voluntari')
INSERT INTO jucatori VALUES('60','Jeremic', 'Mladen', 34, 198, 3, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('61','Seppala', 'Ilari', 32, 190, 1, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('62','Thorton', 'Reggie', 30, 207, 5, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('63','Fitzpatrick', 'Anthony', 32, 208, 5, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('64','GONtikas', 'Kostas', 29, 204, 4, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('65','Gajovic', 'Goran', 35, 200, 3, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('66','Maciuca', 'Mihai', 22, 192, 2, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('67','Voinescu', 'Radu', 24, 191, 2, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('68','Gheorghe', 'Tudor', 32, 187, 1, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('69','Chirof', 'Lucian', 25, 202, 4, 'BCM Arges-Pitesti')
INSERT INTO jucatori VALUES('70','Gajic', 'Nikola', 32, 198, 3, 'SCM Timisoara')
INSERT INTO jucatori VALUES('71','Mirkovic', 'Adam', 29, 190, 1, 'SCM Timisoara')
INSERT INTO jucatori VALUES('72','Strong', 'Darnell', 33, 204, 4, 'SCM Timisoara')
INSERT INTO jucatori VALUES('73','Komatina', 'Milos', 33, 205, 4, 'SCM Timisoara')
INSERT INTO jucatori VALUES('74','Lilov', 'Ivan', 30, 200, 2, 'SCM Timisoara')
INSERT INTO jucatori VALUES('75','Talton', 'Gary', 27, 201, 3, 'SCM Timisoara')
INSERT INTO jucatori VALUES('76','Olah', 'Alex', 26, 209, 5, 'SCM Timisoara')
INSERT INTO jucatori VALUES('77','Lazar', 'Laszlo', 32, 213, 5, 'SCM Timisoara')
INSERT INTO jucatori VALUES('78','Schipor', 'Rares', 18, 189, 2, 'SCM Timisoara')
INSERT INTO jucatori VALUES('79','Mocritchi', 'Cristian', 24, 192, 1, 'SCM Timisoara')
SELECT *
FROM jucatori


CREATE table meciuri(id_meci varchar(5) PRIMARY KEY, gazda varchar(25), oaspeti varchar(25), data_meci date, pct_gazda numeric, pct_oaspeti numeric, id_arbitru char(3) REFERENCES arbitrii(id), id_teren char(4) REFERENCES terenuri(nr_inreg))

INSERT INTO meciuri VALUES('1', 'CSM Oradea', 'CSU Sibiu', CONVERT(date, '02/05/2022', 103), 82, 73, 110, 1113)
INSERT INTO meciuri VALUES('2', 'UBT Cluj-Napoca', 'SCM Timisoara', CONVERT(date, '02/05/2022', 103), 94, 75, 130, 1113)
INSERT INTO meciuri VALUES('3', 'CSO Voluntari', 'BCM Arges-Pitesti', CONVERT(date, '03/05/2022', 103), 86, 84, 140, 1113)
INSERT INTO meciuri VALUES('4', 'CSU Sibiu', 'UBT Cluj-Napoca', CONVERT(date, '06/05/2022', 103), 75, 81, 100, 1113)
INSERT INTO meciuri VALUES('5', 'BCM Arges-Pitesti', 'CSM Oradea', CONVERT(date, '06/05/2022', 103), 69, 77, 120, 1113)
INSERT INTO meciuri VALUES('6', 'SCM Timisoara', 'CSO Voluntari', CONVERT(date, '07/05/2022', 103), 80, 95, 150, 1113)
INSERT INTO meciuri VALUES('7', 'UBT Cluj-Napoca', 'BCM Arges-Pitesti', CONVERT(date, '09/05/2022', 103), 87, 81, 100, 1113)
INSERT INTO meciuri VALUES('8', 'CSU Sibiu', 'SCM Timisoara', CONVERT(date, '09/05/2022', 103), 82, 79, 110, 1113)
INSERT INTO meciuri VALUES('9', 'CSM Oradea', 'CSO Voluntari', CONVERT(date, '10/05/2022', 103), 86, 78, 120, 1113)
INSERT INTO meciuri VALUES('10', 'SCM Timisoara', 'CSM Oradea', CONVERT(date, '12/05/2022', 103), 67, 80, 130, 1113)
INSERT INTO meciuri VALUES('11', 'CSO Voluntari', 'UBT Cluj-Napoca', CONVERT(date, '12/05/2022', 103), 88, 91, 140, 1113)
INSERT INTO meciuri VALUES('12', 'BCM Arges-Pitesti', 'CSU Sibiu', CONVERT(date, '13/05/2022', 103), 82, 81, 150, 1113)
INSERT INTO meciuri VALUES('13', 'CSU Sibiu', 'CSO Voluntari', CONVERT(date, '16/05/2022', 103), 82, 84, 100, 1113)
INSERT INTO meciuri VALUES('14', 'BCM Arges-Pitesti', 'SCM Timisoara', CONVERT(date, '16/05/2022', 103), 91, 85, 110, 1113)
INSERT INTO meciuri VALUES('15', 'CSM Oradea', 'UBT Cluj-Napoca', CONVERT(date, '17/05/2022', 103), 94, 93, 120, 1113)
SELECT *
FROM meciuri


USE Baschet_Project;
CREATE table detalii_meciuri(id_game varchar(5) REFERENCES meciuri(id_meci), cosuri_2p numeric, cosuri_3p numeric, nr_libere numeric, id_jucat_eliminati varchar(4) REFERENCES jucatori(id_jucator), nr_spectatori numeric)
/*alter table detalii_meciuri add constraint pk_id_game PRIMARY KEY(id_game)*/
INSERT INTO detalii_meciuri VALUES('1', 42, 17, 20, '40', 4500)
INSERT INTO detalii_meciuri VALUES('2', 46, 19, 20, '73', 1500)
INSERT INTO detalii_meciuri VALUES('3', 45, 18, 26, '57', 500)
INSERT INTO detalii_meciuri VALUES('4', 38, 23, 11, '44', 2200)
INSERT INTO detalii_meciuri VALUES('5', 39, 15, 23, '60', 4100)
INSERT INTO detalii_meciuri VALUES('6', 40, 24, 23, '70', 1000)
INSERT INTO detalii_meciuri VALUES('7', 39, 23, 21, '65', 2000)
INSERT INTO detalii_meciuri VALUES('8', 37, 20, 27, '41', 1800)
INSERT INTO detalii_meciuri VALUES('9', 35, 21, 11, '26', 4300)
INSERT INTO detalii_meciuri VALUES('10', 34, 19, 22, '76', 4000)
INSERT INTO detalii_meciuri VALUES('11', 42, 25, 20, '34', 2200)
INSERT INTO detalii_meciuri VALUES('12', 37, 21, 26, '61', 1900)
INSERT INTO detalii_meciuri VALUES('13', 30, 27, 25, '53', 2000)
INSERT INTO detalii_meciuri VALUES('14', 34, 25, 33, '71', 1350)
INSERT INTO detalii_meciuri VALUES('15', 43, 23, 32, '33', 5300)
SELECT *
FROM detalii_meciuri

