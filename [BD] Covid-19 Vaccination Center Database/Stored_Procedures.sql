--USE Covid_app
USE p1g1
GO

-- Deleting zone
--DROP PROCEDURE Covid_App.addPessoa;
--DROP PROCEDURE Covid_App.addEnfermeiro;
--DROP PROCEDURE Covid_App.addMarcacao;
--DROP PROCEDURE Covid_App.addVacina;
--DROP PROCEDURE Covid_App.addReacao;
--DROP PROCEDURE Covid_App.addStock;
--DROP PROCEDURE Covid_App.removeStock;
--DROP PROCEDURE Covid_App.addPaciente;

CREATE PROCEDURE Covid_App.addPessoa (@nif DECIMAL(9,0), @idade INT, @nome VARCHAR(50), @endereco VARCHAR(50)) 
AS
	BEGIN
		IF EXISTS (SELECT * FROM Covid_App.pessoa WHERE pessoa.nif=@nif)
			BEGIN
				RAISERROR ('The person with that nif already exists', 14, 1);
			END
		ELSE
			INSERT Covid_App.pessoa(nif, idade, nome, endereco)
			VALUES (@nif, @idade, @nome, @endereco);
	END
GO
--Teste da Procedure
--EXEC Covid_App.addPessoa 834810472, 21, 'Carlos Manuel', 'Rua dos Aliados';
--SELECT * FROM Covid_App.pessoa;
-------------------------------------------------------------------------------------------------------------------------------


CREATE PROCEDURE Covid_App.addEnfermeiro (@nif DECIMAL(9,0)) 
AS
	BEGIN
		IF NOT EXISTS (SELECT * FROM Covid_App.pessoa WHERE pessoa.nif=@nif)
			BEGIN
				RAISERROR ('The person with that nif doesnt exists', 14, 1);
			END
		IF EXISTS (SELECT * FROM Covid_App.enfermeiro WHERE enfermeiro.nif=@nif)
			BEGIN
				RAISERROR ('The nurse with that nif already exists', 14, 1);
			END
		ELSE
			INSERT Covid_App.enfermeiro(nif)
			VALUES (@nif);
	END
GO

--EXEC Covid_App.addEnfermeiro 834810472;
--SELECT * FROM Covid_App.enfermeiro;
-------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Covid_App.addMarcacao ( @var_hora DATETIME, @nif_enfermeiro DECIMAL(9,0), @nif_paciente DECIMAL(9,0)) 
AS
	BEGIN
		IF NOT EXISTS (SELECT * FROM Covid_App.enfermeiro WHERE enfermeiro.nif=@nif_enfermeiro)
			BEGIN
				RAISERROR ('The nurse with that nif doesnt exists', 14, 1);
			END
		IF EXISTS (SELECT * FROM Covid_App.marcacao WHERE marcacao.var_hora=@var_hora)
			BEGIN
				RAISERROR ('Already an appointment for that date ', 14, 1);
			END
		ELSE
			INSERT Covid_App.marcacao(var_hora, nif_enfermeiro, nif_paciente)
			VALUES (@var_hora, @nif_enfermeiro, @nif_paciente);
	END
GO

--EXEC Covid_App.addMarcacao '2021/07/02 14:30:00', 121144225, 149162536;
--SELECT * FROM Covid_App.enfermeiro;
--SELECT * FROM Covid_App.marcacao;
-------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE Covid_App.addVacina ( @doses INT, @nome VARCHAR(20), @validade INT, @endereco VARCHAR(50), @nif_enfermeiro DECIMAL(9,0), @nif_paciente DECIMAL(9,0)) 
AS
	BEGIN
		IF  (SELECT count(vacina.nif_paciente) FROM Covid_App.vacina WHERE vacina.nif_paciente=@nif_paciente) >=2
			BEGIN
				RAISERROR ('Already a vaccine for that patient', 14, 1);
			END
		IF NOT EXISTS (SELECT * FROM Covid_App.pessoa WHERE pessoa.nif=@nif_paciente)
			BEGIN
				RAISERROR ('The person with that nif doesnt exists', 14, 1);
			END
		ELSE
			INSERT Covid_App.vacina(doses, nome, validade, endereco, nif_enfermeiro, nif_paciente)
			VALUES (@doses, @nome, @validade, @endereco, @nif_enfermeiro, @nif_paciente);
	END
