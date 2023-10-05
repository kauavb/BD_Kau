create database Eventos;
show databases;
use Eventos;

create table Eventos(
	EventoID int primary key auto_increment,
    NomeEvento varchar (255) not null,
    DataEvento date not null,
    Localizacao varchar (255) not null
);

create table Participantes(
	ParticipanteID int primary key auto_increment,
    NomeParticipante varchar (99) not null,
    Email varchar (99) not null,
    Telefone varchar (20) not null
);

create table Inscricoes(
	InscricoesId int primary key auto_increment,
    IdParticipante int not null,
    IdEvento int not null,
    foreign key (IdParticipante) references Eventos(EventoID),
    foreign key (IdEvento) references Participantes(ParticipanteID)
);

insert into Eventos (NomeEvento, DataEvento, Localizacao)
values ('Hallow Party','2023-10-13','SAN'),
('Taylor Fest','2015-07-12','AMS'),
('Ariana Grande Fest','2023-08-12','Arena Fonte Nova'),
('SZA WEEK','2024-05-31','Allianz Parque'),
('LanaDELRey Ballroom','2023-12-21','BoomBoomLOCAl');

insert into Participantes (NomeParticipante, Email, Telefone) 
values ('Luca','luca@gmail.com','(71) 09931-67351'),
('Kali','kalikali@gmail.com','(12) 28163-1733'),
('Guigui','guigui@gmail.com','(12) 27842-3263'),
('Manumau','manumau@gmail.com','(87) 73123-2761'),
('Marquitos','marquitos@gmail.com','(12) 99684-4515');

insert into Inscricoes (IdParticipante, IdEvento)
values (1,5),
(2,4),
(3,3),
(4,2),
(5,1);

select
	NomeEvento AS 'Nome do Evento',
    NomeParticipante AS 'Nome do Participante'
from Eventos E
inner join Participantes P
inner join Inscricoes I
on E.NomeEvento = I.IdEvento and P.NomeParticipante = I.IdParticipante;