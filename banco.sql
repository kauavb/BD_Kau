CREATE DATABASE Banco;
USE Banco;

CREATE TABLE Clientes(
	Cpf VARCHAR(20) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE ContaBancaria(
	NumeroConta VARCHAR (20) NOT NULL PRIMARY KEY,
    Agencia VARCHAR (20) NOT NULL,
    Cpf_Cliente VARCHAR (20),
    TipoConta VARCHAR (20) NOT NULL,
    Saldo DOUBLE NOT NULL,
 -- Saldo DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (Cpf_Cliente) REFERENCES Clientes(Cpf)
);



INSERT INTO Banco.Clientes(Cpf, Nome, Telefone, Endereco, Email) 
VALUES ("096.456.164-56", "Helena", "(71)99871-5481", "Rua das Palmeiras, 89", "helenalinda@gmail.com"),
("888.888.888-88", "Pepeu", "(71)95544-3322", "MidTop Veigar, 987", "pepeulendalol@gmail.com"),
("136.172.131-22", "Guiles", "(89)93268-3217", "Vale das Sombras, 154", "gugigui@gmail.com");

SELECT * FROM Banco.Clientes;

INSERT INTO Banco.ContaBancaria (Cpf_Cliente, NumeroConta, Agencia, TipoConta, Saldo)
VALUES ("096.456.164-56","0001", "164816-5", "Corrente", "5000.95"),
("888.888.888-88","0021", "164816-5", "Poupança", "15649.25"),
("136.172.131-22","0369", "164816-5", "Salario", "3214.20");

SELECT * FROM Banco.ContaBancaria;

-- SELECT 
--    Clientes.nome AS 'Nome do cliente',
--    ContaBancaria.saldo AS 'Saldo'
-- FROM Clientes 
-- INNER JOIN ContaBancaria 
-- ON Clientes.cpf = Cpf_Cliente;

SELECT 
	C.nome AS 'Nome do cliente',
    CC.saldo AS 'Saldo'
FROM Clientes C
INNER JOIN ContaBancaria CC
ON C.cpf = CC.Cpf_Cliente;

DROP DATABASE Banco;