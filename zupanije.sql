drop database if exists zupanije;
create database zupanije;
use zupanije;
create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50),
zupan int not null
);
create table zupan(
sifra int not null primary key auto_increment,
ime varchar(50)not null,
prezime varchar(50) not null
);
create table opcina(
sifra int not null primary key auto_increment,
zupanija int not null,
naziv varchar(50)not null
);
create table mjesto(
sifra int not null primary key auto_increment,
opcina int not null,
naziv varchar(50) not null
);
alter table zupanija add foreign key (zupan)
references zupan(sifra);
alter table opcina add foreign key (zupanija)
references zupanija (sifra);
alter table mjesto add foreign key (opcina)
references opcina (sifra);
# Vukovarsko-Srijemska
insert into zupan(ime, prezime) values ('Damir', 'Dekanić');
insert into zupanija(naziv, zupan) values ('Vukovarsko-Srijemska', 1);
insert into opcina(zupanija, naziv) values (1, 'Gunja');
insert into opcina(zupanija, naziv) values (1, 'Drenovci');
insert into opcina(zupanija, naziv) values (1, 'Bošnjaci');
insert into opcina(zupanija, naziv) values (1, 'Cerna');
insert into opcina(zupanija, naziv) values (1, 'Tovarnik');
insert into opcina(zupanija, naziv) values (1, 'Štitar');



