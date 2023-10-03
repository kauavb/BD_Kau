create database Site;
use Site;
show databases;

create table Produtos (
	IdProduto int primary key auto_increment,
    NomeProduto varchar (99) not null,
    Descricao varchar (255) not null,
    Preco double not null
);

create table Comentarios (
	IdComentario int primary key auto_increment,
    Autor varchar (99) not null,
    TextoComentario varchar (255) not null,
    DataPublicacao varchar (255) not null,
    ProdutoID int not null,
    foreign key (ProdutoID) references Produtos(IdProduto)
);

insert into Site.Produtos (NomeProduto, Descricao, Preco)
values ('Egeon', 'Perfume amadeirado ideal para dates noturnos', '259.65'),
('Floress','Perfume com cheiro de campo','158.54'),
('Bumbess','Perfume ideal para festas','368.45'),
('Ideas','Perfume fresco para o dia a dia','123.65'),
('Gracias','Importado da frança, ideal para jantares especiais','856.54');

insert into Site.Comentarios (Autor, TextoComentario, DataPublicacao, ProdutoID)
values ('Gisele Reis', 'Leve e fresco para todas as ocasiões, uso sempre que posso para as minhas saidas', '08/09/2014', 3),
('Ines Graxe', 'AMmmmmmeeeeeeiuiii, perfeito!', '03/05/2017', 4 ),
('Mana Coxta', 'Horrivel, extremamente forte e deselegante', '01/11/2021', 1 ),
('Leon', 'Ideal e chique para janteres e museus', '21/02/2022', 5),
('Fernanda Lio', 'Gostei, sempre te salva com apenas 2 borrifadas', '09/12/2022', 2);

select 
P.NomeProduto AS 'Nome do Produto',
C.TextoComentario AS 'Avaliações de usuarios'
FROM Produtos P
INNER JOIN Comentarios C
ON P.IdProduto = C.ProdutoID;




-- SELECT E.NomeEscola AS 'Nome da Escola',
-- count(A.Matricula) AS 'Quantidade de Alunos' FROM Escolas E 
-- INNER JOIN Alunos A ON E.EscolaID = A.Matricula GROUP BY E.NomeEscola;