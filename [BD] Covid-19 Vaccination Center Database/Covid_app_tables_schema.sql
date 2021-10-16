--USE Covid_app
USE p1g1
GO

--DROP TABLE IF EXISTS Covid_App.sofre
--DROP TABLE IF EXISTS Covid_App.reacao
--DROP TABLE IF EXISTS Covid_App.vacina
--DROP TABLE IF EXISTS Covid_App.marcacao
--DROP TABLE IF EXISTS Covid_App.stock
--DROP TABLE IF EXISTS Covid_App.centro_vacinacao
--DROP TABLE IF EXISTS Covid_App.evento_clinico
--DROP TABLE IF EXISTS Covid_App.doenca
--DROP TABLE IF EXISTS Covid_App.enfermeiro
--DROP TABLE IF EXISTS Covid_App.paciente
--DROP TABLE IF EXISTS Covid_App.pessoa

--DROP SCHEMA IF EXISTS Covid_App
CREATE SCHEMA Covid_App;
GO

CREATE TABLE Covid_App.pessoa(
		nif DECIMAL(9,0) PRIMARY KEY NOT NULL CHECK(nif>0),
		idade INT NOT NULL CHECK(idade>0),
		nome VARCHAR(50) NOT NULL,
		endereco VARCHAR(50) NOT NULL
);
GO

INSERT INTO Covid_App.pessoa VALUES (149162536, 49, 'Rui Pedro Santos', 'Rua de Alvalade');
INSERT INTO Covid_App.pessoa VALUES (563058403, 58, 'Tiago Barros Dias', 'Rua de Penalva');
INSERT INTO Covid_App.pessoa VALUES (981347909, 81, 'Rita Barbosa Amante', 'Rua do Buçaco');
INSERT INTO Covid_App.pessoa VALUES (784741084, 10, 'Marcelo Huertas Rubio', 'Rua dos Anjos');
INSERT INTO Covid_App.pessoa VALUES (121144225, 25, 'Antonieta Dominguez', 'Rua de Sao Vicente');
INSERT INTO Covid_App.pessoa VALUES (998143208, 32, 'Jose Antonio Lebre', 'Rua da Ramada');
INSERT INTO Covid_App.pessoa VALUES (234756249, 32, 'Jose Maria Amaral', 'Rua da Pega');
GO
--SELECT * FROM Covid_App.pessoa ORDER BY Covid_App.pessoa.idade

CREATE TABLE Covid_App.paciente(
		nif DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.pessoa(nif) PRIMARY KEY NOT NULL ,
		profissao VARCHAR(50) NOT NULL,
		tipo_sangue VARCHAR(10) NOT NULL,
		doses_recebidas INT NOT NULL CHECK(doses_recebidas>=0),
		vacina_tomada VARCHAR(20)
);
GO

INSERT INTO Covid_App.paciente VALUES (149162536, 'professor', 'A', 0, 'pfeizer');
INSERT INTO Covid_App.paciente VALUES (563058403, 'policia', 'B', 1, 'astrazeneca');
INSERT INTO Covid_App.paciente VALUES (981347909, 'reformado', 'A', 1, 'pfeizer');
INSERT INTO Covid_App.paciente VALUES (784741084, 'estudante', 'B', 0, 'moderna');
INSERT INTO Covid_App.paciente VALUES (234756249, 'estudante', 'B', 0, 'astrazeneca');
--SELECT * FROM Covid_App.paciente
GO


CREATE TABLE Covid_App.enfermeiro(
		nif DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.pessoa(nif) PRIMARY KEY NOT NULL ,
		id INT IDENTITY(1,1) NOT NULL,
);
--SELECT * FROM Covid_App.enfermeiro

GO
INSERT INTO Covid_App.enfermeiro VALUES(121144225);
INSERT INTO Covid_App.enfermeiro VALUES(998143208);
GO
--SELECT * FROM Covid_App.enfermeiro

CREATE TABLE Covid_App.doenca(
		nome VARCHAR(50) PRIMARY KEY NOT NULL,
		vacina_compativel VARCHAR(20), 
		sintomas VARCHAR(100) 
);
GO

INSERT INTO Covid_App.doenca VALUES ('anemia', 'pfeizer', 'tosse, cansaco');
INSERT INTO Covid_App.doenca VALUES ('tiroide', 'astrazeneca', 'queda de cabelo, bipolaridade, sonolencia');
INSERT INTO Covid_App.doenca VALUES ('asma', 'moderna', 'tosse, falta de ar');
INSERT INTO Covid_App.doenca VALUES ('diabetes', 'pfeizer', 'infecoes, cansaco, perda de visao');
INSERT INTO Covid_App.doenca VALUES ('osteoporose', 'astrazeneca', 'fraturas, deformacoes');
INSERT INTO Covid_App.doenca VALUES ('artrite', 'moderna', 'dor na articulacao, inchacos');
GO

CREATE TABLE Covid_App.evento_clinico(
		nome_doenca VARCHAR(50) FOREIGN KEY REFERENCES Covid_App.doenca(nome) NOT NULL ,
		alergias VARCHAR(50),
		nif DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.pessoa(nif) NOT NULL,
		var_data DATE NOT NULL,
		medicamentos_associados VARCHAR(100),
		PRIMARY KEY(nome_doenca, nif)
);
GO

