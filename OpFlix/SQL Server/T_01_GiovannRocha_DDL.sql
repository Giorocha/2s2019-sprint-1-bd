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

create table Identifica��o
(
	IdIdentifica��o INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR (200) NOT NULL
);

create table Lan�amentos
(
	IdLan�amento INT PRIMARY KEY IDENTITY 
	,Titulo VARCHAR (200) NOT NULL UNIQUE
	,DataLan�amento Date 
	,IdCategoria iNT FOREIGN KEY REFERENCES Categorias (IdCategoria)
	,IdIdentifica��o INT FOREIGN KEY REFERENCES Identifica��o (IdIdentifica��o)
	,Sinopse VARCHAR (200) NOT NULL
	,TempoDura��o INT NOT NULL 

);

create table usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
	,Email VARCHAR (200) NOT NULL UNIQUE
	,Senha VARCHAR (200) NOT NULL UNIQUE
	,IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);