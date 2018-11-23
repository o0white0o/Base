create database 'C:\BD\Lab3\Kinopoisk.fdb' User 'SYSDBA' password 'masterkey';
commit;
connect 'C:\BD\Lab3\Kinopoisk.fdb' User 'SYSDBA' password 'masterkey';
commit;

create table Films (
	Id int primary key,
	Name varchar(30) ,
	Years int ,
	Tagline varchar(100) ,
	Age_limit int ,
	Times int ,
	budget int
);

create table Film_Worker (
	Id_fp int primary key,
	Id_film int ,
	Id_worker int ,
	salary int ,
	Id_prof int 
);

create table Country_film (
	Id_cou int primary key,
	Id_film int ,
	Id_country int 
);

create table Film_Studia (
	Id int primary key,
	Id_film int ,
	Id_name int
);
create table Studia (
	Id int primary key,
	Name varchar(40)
);
create table Film_Genre (
	Id int primary key,
	Id_film int ,
	Id_genre int 
);

create table Genre (
	Id int primary key,
	Name varchar(20)
);

create table UserK (
	Id_UserK int primary key,
	Name varchar(30) ,
	Sex varchar(1) ,
	Date_of_birthday DATE ,
	Id_country int
);

create table Rate_UserK (
	Id int primary key,
	Rate FLOAT ,
	Id_UserK FLOAT ,
	Id_film int ,
	review varchar(100)
);

create table critic (
	Id_critic int primary key,
	Name varchar(20) ,
	Sex varchar(1) ,
	Date_of_birthday DATE ,
	Id_country int
);

create table Country (
	Id_country int primary key,
	Country varchar(20)
);

create table Rate_critic (
	Id int primary key,
	Rate FLOAT ,
	Id_critic FLOAT ,
	Id_film int ,
	review varchar(100)
);
create table region (
	Id int primary key,
	Id_count int,
	Name varchar(40) 
);
create table Collections (
	Id_col int primary key,
	Id_reg int ,
	id_period int ,
	collections int ,
	id_film int
);

create table period (
	id_period int primary key,
	name_period varchar(30)
);

create table Worker (
	Id  int primary key,
	Name varchar(30) ,
	Date_of_birthday DATE ,
	Sex varchar(1) ,
	Id_count int
);

create table profession (
	Id_prof int primary key,
	Name varchar(30)
);
commit;
ALTER TABLE Film_Worker ADD CONSTRAint Film_Worker_fk0 FOREIGN KEY (id_film) REFERENCES Films(Id);
ALTER TABLE Film_Worker ADD CONSTRAint Film_Worker_fk1 FOREIGN KEY (id_worker) REFERENCES Worker(Id );
ALTER TABLE Film_Worker ADD CONSTRAint Film_Worker_fk2 FOREIGN KEY (Id_prof) REFERENCES profession(Id_prof);
ALTER TABLE Worker ADD CONSTRAint Worker_fk0 FOREIGN KEY (Id_count) REFERENCES Country(Id_country );
ALTER TABLE Country_film ADD CONSTRAint Country_film_fk0 FOREIGN KEY (Id_film) REFERENCES Films(Id);
ALTER TABLE Country_film ADD CONSTRAint Country_film_fk1 FOREIGN KEY (Id_country) REFERENCES Country(Id_country);
ALTER TABLE Film_Studia ADD CONSTRAint Film_Studia_fk0 FOREIGN KEY (Id_film) REFERENCES Films(Id);
ALTER TABLE Film_Studia ADD CONSTRAint Film_Studia_fk1 FOREIGN KEY (Id_name) REFERENCES Studia(Id);
ALTER TABLE Film_Genre ADD CONSTRAint Film_Genre_fk0 FOREIGN KEY (Id_film) REFERENCES Films(Id);
ALTER TABLE Film_Genre ADD CONSTRAint Film_Genre_fk1 FOREIGN KEY (Id_genre) REFERENCES Genre(Id);
ALTER TABLE UserK ADD CONSTRAint UserK_fk0 FOREIGN KEY (Id_country) REFERENCES Country(Id_country);
ALTER TABLE Rate_UserK ADD CONSTRAint Rate_UserK_fk0 FOREIGN KEY (Id_UserK) REFERENCES UserK(Id_UserK);
ALTER TABLE Rate_UserK ADD CONSTRAint Rate_UserK_fk1 FOREIGN KEY (Id_film) REFERENCES Films(Id);
ALTER TABLE critic ADD CONSTRAint critic_fk0 FOREIGN KEY (Id_country) REFERENCES Country(Id_country);
ALTER TABLE Rate_critic ADD CONSTRAint Rate_critic_fk0 FOREIGN KEY (Id_critic) REFERENCES critic(Id_critic);
ALTER TABLE Rate_critic ADD CONSTRAint Rate_critic_fk1 FOREIGN KEY (Id_film) REFERENCES Films(Id);
ALTER TABLE region ADD CONSTRAint region_fk0 FOREIGN KEY (Id_count) REFERENCES Country(Id_country);
ALTER TABLE Collections ADD CONSTRAint Collections_fk0 FOREIGN KEY (Id_reg) REFERENCES region(Id);
ALTER TABLE Collections ADD CONSTRAint Collections_fk1 FOREIGN KEY (id_period) REFERENCES period(id_period);
ALTER TABLE Collections ADD CONSTRAint Collections_fk2 FOREIGN KEY (id_film) REFERENCES Films(Id);
show tables;