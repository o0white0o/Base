connect 'D:\BD\Lab4\Kinopoisk.fdb' user 'SYSDBA' psword 'mterkey';
commit;

--Выборка всех данных из каждой таблицы
create view v1 as select * from Films;
create view v2 as select * from Worker;
create view v3 as select * from Film_Worker;
create view v4 as select * from profession;
create view v5 as select * from Film_Studia;
create view v6 as select * from Studia;
create view v7 as select * from Film_Studia;
create view v8 as select * from Country_film;
create view v9 as select * from Country;
create view v10 as select * from Film_Genre;
create view v11 as select * from Genre;
create view v12 as select * from UserK;
create view v13 as select * from Rate_userK;
create view v14 as select * from critic;
create view v15 as select * from Rate_critic;
create view v16 as select * from Collections;
create view v17 as select * from period;

--Выборка данных из таблицы при нескольких условиях
create view v18 as select NAME, SEX, DATE_OF_BIRTHDAY from critic where DATE_OF_BIRTHDAY <'31.12.1995'and SEX in('M'); 
create view v19 as select NAME, YEARS, AGE_LIMIT, TIMES from Films where AGE_LIMIT in(16) and TIMES between 140 and 190; 
create view v20 as select NAME, ID_COUNTRY from USERK where (NAME like('%a%') or Name like('%A%')) and ID_COUNTRY in(1); 

--Вычисляемое поле 
create view v21 as select sum(SALARY) from Film_Worker where id_film in(1);

--Выборка всех данных с сортировкой по нескольким полям
create view v22 as select NAME, SEX, DATE_OF_BIRTHDAY, ID_COUNTRY from USERK order by ID_COUNTRY, Name;

--Запрос, вычисляющий несколько совокупных характеристик таблиц 
create view v23 as select min(SALARY) as Minimum, avg(SALARY) as Average, max(SALARY) as Maximum from Film_Worker;

--Выборка данных из связанных таблиц
create view v24 as select Films.Name, Worker.Name, Film_Worker.salary
from Films, Film_Worker, Worker
where Film_Worker.salary >1300 and
Films.ID=Film_Worker.ID_film
and Film_Worker.Id_worker=Worker.ID;

create view v25 as select USERK.Name, COUNTRY.COUNTRY
from USERK, COUNTRY
where COUNTRY.id_country in(1) and
USERK.ID_COUNTRY=COUNTRY.ID_COUNTRY;

--запрос, рассчитывающий совокупную характеристику с использованием группировки
create view v26 as select Name, min(DATE_OF_BIRTHDAY)
from critic group by Name having min(DATE_OF_BIRTHDAY)<'01.01.1990';


--Использование вложенного запроса
create view v27 as select worker.name from worker, Film_Worker
where Film_Worker.id_film in
(create view v1 as select ID from films where Name like('%Shawshank%'))
and Film_Worker.id_worker=worker.id;

--Добавление записей в таблицы
--Страна:
insert into Country values(11,' Belarus');
--Студия:
insert into Studia values(6,'Columbia Pictures‎');
--Работник:
insert into Worker values (9,'Jennifer Lawrence','15.08.1990','W',3);

--Измените значений нескольких полей у всех записей, отвечающих заданному условию 
create view v28 as select * from USERK;
update USERK set NAME=NAME ||' PRO' where SEX in('M');
create view v28 as select * from USERK;

--Удаление записи, имеющей максимальное (минимальное) значение некоторой совокупной характеристики 
create view v30 as select * from critic;
delete from critic where DATE_OF_BIRTHDAY = (create view v1 as select max(DATE_OF_BIRTHDAY) from critic);
create view v31 as select * from critic;


--Удаление записи в главной таблице, на которые не ссылается подчиненная таблица 
create view v32 as select * from WORKER;
delete from WORKER where ID not in
(create view v33 as select ID_worker from Film_Worker);
create view v34 as select * from WORKER;

