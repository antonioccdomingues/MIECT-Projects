--USE Covid_app
USE p1g1
GO

--DROP FUNCTION Covid_App.fnGetNumVacinasEnfermeiro;
--DROP FUNCTION Covid_App.fnGetNumDetVacinasEnfermeiro;
--DROP FUNCTION Covid_App.fnGetNumVacinasEnfermeiroTable;
--DROP FUNCTION Covid_App.fnGetVacinadosAtDate;
--DROP FUNCTION Covid_App.fnGetEnfermeiros;
--DROP FUNCTION Covid_App.fnGetVacinasDadasEnfermeiro;
--DROP FUNCTION Covid_App.fnGetMarcacoes;
--DROP FUNCTION Covid_App.fnGetNumNifMarcacoes ;
--DROP FUNCTION Covid_App.fnGetVacCompativelPaciente;
--DROP FUNCTION Covid_App.fnGetReacaoPaciente;
--DROP FUNCTION Covid_App.fnGetEventoClinicoPaciente;
--DROP FUNCTION Covid_App.fnGetLocalVacinPaciente;
--DROP FUNCTION Covid_App.fnGetStockVacina;

--Função que devolve o numero de vacinadas dadas por um enfermeiro
CREATE FUNCTION Covid_App.fnGetNumVacinasEnfermeiro (@nif AS DECIMAL(9,0))
RETURNS INT
AS
BEGIN
	RETURN (SELECT count(numero_serie) FROM  Covid_App.vacina WHERE Covid_App.vacina.nif_enfermeiro = @nif)
END
GO
--SELECT Covid_App.fnGetNumVacinasEnfermeiro(121144225);

-------------------------------------------------------------------------------------------------------------------------------------------------------

--Função que devolve o numero de vacinadas dadas por um enfermeiro de uma determinada vacina
CREATE FUNCTION Covid_App.fnGetNumDetVacinasEnfermeiro (@nif AS DECIMAL(9,0), @nome AS VARCHAR(20))
RETURNS INT
AS
BEGIN
	RETURN (SELECT count(numero_serie) FROM  Covid_App.vacina WHERE Covid_App.vacina.nif_enfermeiro = @nif AND Covid_App.vacina.nome = @nome)
END
GO
--SELECT Covid_App.fnGetNumDetVacinasEnfermeiro(121144225, 'moderna')

---------------------------------------------------------------------------------------------------------------------------------------------------------

--tabela q mostra quantas vacinas cada enfermeiro deu
CREATE FUNCTION Covid_App.fnGetNumVacinasEnfermeiroTable()
RETURNS @tabela TABLE (nome_enfermeiro VARCHAR(50), nif_enfermeiro DECIMAL(9,0), quantidade INT)
AS
BEGIN
	INSERT @tabela 
	SELECT Covid_App.pessoa.nome, Covid_App.vacina.nif_enfermeiro, count( Covid_App.vacina.numero_serie)
	FROM Covid_App.vacina
	JOIN Covid_App.enfermeiro ON vacina.nif_enfermeiro = enfermeiro.nif
	JOIN pessoa ON enfermeiro.nif = pessoa.nif
	GROUP BY Covid_App.pessoa.nome, Covid_App.vacina.nif_enfermeiro
	RETURN; 
END;
GO
--SELECT * FROM Covid_App.fnGetNumVacinasEnfermeiroTable();

--------------------------------------------------------------------------------------------------------------------------------------

--Retorna tabela com as pessoas que foram vacinadas num determinado dia
CREATE FUNCTION Covid_App.fnGetVacinadosAtDate(@var_dia DATE) 
RETURNS @table TABLE (nif_paciente DECIMAL(9,0), nome_vacina VARCHAR(20), numero_serie INT, hora DATETIME, nif_Enfermeiro DECIMAL(9,0))
AS
	BEGIN
		INSERT @table 
			SELECT DISTINCT Covid_App.marcacao.nif_paciente, Covid_App.vacina.nome, Covid_App.vacina.numero_serie, Covid_App.marcacao.var_hora, Covid_App.marcacao.nif_enfermeiro
			FROM Covid_App.vacina
				JOIN Covid_App.paciente ON vacina.nif_paciente = paciente.nif 
				JOIN  Covid_App.marcacao ON paciente.nif= marcacao.nif_paciente 
					WHERE CONVERT(DATE, marcacao.var_hora) = @var_dia  
		RETURN;
	END;
