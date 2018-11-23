connect 'D:\BD\Lab4\Kinopoisk.fdb' user 'SYSDBA' psword 'mterkey';
commit;

--Insert
set term ^ ;
create procedure insert_tables
as begin
--Страна:
insert into Country values(11,' Belarus');
--Студия:
insert into Studia values(6,'Columbia Pictures‎');
--Работник:
insert into Worker values (9,'Jennifer Lawrence','15.08.1990','W',3);
--Фильм:
insert into Films values (6,'Passengers',2016,'Nothing is by chance',16,116,110000000);
--Фильм-Студия:
insert into Film_Studia values(3,6,6);
--Фильм-Страна:
insert into Country_film values(6,6,3);
--Профессия:
insert into profession values (3,'Operator');
--Фильм-Работник:
insert into Film_Worker  values (9,6,9,7800,1,1);
--Жанры:
insert into Genre values(13,'animation');
--фильм-Жанр:
insert into Film_Genre values(13,6,7);
--Пользователи:
insert into UserK values(7,'Alesha','M','26.05.1996',1);
--Рецензии пользователя:
insert into Rate_userK values(3,'9',7,6,'Excellent romantic melodrama about two people...');
--Критик:
insert into critic values(7,'NoName201','M','12.12.1987',4);
--Рецензия критика:
insert into Rate_critic values(3,'7',7,6,'Well, so-so');
--Период сборов:
insert into period values(5,'All time');
--Регионы:
insert into region values(6,3,'New York');
--Сборы:
insert into Collections values(6,6,5,4000000,1);
end ^

--Update
create procedure updates_tables
as begin
update UserK set Name=Name || ' PRO'  where sex in('M');
end ^

--Delete
create procedure del_tables
as begin 
delete from WORKER where ID not in
(select ID_worker from Film_Worker);
end ^

