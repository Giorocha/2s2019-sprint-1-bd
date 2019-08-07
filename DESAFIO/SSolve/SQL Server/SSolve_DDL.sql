create database T_SSolve

use T_SSolve

CREATE TABLE Empresa
(
	IdEmpresa		INT PRIMARY KEY IDENTITY
	,NomeFantasia	VARCHAR(255) NOT NULL
	,CNPJ			VARCHAR(20) NOT NULL UNIQUE
	,RazaoSocial	VARCHAR(255) NOT NULL UNIQUE
	,Endereco		VARCHAR(255) NOT NULL
);

CREATE TABLE Tipo_De_Serviço
(
	IdTipoServiço	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(255) NOT NULL 
);

CREATE TABLE Comodos
(
	IdComodos		INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Funcionario
(
	IdFuncionario	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(150) NOT NULL 
);

CREATE TABLE Serviços
(
	IdServiço		INT PRIMARY KEY IDENTITY
	,IdEmpresa      INT FOREIGN KEY REFERENCES Empresa (IdEmpresa)
	,Preço			MONEY 
	,Descricao		VARCHAR(255)
	,Inicio			VARCHAR(255)
	,Final			VARCHAR(255)
	,IdTipoServiço	INT FOREIGN KEY REFERENCES Tipo_de_Serviço(IdTipoServiço)
	,IdComodos		INT FOREIGN KEY REFERENCES Comodos(IdComodos)
);

CREATE TABLE Serviço_Funcionario
(
	IdServiço		INT FOREIGN KEY REFERENCES Serviços(IdServiço)
	,IdFuncionario	int foreign key references Funcionario(IdFuncionario)
);


