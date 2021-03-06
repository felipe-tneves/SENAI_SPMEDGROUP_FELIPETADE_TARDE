CREATE DATABASE SENAI_SPMEDGROUP_TARDE;

USE SENAI_SPMEDGROUP_TARDE;

--CRIA TABELA------------------------------------------------------------------------------------------------------------------------
CREATE TABLE TIPO_USUARIO(
ID INT IDENTITY PRIMARY KEY -- CRIA ID COM AUTO INCREMENTO
,NOME VARCHAR(250) NOT NULL -- NOT NULL NAO PODE SER NULO
);

CREATE TABLE ESPECIALIDADE(
ID INT IDENTITY PRIMARY KEY
, NOME VARCHAR(250) NOT NULL
);

CREATE TABLE CLINICA(
ID INT IDENTITY PRIMARY KEY
,NOME_FANTASIA VARCHAR(250) NOT NULL
,ENDERECO VARCHAR(250) NOT NULL
,RAZAO_SOCIAL VARCHAR(250) NOT NULL
,CNPJ VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE USUARIO(
ID INT IDENTITY PRIMARY KEY
,EMAIL VARCHAR(250) NOT NULL UNIQUE
,SENHA VARCHAR(250) NOT NULL
,ID_TIPO_USUARIO INT FOREIGN KEY REFERENCES TIPO_USUARIO(ID) NOT NULL --FAZ UM LINK ENTRE TIPO USUARIO E USUARIO
);

CREATE TABLE MEDICO(
ID INT IDENTITY PRIMARY KEY
,NOME VARCHAR(250) NOT NULL
,CRM BIGINT NOT NULL UNIQUE
,AGENDA VARCHAR(250) NOT NULL
,TELEFONE VARCHAR(250) NOT NULL
,ID_USUARIO INT FOREIGN KEY REFERENCES USUARIO(ID) NOT NULL
,ID_ESPECIALIDADE INT FOREIGN KEY REFERENCES ESPECIALIDADE(ID) NOT NULL
,ID_CLINICA INT FOREIGN KEY REFERENCES CLINICA(ID) NOT NULL
);

CREATE TABLE PRONTUARIO(
ID INT IDENTITY PRIMARY KEY
,NOME VARCHAR(250) NOT NULL
,RG VARCHAR(9) NOT NULL UNIQUE
,CPF CHAR(11) NOT NULL UNIQUE
,ENDERECO VARCHAR(250) NOT NULL
,TELEFONE VARCHAR(14) NOT NULL
,DATA_NASC DATETIME NOT NULL
,ID_USUARIO INT FOREIGN KEY REFERENCES USUARIO(ID)
);

CREATE TABLE CONSULTA(
ID INT IDENTITY PRIMARY KEY
,SITUACAO VARCHAR(250) NOT NULL
,ANAMNESIA VARCHAR(250)
,DATA_CONS DATETIME NOT NULL
,ID_MEDICO INT FOREIGN KEY REFERENCES MEDICO(ID)
,ID_PRONTUARIO INT FOREIGN KEY REFERENCES PRONTUARIO(ID)
);

