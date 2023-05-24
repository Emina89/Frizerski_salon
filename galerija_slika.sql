# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\pcservis\Documents\GitHub\jp28\galerija_slika.sql

drop database if exists galerija_slika;
create database galerija_slika;
use galerija_slika;

create table galerija(
 sifra int not null primary key auto_increment, 
 naziv varchar(50),
 nadredena int,
 autor int
);
 
create table autor(
 sifra int not null primary key auto_increment, 
 ime varchar(50),
 prezime varchar(50)
 );

create table slika(
 sifra int not null primary key auto_increment, 
 galerija int,
 putanja varchar(50)
 );

create table oznaka(
 sifra int not null primary key auto_increment, 
 naziv varchar(50)
 );

create table slika_oznaka(
 slika int not null, 
 oznaka int NOT null
 );
 
alter table slika add 
foreign key (galerija) references galerija(sifra);
alter table slika_oznaka add 
foreign key (slika) references slika(sifra);
alter table slika_oznaka add 
foreign key (oznaka) references oznaka(sifra);
alter table galerija add 
foreign key (autor) references autor(sifra);
alter table galerija add 
foreign key (nadredena) references galerija(sifra);

select * from autor;
-- 1
-- 3 do 5

insert into autor(sifra,ime,prezime)
values
(null,'Anja','Franic'),
(null,'Edi','Hrg'),
(null,'Ivan','Strepački');

select * from galerija;
-- 2
-- 4 do 6

insert into galerija(sifra,naziv,nadredena,autor)
values
(null,'Art',null,1),
(null,'Alan',null,2),
(null,'Sofi',null,3);
-- 3

select * from slika;
-- 5 do 7
insert into slika(sifra,galerija,putanja)
values
(null,1,'C:\Users\pcservis\Downloads\1684758844457.jpg'),
(null,2,'C:\Users\pcservis\Downloads\1684758833457.jpg'),
(null,3,'C:\Users\pcservis\Downloads\1984748844457.jpg');

select * from oznaka;
-- 4
-- 1 do 3
insert into oznaka(sifra,naziv)
values
(null,'Apstrakcije'),
(null,'Priroda'),
(null,'Portal');

select * from slika_oznaka;
-- 5
insert into slika_oznaka(slika,oznaka)
values
(1,1),
(2,2),
(3,3);

select * from autor;

update autor set ime='Emil'
where sifra=1;

update autor set prezime='Marić'
where sifra=1;

select * from galerija;

update galerija set naziv='Jesen u mom sokaku'
where sifra=2;

update galerija set naziv='Proljeće'
where sifra=3;

select * from slika;

update slika set galerija=1
where sifra=2;

update slika set putanja='C:\Users\pcservis\Downloads\1684758833457.jpg'
where sifra=3;

select * from oznaka;

update oznaka set naziv='Alans'
where sifra=2;

update oznaka set naziv='Proces'
where sifra=3;

delete from slika where galerija=4;
delete from slika_oznaka where slika=1;






