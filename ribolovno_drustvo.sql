
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\pcservis\Documents\GitHub\jp28\ribolovno_drustvo.sql

drop database if exists ribolovno_drustvo;
create database ribolovno_drustvo;
use ribolovno_drustvo;

create table dozvola(
 sifra int not null primary key auto_increment, 
 trajanje datetime,
 cijena decimal(18.2)
 );

create table vrstaRibe(
 sifra int not null primary key auto_increment, 
 naziv varchar(50)
);

create table natjecanje(
 sifra int not null primary key auto_increment, 
 brojNatjecatelja varchar(50),
 rezultat varchar(50),
 datum_vrijeme datetime, 
 rijeka_jezero varchar(50)
);

create table clan(
 sifra int not null primary key auto_increment, 
 ime varchar(50)not null,
 prezime varchar(50)not null,
 oib varchar(50)not null,
 kontakt int (50) not null,
 dozvola int not null
);

create table ulov(
 sifra int not null primary key auto_increment, 
 clan int not null,
 vrstaRibe int not null ,
 tezina decimal(18.2),
 natjecanje int not null
);

alter table clan add 
foreign key (dozvola) references dozvola(sifra);
alter table ulov add 
foreign key (clan) references clan(sifra);
alter table ulov add 
foreign key (vrstaRibe) references vrstaRibe(sifra);
alter table ulov add 
foreign key (natjecanje) references natjecanje(sifra);

select * from vrstaRibe;
-- 1
insert into vrstaRibe(sifra,naziv)
-- 1 do 6
values
(null,'Klen'),
(null,'Žutooka'),
(null,'Babuška'),
(null,'Som'),
(null,'Štuka'),
(null,'Smuđ');

select * from dozvola;
-- 2

insert into dozvola(sifra,trajanje,cijena)
-- 1 do 3
values
(null,20230522,55),
(null,20230421,55),
(null,20230303,55);


select * from clan;
-- 3
insert into clan(sifra,ime,prezime,oib,kontakt,dozvola)
-- 1 do 3
values
(null,'Ivan','Ivić',12345678958,32883833,1),
(null,'Anto','Anić',54378963254,32555888,2),
(null,'Sanja','Sanjić',45678963251,32555888,3);

