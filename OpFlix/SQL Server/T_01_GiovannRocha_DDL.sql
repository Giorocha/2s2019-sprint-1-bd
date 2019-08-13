create database T_OpFlix

use T_OpFlix

create table Categorias
(
	IdCategoria INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);

create table TipoUsuarios
(
	IdTipoUsuario INT PRIMARY KEY IDENTITY
	,Tipo VARCHAR (200) NOT NULL
);

create table Identificacoes
(
	IdIdentificacao INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR (200) NOT NULL
);

create table Lancamentos
(
	IdLançamento INT PRIMARY KEY IDENTITY 
	,Titulo VARCHAR (200) NOT NULL UNIQUE
	,DataLancamento Date 
	,IdCategoria iNT FOREIGN KEY REFERENCES Categorias (IdCategoria)
	,IdIdentificacao INT FOREIGN KEY REFERENCES Identificacoes (IdIdentificacao)
	,Sinopse VARCHAR (200) NOT NULL
	,TempoDuração INT NOT NULL 
	,Veiculo VARCHAR (200) 
	,IdClassificacao INT FOREIGN KEY REFERENCES Classificacoes (IdClassificacao)

);

create table Usuarios
(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
	,Email VARCHAR (200) NOT NULL UNIQUE
	,Senha VARCHAR (200) NOT NULL 
	,IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuarios (IdTipoUsuario)
);

create table Classificacoes
(
	IdClassificacao INT PRIMARY KEY IDENTITY
	,Tipo VARCHAR (4) 
);

alter table Lancamentos 
alter column Sinopse VARCHAR (600)

