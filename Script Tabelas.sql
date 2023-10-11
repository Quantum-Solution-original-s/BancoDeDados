CREATE DATABASE QuantumSensors;

USE QuantumSensors;

-- TABELAS

CREATE TABLE localizacaoEmpresa 
(
idLocalizacao INT PRIMARY KEY AUTO_INCREMENT,
estado VARCHAR(20) NOT NULL,
cidade VARCHAR(50) NOT NULL,
logradouro VARCHAR(50) NOT NULL,
numero VARCHAR(10),
bairro VARCHAR(45) NOT NULL,
cep CHAR(8)
);


CREATE TABLE empresa
(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
cnpj CHAR(14) UNIQUE NOT NULL,
nomeEmpresa VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
senha VARCHAR(20) NOT NULL,
ddd CHAR(2) NOT NULL, 
telefone CHAR(9) NOT NULL,
qtdEstufas INT NOT NULL, 
tipoPlano VARCHAR(20) NOT NULL,
CONSTRAINT chkPlano check(tipoPlano IN('QuantumStandard', 'QuantumPremium')), 
fkLocalizacao INT,
CONSTRAINT fkLoc FOREIGN KEY (fkLocalizacao)
	REFERENCES localizacaoEmpresa (idLocalizacao)
);


CREATE TABLE sensor
(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
codigo VARCHAR(10) NOT NULL,
dtInstalacao DATE NOT NULL,
statusSensor VARCHAR(20) NOT NULL,
CONSTRAINT chkStatusSensor check (statusSensor IN ('ativo', 'inativo', 'defeito', 'manutencao')),
fkEmpresa INT,
CONSTRAINT fkEmp FOREIGN KEY (fkEmpresa)
	REFERENCES empresa (idEmpresa)
);

ALTER TABLE sensor MODIFY COLUMN nome VARCHAR(50);
DESCRIBE sensor;

CREATE TABLE registro 
(
idRegistro INT PRIMARY KEY AUTO_INCREMENT,
dtAtual DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
temperatura FLOAT NOT NULL,
umidade INT NOT NULL,
fkSensor INT,
CONSTRAINT fkSensor FOREIGN KEY (fkSensor)
	REFERENCES sensor (idSensor)
);



