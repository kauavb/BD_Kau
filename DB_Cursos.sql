create database DBCursos;
show databases;
use DBCursos;

create table Cursos(
	CursoID int primary key auto_increment,
    NomeCurso varchar (99) not null,
    Professor varchar (99) not null,
    DataInicio date not null,
    DataFim date not null
);

create table Alunos(
	Matricula int primary key auto_increment,
    NomeAluno varchar (99) not null,
    DataNascimento date not null,
    Endereco varchar (255) not null,
    Telefone varchar (20) not null
);

create table Cursos_Alunos(
	InscricaoID int primary key auto_increment,
	IdCurso int not null,
    IdMatricula int not null,
    foreign key (IdCurso) references Cursos(CursoID),
    foreign key (IdMatricula) references Alunos(Matricula)
);

insert into Cursos(NomeCurso, Professor, DataInicio, DataFim) 
values ('Arquitetura','Carlos','2013-05-21','2019-12-23'),
('Programação','Arco','2022-08-03','2023-12-21'),
('Arte','Eli','2020-11-30','2024-08-12'),
('Medicina','Gabriel','2019-02-26','2025-11-25'),
('Gastronomia','Helena','2022-02-01','2025-09-27');

insert into Alunos(NomeAluno, DataNascimento, Endereco, Telefone)
values ('Gabs','2003-05-30','Hex do Vale','(85) 36894-8162'),
('Guilherme','2001-05-12','Toper da Vaia','(71) 91551-7452'),
('Vanessa','1997-11-29','Terezinha','(55) 45579-5817'),
('Kali','2003-10-13','Rua da Areia','(71) 98730-2541'),
('Blah','1991-02-14','Vale das Margaridas','(21) 98752-9632');

insert into Cursos_Alunos (IdCurso, IdMatricula)
values (1,2),
(2,1),
(3,5),
(4,4),
(5,3);

select
	NomeAluno AS 'Nome do Aluno',
    NomeCurso AS 'Curso'
from Cursos C
inner join Alunos A
inner join Cursos_Alunos B
ON C.CursoID = B.IdCurso AND A.Matricula = B.IdMatricula;

drop database DBCursos;
