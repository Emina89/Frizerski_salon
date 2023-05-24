
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\pcservis\Documents\GitHub\jp28\djecija_igraona.sql


drop database if exists djecija_igraona;
create database djecija_igraona;
use djecija_igraona;

create table djelatnik(
 sifra int not null primary key auto_increment, 
 iban varchar(50),
 ime varchar(50),
 oib varchar (50),
 prezime varchar (50),
 radnoMjesto varchar(50)
);


create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    imeRoditelja varchar(50)not null,
    prezime varchar(50)not null,
    telefonRoditelja int (50)not null 
);

create table posjeta(
  sifra int not null primary key auto_increment,
  datumVrijemeDolaska datetime,
  satumVrijemeOdlaska datetime,
  napomena varchar(50),
  djelatnik_sifra int 
);

create table usluga(
sifra int not null primary key auto_increment,
cijena decimal(18.2),
jedinicaMjere varchar(50),
kolicina int(50) not null,
naziv varchar (50)
);


create table dijeteposjeta(
    dijete int(50) not null,
    posjeta int not null
);




create table uslugaposjeta(
    usluga int (50) not null,
    posjeta int(50)not null
);

create table operater(
sifra int not null primary key auto_increment,
email varchar(50),
ime varchar(50),
lozinka varchar(50),
oib varchar(50),
prezime varchar (50)
);

alter table dijeteposjeta add 
foreign key (posjeta) references posjeta(sifra);
alter table dijeteposjeta add 
foreign key (dijete) references dijete(sifra);
alter table uslugaposjeta add 
foreign key (usluga) references usluga(sifra);
alter table uslugaposjeta add 
foreign key (posjeta) references posjeta(sifra);
alter table posjeta add 
foreign key (djelatnik_sifra) references djelatnik(sifra);

select * from djelatnik;
-- 1
-- 1 do 3
insert into djelatnik(sifra,iban,ime,oib,prezime,radnoMjesto)
values(null,'HR422340333555222','Anja',12365478965,'Fran','Teta');
insert into djelatnik(sifra,iban,ime,oib,prezime,radnoMjesto)
values(null,'HR42234055588899','Ana',12365478555,'Hrg','Teta');
insert into djelatnik(sifra,iban,ime,oib,prezime,radnoMjesto)
values(null,'HR422340555888965','Matija',12365455896,'Franić','Blagajnik');


select * from dijete;
-- 2
-- 1 do 3
insert into dijete(sifra,ime,imeRoditelja,prezime,telefonRoditelja)
values(null,'Edi','Vanja','Akalović',98954888);
insert into dijete(sifra,ime,imeRoditelja,prezime,telefonRoditelja)
values(null,'Emili','Vanja','Akalović',98954888);
insert into dijete(sifra,ime,imeRoditelja,prezime,telefonRoditelja)
values(null,'Ivan','Matija','Grgić',32546987);

select * from usluga;
-- 3
-- 1 do 3
insert into usluga(sifra,cijena,jedinicaMjere,kolicina,naziv)
values(null,4.5,'H',1,'Čuvanje');
insert into usluga(sifra,cijena,jedinicaMjere,kolicina,naziv)
values(null,3.2,'KOM',1,'Negazirani napitak');





