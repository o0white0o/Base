connect 'C:\BD\Lab5\Kinopoisk.fdb' user 'SYSDBA' password 'masterkey';
commit;

--Страны:
insert into Country values(1,'Russia');
insert into Country values(2,'Italy');
insert into Country values(3,'USA');
insert into Country values(4,'France');
insert into Country values(5,'Latvia');
insert into Country values(6,'Ukraine');
insert into Country values(7,'Germany');
insert into Country values(8,'China');
insert into Country values(9,'Canada');
insert into Country values(10,'Brazil');

--Студии:
insert into Studia values(1,'Warner brothers');
insert into Studia values(2,'Marvel studios');
insert into Studia values(3,'21st century fox');
insert into Studia values(4,'Universal Studios');
insert into Studia values(5,'Pixar ');

--Работники:
insert into Worker values (1,'Olivier Nakache','15.04.1973','M',4);
insert into Worker values (2,'Eric Toledano','03.07.1971','M',4);
insert into Worker values (3,'Frank Darabont','28.01.1959','M',4);
insert into Worker values (4,'François Cluzet','21.09.1955','M',4);
insert into Worker values (5,'Omar Sy','20.01.1978','M',4);
insert into Worker values (6,'Anne Le Ny','16.12.1962','W',4);
insert into Worker values (7,'Tim Robbins','16.10.1958','M',3);
insert into Worker values (8,'Morgan Freeman','01.06.1937','M',3);
insert into Worker values (9,'Michael Fassbender','02.04.1977','M',7);
insert into Worker values (10,'Jennifer Lawrence','15.08.1990','W',3);
insert into Worker values (11,'Joséphine de Meaux','23.01.1977','W',4);
insert into Worker values (12,'Audrey Fleurot','06.07.1977','W',4);

--Фильмы:
insert into Films values (1,'The Shawshank Redemption',2015,'Fear - it shackles. Hope - is freedom',16,142,2500000);
insert into Films values (2,'The Green Mile',2015,'Paul Edgecombe did not believe in miracles. While not faced with one of them.',16,189,60000000);
insert into Films values (3,'Forrest Gump',2015,'The world will never be the same after you see it through the eyes of Forrest Gump',12,142,55000000);
insert into Films values (4,'Schindlers List',2015,'This list of - life',16,195,22000000);
insert into Films values (5,'Intouchables',2015,'Sometimes you have to reach into someone else is world to find out what is missing in your own',16,112,9500000);
insert into Films values (6,'Assassins Creed',2015,'Welcome to the Spanish Inquisition',16,115,125000000);
insert into Films values (7,'Passengers',2015,'Nothing is by chance',16,116,110000000);
--Далее рандомно:
insert into Films values (8,'CCC',2011,'aa',16,112,9500000);
insert into Films values (9,'DDD',2011,'aa',16,112,9500000);
insert into Films values (10,'EEE',2011,'aa',16,112,9500000);
insert into Films values (11,'FFF',2011,'aa',16,112,9500000);
insert into Films values (12,'BBB',2012,'aa',12,111,9500000);


--Фильм-Студия:
insert into Film_Studia values(1,1,1);
insert into Film_Studia values(2,2,3);
insert into Film_Studia values(3,3,4);
insert into Film_Studia values(4,4,5);
insert into Film_Studia values(5,5,5);
insert into Film_Studia values(6,6,1);
insert into Film_Studia values(7,7,2);
insert into Film_Studia values(8,8,1);
insert into Film_Studia values(9,9,2);
insert into Film_Studia values(10,10,2);
insert into Film_Studia values(11,11,2);
insert into Film_Studia values(12,12,3);
insert into Film_Studia values(13,1,3);
insert into Film_Studia values(14,2,1);
insert into Film_Studia values(15,3,2);
insert into Film_Studia values(16,4,3);

--Фильм-Страна:
insert into Country_film values(1,1,3);
insert into Country_film values(2,2,3);
insert into Country_film values(3,3,3);
insert into Country_film values(4,4,3);
insert into Country_film values(5,5,4);

--Профессии:
insert into profession values (1,'Producer');
insert into profession values (2,'Actor');

