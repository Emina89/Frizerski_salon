drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;
use salon_za_uljepsavanje;
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\pcservis\Documents\salon_za_uljepsavanje.sql

create table salon_za_uljepsavanje(
	sifra int not null primary key auto_increment,
	naziv varchar(100) not null,
	adresa varchar (150),
	kontakt varchar(50),
	vlasnik varchar(50)
);

create table djelatnica(
	sifra int not null primary key auto_increment,
	salon_za_uljepsavanje int not null,
	osoba int not null,
	oib char(11)
);

create table korisnik(
	sifra int not null primary key auto_increment,
	osoba int not null,
	usluga varchar(100),
	djelatnica int not null
);

create table usluga(
	sifra int not null primary key auto_increment,
	vrsta_usluge varchar(100),
	cijena decimal(18,2),
	trajanje int,
	korisnik int not null
);

create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	kontakt varchar(100)
);

alter table djelatnica add foreign key (salon_za_uljepsavanje) references salon_za_uljepsavanje(sifra);
alter table djelatnica add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (djelatnica) references djelatnica(sifra);
alter table usluga add foreign key (korisnik) references korisnik(sifra);

select * from salon_za_uljepsavanje;
-- 1
insert into salon_za_uljepsavanje(sifra,naziv,adresa,kontakt,vlasnik)
values(null,'VS Studio','Trg Žrtava Domovinskog rata bb,Gunja',+38532883865,'Ella Batinić');

select * from osoba;
-- 2
-- 1 do 6

insert into osoba(sifra,ime,prezime,kontakt)
values (null,'Anja','Franić',32865422),
(null,'Simon','Petričević',32565999),
(null,'Ema','Kurtić',32666555),
(null,'Sanja','Bandić',32555999),
(null,'Gorana','Čanj',32895231),
(null,'Ivica','Ivić',32457896);

select * from djelatnica;
-- 3
-- 1 do 3
insert into djelatnica(sifra,salon_za_uljepsavanje,osoba,oib)
values (null,1,1,22266658974),
(null,1,2,25698745896),
(null,1,3,23658974125);

select * from korisnik;
-- 4
-- 1 do 3
insert into korisnik(sifra,osoba,usluga,djelatnica)
values(null,4,'Čišćenje lica',1),
(null,5,'Manicura',2),
(null,6,'Pedikura',3);

select * from usluga;
-- 5
-- 1 do 3
insert into usluga(sifra,vrsta_usluge,cijena,trajanje,korisnik)
values(null,'Čišćenje lica',15,45,4),
(null,'Manicura',12,30,5),
(null, 'Pedikura',10,30,6);









