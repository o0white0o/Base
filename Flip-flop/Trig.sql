SET TERM ^ ;

--Триггер для автоматического заполнения ключевого поля
create generator increment^
create or alter trigger gener for country 
before insert
as
begin
    new.id_country = gen_id(increment,1);
end^

--------------------------------------------------------------------------------------------
--Триггер для контроля целостности данных в подчиненной таблице 
--при удалении/изменении записей в главной таблице
create exception  ERROR_STAGE 'ERROR: CANNOT DELETE STAGE TYPE'^
CREATE OR ALTER TRIGGER check_stage FOR country 
BEFORE DELETE 
AS
BEGIN
 IF (OLD.id_country IN (SELECT id_country FROM Country_film)) THEN
 EXCEPTION ERROR_STAGE;
END^

--------------------------------------------------------------------------------------------
--При регистрации участия человека в фильме проверять дубли: 
--человек не может участвовать в одном фильме в любых ролях кроме актера более одного раза. 
--Если ограничение не выполняется - выбрасывать исключение
create exception error_ind1 'Error: re-entry in the table'^
create or alter trigger Repeat_test for Film_Worker
before insert
as
begin
If (new.ID_film in (select ID_film from Film_Worker where id_worker=new.id_worker) AND new.id_prof=1) then
exception error_ind1;
end^
--------------------------------------------------------------------------------------------
--При превышении сборов за фильм заданного порогового 
--создавать сиквел с тем же режиссером, 5 актерами с наибольшими гонорарами 
--и остальными создателями фильмов
--Процедура выведения 5 работников по фильму
CREATE OR ALTER PROCEDURE Five_actor(id_f int, id_prof int)
returns (id_actor int)
as
begin
for
	select first 5 film_worker.id_worker from film_worker 
	where film_worker.id_film=:id_f AND film_worker.id_prof=:id_prof
	order by salary desc into :id_actor
do begin 
 suspend;
 end
end^

--Сравнение сборов с заданным и добавление в таблицы
CREATE OR ALTER PROCEDURE sum_Collections(id_f int, cheak_col int )
as 
declare variable sum_col int;
declare variable name_film_next varchar(30);
declare variable id_worker_next int;
declare variable id_next int;
declare variable id_next_worker int;
begin
	select Name from Films where id=:id_f into :name_film_next;
	name_film_next=:name_film_next || ' 2';
	select max(id) from FILMS into :id_next;
	id_next=:id_next+1;
	sum_col=0;
	select sum(collections) from Collections where id_film=:id_f AND id_period=4
	into :sum_col;
	if(:cheak_col<:sum_col AND :name_film_next not in (select Name from Films )) then 
	begin	
		insert into Films values (:id_next,:name_film_next,null,' ',null,null,null);
		for select * from Five_actor(:id_f,1) into :id_worker_next 
		do begin 
		select max(id_fp) from Film_Worker into :id_next_worker;
		id_next_worker=:id_next_worker+1;
		insert into Film_Worker  values (:id_next_worker,:id_next,:id_worker_next,null,1);
		end
		for select * from Five_actor(:id_f,2) into :id_worker_next 
		do begin 
		select max(id_fp) from Film_Worker into :id_next_worker;
		id_next_worker=:id_next_worker+1;
		insert into Film_Worker  values (:id_next_worker,:id_next,:id_worker_next,null,2);
		end
	end
end^

--Триггер срабатывающий при добавление в таблицу Сборов нового значения
create or alter trigger add_film for Collections after insert
as
begin
execute procedure sum_Collections(new.id_film,1000000);
end^


SET TERM ; ^