--Фильм-Работники:
insert into Film_Worker  values (1,5,4,1500,2);
insert into Film_Worker  values (2,5,5,2000,2);
insert into Film_Worker  values (3,1,3,4300,2);
insert into Film_Worker  values (4,5,1,5790,1);
insert into Film_Worker  values (5,5,2,1333,1);
insert into Film_Worker  values (6,5,3,890,1);
insert into Film_Worker  values (7,1,4,1290,2);
insert into Film_Worker  values (8,1,5,1780,2);
--Далее рандомно
insert into Film_Worker  values (9,6,9,7800,2);
insert into Film_Worker  values (10,6,6,7800,2);
insert into Film_Worker  values (11,6,7,7800,2);
insert into Film_Worker  values (12,6,8,7800,2);
insert into Film_Worker  values (13,6,10,7800,2);
insert into Film_Worker  values (14,6,1,7800,2);
insert into Film_Worker  values (15,6,1,7800,2);
insert into Film_Worker  values (16,5,11,4390,2);
insert into Film_Worker  values (17,5,12,3200,2);
insert into Film_Worker  values (18,6,9,7800,2);
insert into Film_Worker  values (19,6,6,7800,2);
insert into Film_Worker  values (20,1,7,7800,1);
insert into Film_Worker  values (21,2,8,7800,1);
insert into Film_Worker  values (22,3,10,7800,1);
insert into Film_Worker  values (23,4,1,7800,1);
insert into Film_Worker  values (24,6,1,7800,1);
insert into Film_Worker  values (25,7,11,4390,1);
insert into Film_Worker  values (26,8,12,3200,1);

--Жанры:
insert into Genre values(1,'action');
insert into Genre values(2,'adventure');
insert into Genre values(3,'comedy');
insert into Genre values(4,'drama');
insert into Genre values(5,'crime');
insert into Genre values(6,'horror');
insert into Genre values(7,'fantasy');
insert into Genre values(8,'thriller');
insert into Genre values(9,'family');
insert into Genre values(10,'documentary');
insert into Genre values(11,'detective');
insert into Genre values(12,'biography');

--фильм-Жанр:
insert into Film_Genre values(1,1,4);
insert into Film_Genre values(2,1,5);
insert into Film_Genre values(3,2,4);
insert into Film_Genre values(4,2,5);
insert into Film_Genre values(5,2,11);
insert into Film_Genre values(6,3,4);
insert into Film_Genre values(7,3,3);
insert into Film_Genre values(8,4,4);
insert into Film_Genre values(9,5,4);
insert into Film_Genre values(10,5,3);
insert into Film_Genre values(11,5,12);
insert into Film_Genre values(12,4,12);

--Пользователи:
insert into UserK values(1,'White','M','26.05.1996',1);
insert into UserK values(2,'Alexey_D','M','31.12.1976',1);
insert into UserK values(3,'Veronica','W','19.08.1969',1);
insert into UserK values(4,'Diego','M','29.08.1993',10);
insert into UserK values(5,'Masha','W','04.07.1995',1);
insert into UserK values(6,'Janna','W','08.12.1964',5);

--Рецензии пользователей:
insert into Rate_userK values(1,'10',2,1,'Some of the birds in captivity can not be kept.');
insert into Rate_userK values(2,'7',6,3,'very boring! But interesting. One time watch');
--Далее рандомно
insert into Rate_userK values(3,'5',1,2,'very boring! But interesting. One time watch');
insert into Rate_userK values(4,'7',4,3,'very boring! But interesting. One time watch');
insert into Rate_userK values(5,'10',5,5,'good');
insert into Rate_userK values(6,'2',6,4,'very boring! But interesting. One time watch');
insert into Rate_userK values(7,'7',2,1,'good');
insert into Rate_userK values(8,'3',3,6,'good');
insert into Rate_userK values(9,'5',1,6,'very boring! But interesting. One time watch');
insert into Rate_userK values(10,'7',4,1,'very boring! But interesting. One time watch');
insert into Rate_userK values(11,'10',5,2,'good');
insert into Rate_userK values(12,'2',6,3,'very boring! But interesting. One time watch');
insert into Rate_userK values(13,'10',2,4,'good');
insert into Rate_userK values(14,'8',3,5,'good');
insert into Rate_userK values(15,'10',4,8,'very boring! But interesting. One time watch');
insert into Rate_userK values(16,'9',5,9,'good');
insert into Rate_userK values(17,'7',6,10,'very boring! But interesting. One time watch');
insert into Rate_userK values(18,'6',2,12,'good');
insert into Rate_userK values(19,'5',3,11,'good');
insert into Rate_userK values(20,'9',5,9,'good');
insert into Rate_userK values(21,'7',6,7,'very boring! But interesting. One time watch');
insert into Rate_userK values(22,'6',2,8,'good');
insert into Rate_userK values(23,'5',3,11,'good');

