ALTER TABLE Film_Actor ADD salary int  NOT NULL;
ALTER TABLE Film_Producer ADD salary int  NOT NULL;

--Создадим таблицы для пользователей и критиков, и соответственно для их отзывов:
create table UserK (
    Id_user int primary key,
    Name varchar(30),
    Sex varchar(1),
    Date_of_birthday DATE,
    Id_country int
);
create table Rate_user (
    Id int primary key,
    Rate float,
    Id_user int,
    Id_film int,
    review varchar(100)
);

create table critic (
    Id_critic int primary key,
    Name varchar(30),
    Sex varchar(1),
    Date_of_birthday DATE,
    Id_country int
);
create table Rate_critic (
    Id int primary key,
    Rate float,
    Id_critic int,
    Id_film int,
    review varchar(100)
);
--Создадим таблицы для подсчета сборов:
create table Collections (
    Id_col int primary key,
    Id_country int,
    Name_region varchar(30),
    id_period int,
    collections int,
    id_film int
);

create table period (
    id_period int primary key,
    name_period varchar(20)
);
ALTER TABLE UserK ADD CONSTRAint User_fk0 FOREIGN KEY (Id_country) REFERENCES Country(Id_country);
ALTER TABLE Rate_user ADD CONSTRAint Rate_user_fk0 FOREIGN KEY (Id_user) REFERENCES UserK(Id_user);
ALTER TABLE Rate_user ADD CONSTRAint Rate_user_fk1 FOREIGN KEY (Id_film) REFERENCES Films(Id);
ALTER TABLE critic ADD CONSTRAint critic_fk0 FOREIGN KEY (Id_country) REFERENCES Country(Id_country);
ALTER TABLE Rate_critic ADD CONSTRAint Rate_critic_fk0 FOREIGN KEY (Id_critic) REFERENCES critic(Id_critic);
ALTER TABLE Rate_critic ADD CONSTRAint Rate_critic_fk1 FOREIGN KEY (Id_film) REFERENCES Films(Id);
