
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\emina\OneDrive\Dokumenti\GitHub\jp28\rodbinska_veza.sql
drop database if exists rodbinska_veza;
create database rodbinska_veza;
use rodbinska_veza;

create table sestra(
    sifra int not null primary key auto_increment,
    introvertno bit,
    haljina varchar(31)not null,
    maraka decimal(16,6),
    hlace varchar(46)not null,
    narukvica int not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31) not null,
    jmbag char(11) not null,
    bojaociju varchar(39) not null,
    haljina varchar(49),
    sestra int not null
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal (13,8),
    eura decimal (12,7),
    majica varchar (35)
);

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41)not null
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal (16,5)not null,
    gustoca decimal (18,6) not null,
    lipa decimal(13,10),
    ogrlica int not null,
    bojakose varchar (38),
    suknja varchar(36),
    punac int
);
create table muskarac(
sifra int not null primary key auto_increment,
bojaociju varchar (50)not null,
hlace varchar(30),
modelnaocala varchar(43),
maraka decimal(14.5)not null,
zena int not null
);

create table mladic(
sifra int not null primary key auto_increment,
suknja varchar(50)not null,
kuna decimal(16,8)not null,
drugiputa datetime ,
asocijalno bit,
ekstroventno bit not null,
dukserica varchar (48) not null,
muskarac int
);

alter table zena add foreign key (sestra)
references sestra(sifra);
alter table sestra_svekar add foreign key (sestra)
references sestra(sifra);
alter table sestra_svekar add foreign key (svekar)
references svekar(sifra);
alter table muskarac add foreign key (zena)
references zena(sifra);
alter table mladic add foreign key (muskarac)
references muskarac(sifra);
alter table cura add foreign key (punac)
references punac(sifra);


select * from sestra;

insert into sestra (sifra,introvertno,haljina,maraka,hlace,narukvica) 
values
(null,(1),'cvijetna',null,'traper',585),
(null,(0),'traper',11.23,'crne',925),
(null,(1),'maxi',12.2,'kratke',585);

select * from zena;

insert into zena (sifra,treciputa,hlace,kratkamajica,jmbag,bojaociju,haljina,sestra) 
values
(null,'2023-04-23',null,'crna','12398076543','plava','kratka',10),
(null,'2022-09-08','jeans','cvijetna','99977654324','siva','maxi',11),
(null,'2023-08-08','kratke','crvena','11145367893','zelena',null,12);

select * from muskarac;

insert into muskarac (sifra,bojaociju,hlace,modelnaocala,maraka,zena) 
values
(null,'zelena','kratke',null,12.12,2),
(null,'siva','jeans','Guess',12.15,3),
(null,'plave','crne','CK',15.12,1);

select * from svekar;

insert into svekar(sifra,bojaociju,prstena,dukserica,lipa,eura,majica)
values
(null,'zelena',585,'ljubičasta',12.12,12.12,'crna'),
(null,'plava',925,'crna',5.12,9.13,'kratka'),
(null,'zelena',585,'duga',12.13,1.23,'plava');



select * from sestra_svekar;

insert into sestra_svekar (sifra,sestra,svekar) 
values
(null,10,1),
(null,11,2),
(null,12,3);























