USE SENAI_SPMEDGROUP_TARDE
--SELECT
--vinculou a tabela de prontu�rio com a de consultas
SELECT
p.*,
co.DATA_CONS
FROM
CONSULTA co
RIGHT JOIN
prontuario p
ON
p.ID = co.ID_PRONTUARIO

--vinculou a tabela de prontu�rios com a de consultas e m�dicos
SELECT * FROM CONSULTA
INNER JOIN PRONTUARIO ON PRONTUARIO.ID = PRONTUARIO.ID
INNER JOIN MEDICO ON MEDICO.ID = MEDICO.ID

--vinculou a tabela de m�dicos com a tabela de especialidades
SELECT
m.*,
es.ID,
ES.NOME
FROM
ESPECIALIDADE es
RIGHT JOIN
MEDICO m
ON
m.ID_ESPECIALIDADE = es.ID



--vinculou a tabela de m�dicos com a tabela de cl�nicas
SELECT
MEDICO.*,
CLINICA.ID,
CLINICA.NOME_FANTASIA
FROM
CLINICA
RIGHT JOIN
MEDICO
ON 
MEDICO.ID_CLINICA = ID_CLINICA
--vinculou a tabela de m�dicos com a tabela de cl�nicas
SELECT 
CLINICA.*,
MEDICO.ID,
MEDICO.NOME
FROM 
MEDICO
RIGHT JOIN
CLINICA
ON
CLINICA.ID = ID_CLINICA
---------------------------------------------------------------------------------------
--FUN��ES 
--Criou um evento para que a idade do usu�rio seja calculada todos os dias
SELECT FLOOR (DATEDIFF(DAY,DATA_NASC ,GETDATE()) / 365.25) AS IDADE FROM PRONTUARIO  

--Criou uma fun��o para retornar � quantidade de m�dicos de uma determinada especialidade
CREATE PROCEDURE MEDICOS  
 @ESPECIALIDADE VARCHAR(100)
 AS 
 BEGIN 
 SELECT COUNT (*) AS ESPECIALIDADES FROM MEDICO 
 INNER JOIN ESPECIALIDADE 
 ON MEDICO.ID_ESPECIALIDADE = ESPECIALIDADE.ID
 AND
 ESPECIALIDADE.NOME = @ESPECIALIDADE
 END
 EXEC MEDICOS 'PSIQUIATRIA' 
 --Criou uma fun��o para que retorne a idade do usu�rio a partir de uma determinada stored procedure
 --JA FOI CRIADO NO SELECT ACIMA 

 --backcup
 BACKUP DATABASE SPMEDICALGROUP_TARDE
	TO DISK = 'C:\db\SPMEDICALGROUP_BD.BAK'
GO
