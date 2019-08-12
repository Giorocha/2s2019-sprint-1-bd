create database T_OpFlix

use T_OpFlix

create table Categorias
(
	IdCategoria INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);

create table TipoUsuario
(
	IdTipoUsuario INT PRIMARY KEY IDENTITY
	,Tipo VARCHAR (200) NOT NULL
);

create table Identificação
(
	IdIdentificação INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR (200) NOT NULL
);

create table Lançamentos
(
	IdLançamento INT PRIMARY KEY IDENTITY 
	,Titulo VARCHAR (200) NOT NULL UNIQUE
	,DataLançamento Date 
	,IdCategoria iNT FOREIGN KEY REFERENCES Categorias (IdCategoria)
	,IdIdentificação INT FOREIGN KEY REFERENCES Identificação (IdIdentificação)
	,Sinopse VARCHAR (200) NOT NULL
	,TempoDuração INT NOT NULL 

);

create table usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
	,Email VARCHAR (200) NOT NULL UNIQUE
	,Senha VARCHAR (200) NOT NULL UNIQUE
	,IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);