INSERT INTO Covid_App.evento_clinico VALUES ('anemia', 'po, marisco', 149162536, '2013/5/16', null);
INSERT INTO Covid_App.evento_clinico VALUES ('artrite', 'po, marisco', 149162536, '2015/10/18', null);
INSERT INTO Covid_App.evento_clinico VALUES ('tiroide', 'leite, abelha', 563058403, '2002/07/02', null);
INSERT INTO Covid_App.evento_clinico VALUES ('asma', 'leite, abelha', 563058403, '1996/11/27', 'ventilan');
INSERT INTO Covid_App.evento_clinico VALUES ('artrite', 'leite, abelha', 563058403, '2008/12/28', 'voltaren');
INSERT INTO Covid_App.evento_clinico VALUES ('artrite', 'amendoim, marisco, soja', 981347909, '2014/06/17', null);
INSERT INTO Covid_App.evento_clinico VALUES ('osteoporose', 'amendoim, marisco, soja', 981347909, '2015/09/13', null);
INSERT INTO Covid_App.evento_clinico VALUES ('diabetes', 'amendoim, marisco, soja', 981347909, '2006/01/07', 'insulina');
INSERT INTO Covid_App.evento_clinico VALUES ('asma', 'po', 784741084, '2018/05/27', 'ventilan, maizar');
GO
--SELECT * FROM Covid_App.evento_clinico

CREATE TABLE Covid_App.centro_vacinacao(
		endereco VARCHAR(50) PRIMARY KEY NOT NULL,
		capacidade DECIMAL(8,0), 
);
GO

INSERT INTO Covid_App.centro_vacinacao VALUES ('Rua do Poceirao', 5000);
GO

CREATE TABLE Covid_App.stock(
		codigo_barras DECIMAL(11,0) PRIMARY KEY NOT NULL,
		quantidade INT NOT NULL,
		tipo_vacina VARCHAR(20) NOT NULL,
		endereco VARCHAR(50) REFERENCES Covid_App.centro_vacinacao(endereco) NOT NULL
);
GO

INSERT INTO Covid_App.stock VALUES (65113013625, 10000, 'pfeizer', 'Rua do Poceirao');
INSERT INTO Covid_App.stock VALUES (98729521019, 20000, 'astrazeneca', 'Rua do Poceirao');
INSERT INTO Covid_App.stock VALUES (81145813090, 15000, 'moderna', 'Rua do Poceirao');
GO

CREATE TABLE Covid_App.marcacao(
		numero_marcacao INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		var_hora DATETIME NOT NULL,
		nif_enfermeiro DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.enfermeiro(nif) NOT NULL,		
		nif_paciente DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.paciente(nif) NOT NULL,
);
GO

INSERT INTO Covid_App.marcacao VALUES ('2021/07/02 14:30:00', 121144225, 149162536);
INSERT INTO Covid_App.marcacao VALUES ('2021/07/03 15:30:00', 121144225, 563058403);
INSERT INTO Covid_App.marcacao VALUES ('2021/07/04 16:30:00', 998143208, 981347909);
INSERT INTO Covid_App.marcacao VALUES ('2021/07/05 17:30:00', 998143208, 784741084);
INSERT INTO Covid_App.marcacao VALUES ('2021/07/02 15:30:00', 121144225, 234756249);
GO
--SELECT * FROM Covid_App.marcacao

CREATE TABLE Covid_App.vacina(
		numero_serie INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		doses INT NOT NULL,
		nome VARCHAR(20) NOT NULL,
		validade INT NOT NULL,
		endereco VARCHAR(50) REFERENCES Covid_App.centro_vacinacao(endereco) NOT NULL,
		nif_enfermeiro DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.enfermeiro(nif) NOT NULL,
		nif_paciente DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.paciente(nif) NOT NULL
);
GO

INSERT INTO Covid_App.vacina VALUES (1, 'pfeizer', 12, 'Rua do Poceirao', 121144225, 149162536);
INSERT INTO Covid_App.vacina VALUES (2, 'moderna', 6, 'Rua do Poceirao', 121144225, 563058403);
INSERT INTO Covid_App.vacina VALUES (2, 'astrazeneca', 12, 'Rua do Poceirao', 998143208, 981347909);
INSERT INTO Covid_App.vacina VALUES (2, 'moderna', 6, 'Rua do Poceirao', 998143208, 784741084);
INSERT INTO Covid_App.vacina VALUES (2, 'astrazeneca', 6, 'Rua do Poceirao', 998143208, 234756249);
--SELECT * FROM Covid_App.vacina;
GO

CREATE TABLE Covid_App.reacao(
		denominacao VARCHAR(100) PRIMARY KEY NOT NULL,
		nivel_gravidade INT NOT NULL CHECK(nivel_gravidade>=0),
		numero_serie INT FOREIGN KEY REFERENCES Covid_App.vacina(numero_serie)
);
GO

INSERT INTO Covid_App.reacao VALUES ('irritacao', 1, 1);
INSERT INTO Covid_App.reacao VALUES ('febre', 2, 2);
INSERT INTO Covid_App.reacao VALUES ('parestesia', 3, 3);
INSERT INTO Covid_App.reacao VALUES ('nauseas', 2, 4);
GO

CREATE TABLE Covid_App.sofre(
		denominacao VARCHAR(100) FOREIGN KEY REFERENCES Covid_App.reacao(denominacao) NOT NULL,
		nif_paciente DECIMAL(9,0) FOREIGN KEY REFERENCES Covid_App.paciente(nif) NOT NULL,
		PRIMARY KEY(denominacao, nif_paciente)
);
GO

INSERT INTO Covid_App.sofre VALUES ('irritacao', 149162536);
INSERT INTO Covid_App.sofre VALUES ('febre', 563058403);
INSERT INTO Covid_App.sofre VALUES ('parestesia', 981347909);
INSERT INTO Covid_App.sofre VALUES ('nauseas', 784741084);
GO

