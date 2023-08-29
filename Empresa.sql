-- Criando banco de dados para Empresas
CREATE DATABASE Empresa;

-- Selecionando banco de dados para inserir comandos
USE Empresa;

-- Criando tabela de cadastro de clientes para a empresa
CREATE TABLE Clientes(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR (255) NOT NULL,
    Email VARCHAR (255) NOT NULL UNIQUE,
    Telefone VARCHAR (22) NOT NULL,
    Id_Endereco INT UNIQUE,
    FOREIGN KEY (Id_Endereco) REFERENCES Enderecos(Id)
);

-- Criando tabela de cadastro de endereços
CREATE TABLE Enderecos(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Logradouro VARCHAR (255) NOT NULL,
	Cep VARCHAR (11) NOT NULL,
	Numero VARCHAR (5),
    Complemento VARCHAR (255),
    Cidade VARCHAR (255)
);