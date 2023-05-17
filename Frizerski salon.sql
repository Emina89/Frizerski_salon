
drop database if exists frizerski_salon;
create database frizerski_salon;
use frizerski_salon;
c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\pcservis\Documents\Frizerski salon\Frizerski salon.sql

create table frizerski_salon(
	sifra int not null primary key auto_increment,
	naziv varchar(100) not null,
	adresa varchar (150),
	kontakt varchar(50),
	vlasnik varchar(50)
);

create table djelatnica(
	sifra int not null primary key auto_increment,
	frizerski_salon int not null,
	iban varchar(50),
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
	tip_usluge varchar(100),
	cijena decimal(5,2),
	trajanje int,
	korisnik int not null
);

create table osoba(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50),
	kontakt varchar(100)
);

alter table djelatnica add foreign key (frizerski_salon) references frizerski_salon(sifra);
alter table djelatnica add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (djelatnica) references djelatnica(sifra);
alter table usluga add foreign key (korisnik) references korisnik(sifra);

select * from frizerski_salon;
insert into frizerski_salon(sifra,naziv,adresa,kontakt,vlasnik)
-- 1
values(null,'Revlon','Trg žrtava domovinskog rata bb,32260 Gunja',+38532883856,'Žana Petruški');

select * from osoba;
insert into osoba(sifra,ime,prezime,kontakt)
-- 1 do 3
values(null,'Ana','Zrinski',+38599111222),
(null,'Vedrana','Didović',+38592333222),
(null,'Simo','Švraka',null);


select * from djelatnica;
-- 2
-- 1 do 2
insert into djelatnica (sifra,frizerski_salon,iban,osoba,oib)
values(null,1,null,2,11123655451),
(null,1,null,3,45678932578);

select * from korisnik 
-- 3

insert into korisnik (sifra,osoba,usluga,djelatnica)
values (null,1,'šišanje',2);

select * from usluga; 
-- 4

insert into usluga (sifra,tip_usluge,cijena,trajanje,korisnik)
values(null,'šišanje',5,20,2);

