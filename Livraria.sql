-- Criando um banco de dados
CREATE DATABASE Livraria;

-- Mostrar o banco de dados
SHOW DATABASES;

-- Acessando o banco de dados
USE Livraria;

-- Criar uma tabela.
CREATE TABLE Livraria.Tabelas(
Id INT AUTO_INCREMENT,
Livro VARCHAR(100) NOT NULL,
Autor VARCHAR (50) NOT NULL,
Genero VARCHAR (10) NOT NULL,
Paginas INT NOT NULL,
Editora VARCHAR (50) NOT NULL,
Valor_Comum FLOAT NOT NULL,
Valor_Kindle FLOAT NOT NULL,
Ano INT NOT NULL,
PRIMARY KEY (Id)
);

-- Inserindo registros na Tabela.
INSERT INTO Livraria.Tabelas (Livro, Autor, Genero, Paginas, Editora, Valor_Comum, Valor_Kindle, Ano)
VALUES ('Pai Rico, Pai Pobre', 'Robert T. Kiyosaki', 'Masculino', '336', 'Alta Books', 61.53, 58.45, 2018),
       ('Mindset', 'Carol S. Dweck','Feminino', 312, 'Objetiva', 38.99, 14.95, 2017),
       ('Como fazer amigos e influenciar pessoas', 'Dale Carnegie','Masculino', 256, 'Sextante', 38.99, 33.24, 2019),
       ('A Cabana', 'William P. Young', 'Masculino', 240, 'Arqueiro', 35.99, 17.90, 2008),
       ('O Poder do Habito', 'Charles Duhigg', 'Masculino', 408, 'Objetiva', 42.99, 29.90, 2012),
       ('Codigo Limpo', 'Robert C. Martin', 'Masculino', 425, 'Alta Books', 91.99, 87.39, 2009),
       ('Essencialismo', 'Greg McKeown', 'Masculino', 276, 'Sextante', 53.58, 33.24, 2015),
       ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', 176, 'Sextante', 32.86, 50.58, 2018),
       ('Comece pelo Porquê', 'Simon Shek', 'Masculino', 256, 'Sextante', 50.58, 24.94, 2018),
       ('O Alquimista', 'Paulo Coelho', 'Masculino', 206, 'Paralela', 24.70, 14.70, 2017);

-- Mostrar registros da tabela
-- 1. Trazer todos os dados
SELECT * FROM Livraria.Tabelas;

-- 2. Trazer o nome do livro e nome da editora
SELECT Livro, Editora
FROM Livraria.Tabelas;

-- 3. Trazer o nome do livro, editora e autores do sexo masculino
SELECT Livro, Editora, Autor
FROM Livraria.Tabelas
WHERE Genero = 'Masculino';

-- 4. Trazer o nome do livro, número de páginas do livro e autores do sexo feminino
SELECT Livro, Paginas, Autor
FROM Livraria.Tabelas
WHERE Genero = 'Feminino';

-- 5. Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017
SELECT Autor, Editora, Ano
FROM Livraria.Tabelas
WHERE Ano > 2017;

-- 6. Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Altas Books
SELECT Autor, Livro
FROM Livraria.Tabelas
WHERE Genero = 'Masculino' AND Editora = 'Sextante' OR Editora = 'Alta Books';

-- 7. Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum
SELECT Livro, Autor, Paginas, Editora, Ano, Valor_Comum
FROM Livraria.Tabelas;

-- 8. Trazer o nome do livro, autor, número de páginas e valor no Kindle
SELECT Livro, Autor, Paginas, Valor_Kindle
FROM Livraria.Tabelas;

-- 9. Trazer o nome dos autores com livros publicados pela editora Sextante
SELECT Autor
FROM Livraria.Tabelas
WHERE Editora = 'Sextante';

-- 10. Trazer o nome do livro, autores, valor com capa comum e valor no Kindle
SELECT Livro, Autor, Valor_Comum, Valor_Kindle
FROM Livraria.Tabelas;

-- Apagar a tabela
DROP TABLE Livraria.Tabelas;