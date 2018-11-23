connect 'D:\BD\Lab4\Kinopoisk.fdb' user 'SYSDBA' psword 'mterkey';
commit;

--Выборка всех данных из каждой таблицы
select * from Films;
select * from Worker;
select * from Film_Worker;
select * from profession;
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

--Выборка данных из таблицы при нескольких условиях
select NAME, SEX, DATE_OF_BIRTHDAY from critic where DATE_OF_BIRTHDAY <'31.12.1995'and SEX in('M'); 
select NAME, YEARS, AGE_LIMIT, TIMES from Films where AGE_LIMIT in(16) and TIMES between 140 and 190; 
select NAME, ID_COUNTRY from USERK where (NAME like('%a%') or Name like('%A%')) and ID_COUNTRY in(1); 

--Вычисляемое поле 
select sum(SALARY) from Film_Worker where id_film in(1);

--Выборка всех данных с сортировкой по нескольким полям
select NAME, SEX, DATE_OF_BIRTHDAY, ID_COUNTRY from USERK order by ID_COUNTRY, Name;

--Запрос, вычисляющий несколько совокупных характеристик таблиц 
select min(SALARY) as Minimum, avg(SALARY) as Average, max(SALARY) as Maximum from Film_Worker;

--Выборка данных из связанных таблиц
select Films.Name, Worker.Name, Film_Worker.salary
from Films, Film_Worker, Worker
where Film_Worker.salary >1300 and
Films.ID=Film_Worker.ID_film
and Film_Worker.Id_worker=Worker.ID;

select USERK.Name, COUNTRY.COUNTRY
from USERK, COUNTRY
where COUNTRY.id_country in(1) and
USERK.ID_COUNTRY=COUNTRY.ID_COUNTRY;

--запрос, рассчитывающий совокупную характеристику с использованием группировки
select Name, min(DATE_OF_BIRTHDAY)
from critic group by Name having min(DATE_OF_BIRTHDAY)<'01.01.1990';


--Использование вложенного запроса
select worker.name from worker, Film_Worker
where Film_Worker.id_film in
(select ID from films where Name like('%Shawshank%'))
and Film_Worker.id_worker=worker.id;

--Добавление записей в таблицы
--Страна:
insert into Country values(11,' Belarus');
--Студия:
insert into Studia values(6,'Columbia Pictures‎');
--Работник:
insert into Worker values (9,'Jennifer Lawrence','15.08.1990','W',3);

--Измените значений нескольких полей у всех записей, отвечающих заданному условию 
select * from USERK;
update USERK set NAME=NAME ||' PRO' where SEX in('M');
select * from USERK;

--Удаление записи, имеющей максимальное (минимальное) значение некоторой совокупной характеристики 
select * from critic;
delete from critic where DATE_OF_BIRTHDAY = (select max(DATE_OF_BIRTHDAY) from critic);
select * from critic;


--Удаление записи в главной таблице, на которые не ссылается подчиненная таблица 
select * from WORKER;
delete from WORKER where ID not in
(select ID_worker from Film_Worker);
select * from WORKER;

