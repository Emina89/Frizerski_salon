drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table zaposlenik(
sifra int not null primary key auto_increment,
ime varchar(50)not null,
prezime varchar(50)not null,
placa decimal(18,2),
nadredeni int null
);
alter table zaposlenik add foreign key(nadredeni)
references zaposlenik(sifra);