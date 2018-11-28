use master
go

-- CREATE DATABASE MyDb ON (FILENAME = 'C:/mydb.mdf'),(FILENAME = 'C:/mydb_log.ldf') FOR ATTACH
CREATE DATABASE MyDb;

/*use MyDb
go

create table Person(
    id int not null constraint pk_person primary key,
    firstname varchar(100) not null
);*/