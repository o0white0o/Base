connect 'C:\BD\Lab4\Kinopoisk.fdb' user 'SYSDBA' password 'masterkey';
commit;

--Вывести 10 человек, которые поучаствовали в наибольшем количестве фильмов в разных ролях
select first 10  worker.name, COUNT(WORKER.NAME) as quantity
from worker 
join film_worker on (film_worker.id_worker=worker.id)
group by worker.name
order by quantity desc;

--Вывести 10 фильмов с максимальной разницей между средними оценками зрителей и критиков
select first 10 films.name, avg(abs(Rate_critic.Rate-rate_userk.rate)) as Average
from films
join rate_critic on (rate_critic.id_film=films.id)
join Rate_USERK on (Rate_USERK.id_film=films.id)
group by films.name
order by Average desc;


--Удалить неиспользуемые жанры
select * from genre;
delete from genre where id not in
(select id_genre from Film_Genre);
select * from genre;

