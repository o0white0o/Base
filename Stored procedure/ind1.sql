SET TERM ^ ;

--5 лучших фильмов заданной студии
CREATE OR ALTER PROCEDURE Five_best_film(id_studia int)
returns (name_film varchar(30),rate_all float)
as
begin
for
	select first 5 films.name, (avg(Rate_critic.Rate)+avg(Rate_USERK.Rate))/2 as Rate 
	from films 
	join rate_critic on (rate_critic.id_film=films.id) 
	join Rate_USERK on (Rate_USERK.id_film=films.id) 
	join Film_Studia on (Film_Studia.id_film=films.id) 
	join Studia on (Studia.id=Film_Studia.id_name) where Studia.id=:id_studia
	group by films.name
	order by Rate desc into :name_film, :rate_all
do begin 
 suspend;
 end
end^

--5 самых кассовых фильмов заданной студии
CREATE OR ALTER PROCEDURE Five_best_summ(id_studia int)
returns (name_film varchar(30),summ int)
as
begin
for
	select first 5 films.name, sum(collections.collections) as Summ 
	from films 
	join collections on (collections.id_film=films.id) 
	join Film_Studia on (Film_Studia.id_film=films.id) 
	join Studia on (Studia.id=Film_Studia.id_name) where Studia.id=:id_studia AND collections.id_period=4
	group by films.name
	order by Summ desc into :name_film, :summ
do begin 
 suspend;
 end
end^

--5 наиболее частых актеров
CREATE OR ALTER PROCEDURE pop_actor(id_studia int)
returns (name_studia varchar(30),rate_all float)
as
begin
for
	select first 5 worker.name, count(worker.name) as quantity 
	from worker 
	join film_worker on (film_worker.id_worker=worker.id)
	join Film_studia on (Film_studia.id_film=film_worker.id_film) where Film_studia.id_name=:id_studia 
	AND film_worker.id_prof=2
	group by worker.name 
	order by quantity desc into :name_studia, :rate_all
do begin 
 suspend;
 end
end^

--5 самых успешных (по сборам) режиссеров
CREATE OR ALTER PROCEDURE Five_best_summ_prod(id_studia int)
returns (name_film varchar(30),summ int)
as
begin
for
	select first 5 worker.name, sum(collections.collections) as Summ 
	from worker 
	join Film_worker on (Film_worker.id_worker=worker.id)
	join Films on (Films.id=Film_worker.id_film)
	join collections on (collections.id_film=films.id) 
	join Film_Studia on (Film_Studia.id_film=films.id) 
	where Film_worker.id_prof=1 and collections.id_period=4 and Film_Studia.id_name=:id_studia
	group by worker.name
	order by Summ desc into :name_film, :summ
do begin 
 suspend;
 end
end^

--Рейтинг студии
CREATE OR ALTER PROCEDURE Rate_studia(id_studia int, New_year int)
returns (name_studia varchar(30),rate_all float)
as
begin
for
	select first 5 Studia.name, (avg(Rate_critic.Rate)+avg(Rate_USERK.Rate))/2 as Rate 
	from studia 
	join Film_Studia on (Film_Studia.id_name=Studia.id) 
	join rate_critic on (rate_critic.id_film=Film_Studia.id_film) 
	join Rate_USERK on (Rate_USERK.id_film=Film_Studia.id_film) 
	join films on (films.id=Film_Studia.id_film) where studia.id=:id_studia and :new_year-films.Years<6
	group by studia.name
	order by Rate desc into :name_studia, :rate_all
do begin 
 suspend;
 end
end^

SET TERM ; ^