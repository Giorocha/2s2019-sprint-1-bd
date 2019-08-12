create database T_Gufos

use T_Gufos

create table Categorias
(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

create table Eventos
(
	IdEvento INT PRIMARY KEY IDENTITY NOT NULL
	,Titulo VARCHAR (255) NOT NULL
	,Descricao TEXT 
	,DataEvento DATETIME NOT NULL
	,Ativo BIT NOT NULL DEFAULT(1)
	,Localizacao VARCHAR (255) NULL
	,IdCategoria INT FOREIGN KEY REFERENCES Categorias (IdCategoria)
);

create table Usuarios
(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL
	,Nome VARCHAR (255) NOT NULL
	,Email VARCHAR (255) NOT NULL UNIQUE
	,Senha VARCHAR (255) NOT NULL
	,Permissao VARCHAR (255) NOT NULL 
);

create table Presencas
(
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios (IdUsuario)
	,IdEvento INT FOREIGN KEY REFERENCES Eventos (IdEvento)
);