GO
--EXEC Covid_App.addVacina 1, 'pfeizer', 12, 'Rua do Poceirao', 121144225, 1491624536;

-------------------------------------------------------------------------------------------------------------------------------
--Procedure para acrescentar reaçao de certo paciente
CREATE PROCEDURE Covid_App.addReacao (@denominacao varchar(100), @nivel_gravidade int, @numero_serie int)
AS
	BEGIN
		IF EXISTS (SELECT Covid_App.vacina.numero_serie FROM Covid_App.vacina WHERE vacina.numero_serie = @numero_serie)
			BEGIN
				RAISERROR('Ja existe uma reacao para essa vacina', 14,1);
			END
		IF NOT EXISTS (SELECT Covid_App.vacina.numero_serie FROM Covid_App.vacina WHERE vacina.numero_serie = @numero_serie)
			BEGIN
				RAISERROR('Nao existe uma vacina aplicada com esse numero de serie', 14, 1);
			END
		ELSE
			INSERT Covid_App.reacao(denominacao, nivel_gravidade, numero_serie)
			VALUES (@denominacao, @nivel_gravidade, @numero_serie);
	END
GO

--EXEC Covid_App.addReacao 'comichao', 3, 2;
--SELECT * FROM Covid_App.reacao;
--Select * FROM Covid_App.paciente;
-------------------------------------------------------------------------------------------------------------------------------
--Procedure para acrescentar stock de uma vacina
CREATE PROCEDURE Covid_App.addStock (@quantidade int, @vacina varchar(20))
AS
	BEGIN	
		IF NOT EXISTS (SELECT Covid_App.stock.tipo_vacina FROM Covid_App.stock WHERE stock.tipo_vacina = @vacina)
			BEGIN
				RAISERROR('Nao e possivel acrescentar stock para essa vacina', 14,1);
			END
		ELSE
			BEGIN
				UPDATE Covid_App.stock
				SET quantidade = quantidade + @quantidade
				WHERE Covid_App.stock.tipo_vacina = @vacina
			END
	END
GO

--EXEC Covid_App.addStock 59170, 'astrazeneca';
--SELECT * FROM Covid_App.stock;

-------------------------------------------------------------------------------------------------------------------------------
--Procedure para retirar stock de uma vacina
CREATE PROCEDURE Covid_App.removeStock (@quantidade int, @vacina varchar(20))
AS
	BEGIN	
		IF NOT EXISTS (SELECT Covid_App.stock.tipo_vacina FROM Covid_App.stock WHERE stock.tipo_vacina = @vacina)
			BEGIN
				RAISERROR('Nao e possivel retirar stock para essa vacina', 14,1);
			END
		IF NOT EXISTS (SELECT Covid_App.stock.tipo_vacina FROM Covid_App.stock WHERE stock.quantidade > @quantidade)
			BEGIN
				RAISERROR('Nao e possivel retirar essa quantidade de stock para a vacina desejada', 14,1);
			END
		ELSE	
			BEGIN
				UPDATE Covid_App.stock
				SET quantidade = quantidade - @quantidade
				WHERE Covid_App.stock.tipo_vacina = @vacina
			END
	END
GO

--EXEC Covid_App.removeStock 20, 'astrazeneca';
--SELECT * FROM Covid_App.stock;

-------------------------------------------------------------------------------------------------------------------------------
--Procedure para adicionar novo paciente
CREATE PROCEDURE Covid_App.addPaciente (@nif DECIMAL(9,0), @profissao varchar(50), @tipo_sangue varchar(10), @doses_recebidas int, @vacina_tomada varchar(20)) 
AS
	BEGIN
		IF NOT EXISTS (SELECT * FROM Covid_App.pessoa WHERE pessoa.nif=@nif)
			BEGIN
				RAISERROR ('The person with that nif doesnt exist', 14, 1);
			END
		IF EXISTS (SELECT * FROM Covid_App.paciente WHERE paciente.nif=@nif)
			BEGIN
				RAISERROR ('The patient with that nif already exist', 14, 1);
			END
		ELSE
			INSERT Covid_App.paciente(nif,profissao,tipo_sangue,doses_recebidas,vacina_tomada)
			VALUES (@nif, @profissao, @tipo_sangue, @doses_recebidas, @vacina_tomada);
	END
GO

--EXEC Covid_App.addPaciente 123456789, 'operario', 'O', 1, 'astrazeneca';
--SELECT * FROM Covid_App.paciente;

