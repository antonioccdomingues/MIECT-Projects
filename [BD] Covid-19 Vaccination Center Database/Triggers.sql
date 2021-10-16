--USE Covid_app
USE p1g1
GO
--Deleting zone


--DROP TRIGGER Covid_App.PessoaAvailability
--DROP TRIGGER Covid_App.EnfermeiroAvailability
--DROP TRIGGER Covid_App.addPacienteTrigger

CREATE TRIGGER Covid_App.PessoaAvailability ON Covid_App.pessoa
AFTER INSERT
AS
	BEGIN
		DECLARE @NIF INT;
		DECLARE @Exists INT = 0;
		SELECT @NIF = nif FROM INSERTED;
		SELECT @Exists= COUNT(nif) FROM  Covid_App.pessoa WHERE Covid_App.pessoa.nif = @NIF
		PRINT'COUNT1: ' +STR(@Exists);
		IF(@Exists > 1)
		BEGIN
			RAISERROR('The nif inserted already exists!', 16, 1);
			ROLLBACK TRAN;
		END
	END	
GO

--INSERT INTO Covid_App.pessoa(nif, idade, nome, endereco) VALUES(123451444, 34, 'Maria Tonico', 'Rua dos milagres');
--DELETE FROM Covid_App.pessoa WHERE Covid_App.pessoa.nif= 123451444
--SELECT * FROM Covid_App.pessoa;
--SELECT COUNT(nif) FROM  Covid_App.pessoa WHERE Covid_App.pessoa.nif = 123451444
----------------------------------------------------------------------------------------------------------------------------

CREATE TRIGGER Covid_App.EnfermeiroAvailability ON Covid_App.enfermeiro
AFTER INSERT
AS
	BEGIN
		DECLARE @NIF DECIMAL(9,0);
		DECLARE @Exists INT = 0;
		DECLARE @ExistsEnfermeiro INT = 0;
		SELECT @NIF = nif FROM INSERTED;
		SELECT @Exists= COUNT(nif) FROM  Covid_App.pessoa WHERE Covid_App.pessoa.nif = @NIF
		SELECT @ExistsEnfermeiro= COUNT(nif) FROM  Covid_App.enfermeiro WHERE Covid_App.enfermeiro.nif = @NIF
		PRINT'COUNT1: ' +STR(@Exists);
		IF(@Exists = 0)
		BEGIN
			RAISERROR('That person does not exists', 16, 1);
			ROLLBACK TRAN;
		END
		IF(@ExistsEnfermeiro > 1)
		BEGIN
			RAISERROR('That nurse already exists', 16, 1);
			ROLLBACK TRAN;
		END
	END	
GO
--INSERT INTO Covid_App.pessoa(nif, idade, nome, endereco) VALUES(123451444, 34, 'Maria Tonico', 'Rua dos milagres');
--DELETE FROM Covid_App.enfermeiro WHERE Covid_App.enfermeiro.nif= 123451444
--DELETE FROM Covid_App.pessoa WHERE Covid_App.pessoa.nif= 123451444
--SELECT * FROM Covid_App.pessoa;
--INSERT INTO Covid_App.enfermeiro(nif) VALUES(123451444);
--EXEC Covid_App.addEnfermeiro 123451444

CREATE TRIGGER Covid_App.addPacienteTrigger ON Covid_App.paciente
AFTER INSERT
AS
	BEGIN
		DECLARE @nif DECIMAL(9,0);
		DECLARE @profissao varchar(50);
		DECLARE @sangue varchar(10);
		DECLARE @dosesRecebidas int;
		DECLARE @vacinaTomada varchar(20);
		DECLARE @Exists INT = 0;
		DECLARE @ExistsPaciente INT = 0;
		SELECT @nif = nif from inserted;
		SELECT @profissao = profissao from inserted;
		SELECT @sangue = tipo_sangue from inserted;
		SELECT @dosesRecebidas = doses_recebidas from inserted;
		SELECT @vacinaTomada = vacina_tomada from inserted;
		SELECT @Exists= COUNT(nif) FROM  Covid_App.pessoa WHERE Covid_App.pessoa.nif = @NIF
		SELECT @ExistsPaciente = COUNT(nif) FROM  Covid_App.paciente WHERE Covid_App.paciente.nif = @NIF
		IF(@Exists = 0)
		BEGIN
			RAISERROR('That person does not exist', 16, 1);
			ROLLBACK TRAN;
		END
		IF(@ExistsPaciente > 1)
		BEGIN
			RAISERROR('That patient already exist', 16, 1);
			ROLLBACK TRAN;
		END
	END
GO
				
--INSERT Covid_App.paciente(nif,profissao,tipo_sangue,doses_recebidas,vacina_tomada)
--			VALUES (149162536, 'operario', 'O', 1, 'astrazeneca');

--Select * FROM Covid_App.paciente;