GO
--SELECT * FROM Covid_App.fnGetVacinadosAtDate('2021/07/02');
--SELECT * FROM Covid_App.marcacao

-------------------------------------------------------------------------------------------------------------------------

--Retorna tabela com dados de todos os enfermeiros
CREATE FUNCTION Covid_App.fnGetEnfermeiros() 
RETURNS @table TABLE (id INT, nome_enf VARCHAR(50), NIF DECIMAL(9,0), endereco VARCHAR(50), idade INT)
AS
	BEGIN
		INSERT @table 
			SELECT DISTINCT Covid_App.enfermeiro.id, Covid_App.pessoa.nome, Covid_App.enfermeiro.nif, Covid_App.pessoa.endereco, Covid_App.pessoa.idade
			FROM Covid_App.enfermeiro
				JOIN Covid_App.pessoa ON enfermeiro.nif = pessoa.nif   
		RETURN;
	END;
GO
--SELECT * FROM Covid_App.fnGetEnfermeiros();
-------------------------------------------------------------------------------------------------------------------------------------

--Pesquisar nif de enfermeiro para obter pessoas que vacionou
--Função que devolve o tabela com as vacinadas dadas por um enfermeiro
CREATE FUNCTION Covid_App.fnGetVacinasDadasEnfermeiro (@nif AS DECIMAL(9,0))
RETURNS @table TABLE (Vacina VARCHAR(20), Paciente VARCHAR(50), Validade_Vacina INT)
AS
BEGIN
	INSERT @table
		SELECT DISTINCT Covid_App.vacina.nome, Covid_App.pessoa.nome, Covid_App.vacina.validade
		FROM Covid_App.pessoa
			JOIN Covid_App.paciente ON  Covid_App.pessoa.nif=Covid_App.paciente.nif
			JOIN Covid_App.vacina ON Covid_App.pessoa.nif = Covid_App.vacina.nif_paciente
				WHERE Covid_App.vacina.nif_enfermeiro= @nif
		RETURN;
END
GO
--SELECT * FROM Covid_App.fnGetVacinasDadasEnfermeiro(121144225)
--SELECT * FROM Covid_App.enfermeiro;
-------------------------------------------------------------------------------------------------------------------------------------

--Lista completa de marcações
CREATE FUNCTION Covid_App.fnGetMarcacoes ()
RETURNS @table TABLE (Numero INT, [Data] DATETIME, Enfermeiro_nif DECIMAL(9,0), Utente VARCHAR(50), Paciente_nif DECIMAL(9,0), Vacina VARCHAR(20))
AS
BEGIN
	INSERT @table
		SELECT DISTINCT Covid_App.marcacao.numero_marcacao, Covid_App.marcacao.var_hora, Covid_App.marcacao.nif_enfermeiro, Covid_App.pessoa.nome, Covid_App.marcacao.nif_paciente, Covid_App.vacina.nome
		FROM Covid_App.marcacao
			JOIN  Covid_App.pessoa ON marcacao.nif_paciente= pessoa.nif
			JOIN Covid_App.vacina ON pessoa.nif= vacina.nif_paciente
				WHERE Covid_App.vacina.nif_paciente= Covid_App.marcacao.nif_paciente
				ORDER BY Covid_App.marcacao.var_hora;
		RETURN;
END
GO
--SELECT * FROM Covid_App.fnGetMarcacoes();

----------------------------------------------------------------------------------------------------------------
--Função que devolve o numero de pessoas com determinado nif

CREATE FUNCTION Covid_App.fnGetNumNifMarcacoes (@nif AS DECIMAL(9,0))
RETURNS INT
AS
BEGIN
	RETURN (SELECT count(nif_paciente) FROM  Covid_App.marcacao WHERE Covid_App.marcacao.nif_paciente = @nif)
END
GO

--SELECT Covid_App.fnGetNumNifMarcacoes(149162536);

