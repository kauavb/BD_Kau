create database Escola;

use Escola;

show databases;

create table Escolas (
	EscolaID int primary key auto_increment,
    NomeEscola varchar (100) not null,
    Endereco varchar (255) not null,
    Telefone varchar (22) not null
);

create table Alunos (
	Matricula int primary key auto_increment,
    NomeAluno varchar (100) not null,
    DataNascimento varchar (30) not null,
    Endereco varchar (255) not null,
    Telefone varchar (30) not null,
    Id_Escola int,
    FOREIGN KEY (Id_Escola) REFERENCES Escolas(EscolaID)
);

insert into Escola.Escolas (NomeEscola, Endereco, Telefone)
values ('CPM','Caminho das Aguas','(76) 31733-3719'),
('Satri','Caminho das Bananeiras','(81) 38298-3719'),
('Monte Soreano','Caminho do Fogo','(02) 33397-2648'),
('Basco Gama','Caminho das Arvores','(25) 9317-9485'),
('Resgate','Caminho do Ceu','(12) 54820-4769');

insert into Escola.Alunos (NomeAluno, DataNascimento, Endereco, Telefone, Id_Escola)
values ('Helena','05/02/2003','Imbui', '71 98745-5121',1),
('Kaua','06/01/2002','Paripe','81 455445-3269',2),
('Maria','02/87/1996','Mussurunga','23/09/2012',2),
('Gabis','03/07/2015','Barra','87 54516-4564',3),
('Carlos','17/09/2021','Vitoria','95 65484-4592',3);

SELECT E.NomeEscola AS 'Nome da Escola',
count(A.Matricula) AS 'Quantidade de Alunos' FROM Escolas E 
INNER JOIN Alunos A ON E.EscolaID = A.Matricula GROUP BY E.NomeEscola;

drop database Escola;