--Критики:
insert into critic values(1,'Alex','M','26.05.1996',1);
insert into critic values(2,'ZLO','M','31.12.1976',1);
insert into critic values(3,'Jobs','W','19.08.1969',1);
insert into critic values(4,'BigRussianBoss','M','29.08.1993',10);
insert into critic values(5,'Nastya','W','04.07.1995',1);
insert into critic values(6,'John Cena','W','08.12.1964',5);

--Рецензии критиков:
insert into Rate_critic values(1,'8',2,1,'Very good!');
insert into Rate_critic values(2,'7',6,1,'very good movie! I recommend! SPACE');
--Далее рандомно
insert into Rate_critic values(3,'2',1,2,'very boring! But interesting. One time watch');
insert into Rate_critic values(4,'10',4,3,'very boring! But interesting. One time watch');
insert into Rate_critic values(5,'9',5,4,'good');
insert into Rate_critic values(6,'6',6,5,'very boring! But interesting. One time watch');
insert into Rate_critic values(7,'2',2,6,'good');
insert into Rate_critic values(8,'1',3,7,'good');
insert into Rate_critic values(9,'2',1,2,'very boring! But interesting. One time watch');
insert into Rate_critic values(10,'10',4,3,'very boring! But interesting. One time watch');
insert into Rate_critic values(11,'9',5,4,'good');
insert into Rate_critic values(12,'6',6,5,'very boring! But interesting. One time watch');
insert into Rate_critic values(13,'2',2,6,'good');
insert into Rate_critic values(14,'1',3,7,'good');
insert into Rate_critic values(15,'10',4,8,'very boring! But interesting. One time watch');
insert into Rate_critic values(16,'1',5,9,'good');
insert into Rate_critic values(17,'2',6,10,'very boring! But interesting. One time watch');
insert into Rate_critic values(18,'3',2,11,'good');
insert into Rate_critic values(19,'10',3,12,'good');


--Период сборов:
insert into period values(1,'Week');
insert into period values(2,'Month');
insert into period values(3,'Half-year');
insert into period values(4,'Year');

--Регионы:
insert into region values(1,1,'Republic of Karelia');
insert into region values(2,1,'Republic of Altai');
insert into region values(3,1,'St. Petersburg');
insert into region values(4,1,'Moscow');
insert into region values(5,1,'Sevastopol');
insert into region values(6,3,'Alabama');
insert into region values(7,3,'Delaware');
insert into region values(8,3,'Iowa');
insert into region values(9,3,'Kansas');
insert into region values(10,3,'New York');

--Сборы:
insert into Collections values(1,1,1,3000,1);
insert into Collections values(2,1,2,4500,1);
insert into Collections values(3,1,3,7000,1);
insert into Collections values(4,2,4,11000,1);
insert into Collections values(5,3,4,15000,1);
insert into Collections values(6,3,4,180000,2);
insert into Collections values(7,8,4,113000,2);
insert into Collections values(8,10,4,289000,2);
insert into Collections values(9,3,4,15000,3);
insert into Collections values(10,3,4,230000,3);
insert into Collections values(11,8,4,79000,3);
insert into Collections values(12,10,4,289000,3);
insert into Collections values(13,3,4,115000,4);
insert into Collections values(14,8,4,454520,4);
insert into Collections values(15,10,4,454400,4);
insert into Collections values(16,3,4,189000,5);
insert into Collections values(17,3,4,111000,5);
insert into Collections values(18,8,4,79000,6);
insert into Collections values(19,10,4,78000,6);
insert into Collections values(20,3,4,230000,7);
insert into Collections values(21,8,4,79000,7);
insert into Collections values(22,10,4,12000,8);
insert into Collections values(23,3,4,1000000,8);
insert into Collections values(24,8,4,555555,9);
insert into Collections values(25,10,4,550050,9);
insert into Collections values(26,3,4,444000,10);
insert into Collections values(27,3,4,445000,10);
insert into Collections values(28,8,4,255000,11);
insert into Collections values(29,10,4,25000,12);

select * from Films;
select * from Worker;
select * from Film_Worker;
select * from Film_Studia;
select * from Studia;
select * from Film_Studia;
select * from Country_film;
select * from Country;
select * from Film_Genre;
select * from Genre;
select * from UserK;
select * from Rate_userK;
select * from critic;
select * from Rate_critic;
select * from Collections;
select * from period;
