CREATE DATABASE SENAI_HROADS_TARDE

USE SENAI_HROADS_TARDE

CREATE TABLE TiposHabilidades
(
	IdTipoHabilidade		INT PRIMARY KEY IDENTITY NOT NULL
	,Nome					VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Habilidades 
(
	IdHabilidade			INT PRIMARY KEY IDENTITY NOT NULL
	,Nome					VARCHAR(255) NOT NULL UNIQUE
	,IdTipoHabilidade		INT FOREIGN KEY REFERENCES TiposHabilidades (IdTipoHabilidade)
);

CREATE TABLE Classes 
(
	IdClasse				INT PRIMARY KEY IDENTITY NOT NULL
	,Nome					VARCHAR(255) NOT NULL UNIQUE
	,Descricao				VARCHAR(255) NOT NULL 
);

CREATE TABLE ClasseHabilidade	
(
	IdClasse				INT FOREIGN KEY REFERENCES Classes (IdClasse)	
	,IdHabilidade			INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
);

CREATE TABLE Personagem
(
	IdPersonagem			INT PRIMARY KEY IDENTITY NOT NULL
	,Nome					VARCHAR(255) NOT NULL 
	,IdClasse				INT FOREIGN KEY REFERENCES Classes (IdClasse)	
	,CapacidadeMaxVida		INT NOT NULL
	,CapacidadeMaxMana		INT NOT NULL
	,DataAtualizacao		DATE NOT NULL
	,DataCriacao			DATE NOT NULL
);