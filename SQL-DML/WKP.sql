connect 'D:\BD\Lab4\Kinopoisk.fdb' user 'SYSDBA' password 'masterkey';
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

--Фильмы:
insert into Films values (1,'The Shawshank Redemption',1994,'Fear - it shackles. Hope - is freedom',16,142,2500000);
insert into Films values (2,'The Green Mile',1999,'Paul Edgecombe did not believe in miracles. While not faced with one of them.',16,189,60000000);
insert into Films values (3,'Forrest Gump',1994,'The world will never be the same after you see it through the eyes of Forrest Gump',12,142,55000000);
insert into Films values (4,'Schindlers List',1993,'This list of - life',16,195,22000000);
insert into Films values (5,'Intouchables',2011,'Sometimes you have to reach into someone else is world to find out what is missing in your own',16,112,9500000);
--Далее рандомно:
insert into Films values (6,'AAA',2011,'aa',16,112,9500000);
insert into Films values (7,'BBB',2011,'aa',16,112,9500000);
insert into Films values (8,'CCC',2011,'aa',16,112,9500000);
insert into Films values (9,'DDD',2011,'aa',16,112,9500000);
insert into Films values (10,'EEE',2011,'aa',16,112,9500000);
insert into Films values (11,'FFF',2011,'aa',16,112,9500000);


--Фильм-Студия:
insert into Film_Studia values(1,1,1);
insert into Film_Studia values(2,2,1);

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
insert into Film_Worker  values (1,5,1,1500,1,1);
insert into Film_Worker  values (2,5,2,2000,1,1);
insert into Film_Worker  values (3,1,3,4300,1,1);
insert into Film_Worker  values (4,5,1,5790,2,1);
insert into Film_Worker  values (5,5,2,1333,2,1);
insert into Film_Worker  values (6,5,3,890,2,1);
insert into Film_Worker  values (7,1,4,1290,2,1);
insert into Film_Worker  values (8,1,5,1780,2,1);
--Далее рандомно
insert into Film_Worker  values (9,6,9,7800,1,1);
insert into Film_Worker  values (10,6,6,7800,1,1);
insert into Film_Worker  values (11,6,7,7800,1,1);
insert into Film_Worker  values (12,6,8,7800,1,1);
insert into Film_Worker  values (13,6,10,7800,1,1);
insert into Film_Worker  values (14,6,1,7800,1,1);
insert into Film_Worker  values (15,6,1,7800,1,1);

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
insert into Rate_userK values(3,'5',1,2'very boring! But interesting. One time watch');
insert into Rate_userK values(4,'7',4,3,'very boring! But interesting. One time watch');
insert into Rate_userK values(5,'10',5,5'good');
insert into Rate_userK values(6,'2',6,4'very boring! But interesting. One time watch');
insert into Rate_userK values(7,'7',2,1,'good');
insert into Rate_userK values(8,'3',3,6,'good');
insert into Rate_userK values(9,'5',1,6,'very boring! But interesting. One time watch');
insert into Rate_userK values(10,'7',4,1,'very boring! But interesting. One time watch');
insert into Rate_userK values(11,'10',5,2,'good');
insert into Rate_userK values(12,'2',6,3,'very boring! But interesting. One time watch');
insert into Rate_userK values(13,'10'2,4,'good');
insert into Rate_userK values(14,'8',3,5,'good');
insert into Rate_userK values(15,'10',4,8,'very boring! But interesting. One time watch');
insert into Rate_userK values(16,'9',5,9,'good');
insert into Rate_userK values(17,'7',6,10,'very boring! But interesting. One time watch');
insert into Rate_userK values(18,'6',2,11,'good');
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
insert into Rate_critic values(19,'10',3,11,'good');


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

--Сборы:
insert into Collections values(1,1,1,3000,1);
insert into Collections values(2,1,2,4500,1);
insert into Collections values(3,1,3,7000,1);
insert into Collections values(4,2,4,11000,1);
insert into Collections values(5,3,4,15000,1);

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