----------------------------------------------------------------------------------------------------------------
--Funçao que devolve a vacina que o paciente com certo nif vai tomar 
CREATE FUNCTION Covid_App.fnGetVacCompativelPaciente(@nif AS DECIMAL(9,0))
RETURNS @table TABLE (NIF DECIMAL (9,0), nomePaciente VARCHAR(50), vacina VARCHAR(20))
AS 
	BEGIN
		INSERT @table
			SELECT DISTINCT Covid_App.paciente.nif, Covid_App.pessoa.nome, Covid_App.paciente.vacina_tomada  
			FROM Covid_App.paciente JOIN Covid_App.pessoa ON Covid_App.paciente.nif = pessoa.nif Where Covid_App.paciente.nif = @nif
			RETURN; 
	END;
GO

--Select * FROM Covid_App.fnGetVacCompativelPaciente(135791357);

----------------------------------------------------------------------------------------------------------------
--Funçao que devolve a reacao de certo paciente à vacina tomada
CREATE FUNCTION Covid_App.fnGetReacaoPaciente(@nif AS DECIMAL(9,0))
RETURNS @table TABLE (nome varchar(50), reacoes varchar(100), gravidade INT, vacina varchar(20), num_serie_vacina INT)
AS
	BEGIN
		INSERT @table
			SELECT Covid_App.pessoa.nome, Covid_App.reacao.denominacao, Covid_App.reacao.nivel_gravidade, Covid_App.vacina.nome, Covid_App.vacina.numero_serie
			FROM Covid_App.pessoa JOIN Covid_App.vacina ON pessoa.nif = vacina.nif_paciente
			JOIN Covid_App.reacao ON Covid_App.reacao.numero_serie = vacina.numero_serie
			Where vacina.nif_paciente = @nif
		RETURN;
	END;
GO
 
 --SELECT * FROM Covid_App.fnGetReacaoPaciente(981347909);

 ----------------------------------------------------------------------------------------------------------------
--Funçao que devolve os eventos clinicos de certo paciente e a vacina compativel com cada um
CREATE FUNCTION Covid_App.fnGetEventoClinicoPaciente(@nif AS DECIMAL(9,0))
RETURNS @table TABLE(nif DECIMAL(9,0), nome varchar(50), doenca varchar(50), data_do_diagnostico DATE, medicamentos_receitados varchar(100), alergias varchar(50), vacina_recomendada varchar(50))
AS 
	BEGIN
		INSERT @table
			SELECT Covid_App.evento_clinico.nif, Covid_App.pessoa.nome, Covid_App.evento_clinico.nome_doenca, Covid_App.evento_clinico.var_data, 
			Covid_App.evento_clinico.medicamentos_associados,Covid_App.evento_clinico.alergias, Covid_App.doenca.vacina_compativel
			FROM Covid_App.evento_clinico JOIN Covid_App.doenca ON evento_clinico.nome_doenca = doenca.nome
			JOIN Covid_App.pessoa ON pessoa.nif = evento_clinico.nif
			Where evento_clinico.nif = @nif
		RETURN;
	END;
GO

--Select * From Covid_App.fnGetEventoClinicoPaciente(981347909);
--Select * FROM Covid_App.fnGetVacCompativelPaciente(981347909);

----------------------------------------------------------------------------------------------------------------
--Funcao qe retorna o local onde o paciente tomou a vacina
CREATE FUNCTION Covid_App.fnGetLocalVacinPaciente(@nif AS DECIMAL(9,0))
RETURNS @table TABLE(nome varchar(50), centro_de_vacinacao varchar(50))
AS
	BEGIN
		INSERT @table
			SELECT DISTINCT Covid_App.pessoa.nome, Covid_App.vacina.endereco
			FROM Covid_App.pessoa Join Covid_App.vacina ON Covid_App.pessoa.nif = vacina.nif_paciente
			WHERE vacina.nif_paciente = @nif
		RETURN;
	END;
GO

--SELECT * FROM Covid_App.fnGetLocalVacinPaciente(981347909);

----------------------------------------------------------------------------------------------------------------
--Funcao que retorna o stock de uma vacina especifica
CREATE FUNCTION Covid_App.fnGetStockVacina(@vac AS varchar(20))
RETURNS @table TABLE(nome varchar(20), stock int)
AS
	BEGIN
		INSERT @table
			SELECT Covid_App.stock.tipo_vacina, Covid_App.stock.quantidade
			FROM Covid_App.stock Where stock.tipo_vacina = @vac
		RETURN;
	END;
GO

--SELECT * FROM Covid_App.fnGetStockVacina('pfeizer');