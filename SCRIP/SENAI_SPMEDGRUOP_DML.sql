USE SENAI_SPMEDGROUP_TARDE

-------------INSERÇÃO--------------------------------------------------------------------------------------------
--TIPO USUARIO -------
bulk insert TIPO_USUARIO
from 'C:\db\TIPO_USUARIO.csv'
with(
format = 'csv',
firstrow = 2, -- primeira linha de dados = 2
fieldterminator = ';', -- separador de campos = ';'
rowterminator = '\n', -- separador de linhas = '\n'
CODEPAGE = 'ACP', -- codificação dos dados = 'ACP'
DATAFILETYPE = 'Char' -- tipo do arquivo = 'Char'
);

select * from TIPO_USUARIO -- Lista todos os registros da tabela personagens

truncate table personagens -- Apaga todos os registros da tabela

--ESPECIALIDADES
bulk insert ESPECIALIDADE
from 'C:\db\ESPECIALIDADE.csv'
with(
format = 'csv',
firstrow = 2, -- primeira linha de dados = 2
fieldterminator = ';', -- separador de campos = ';'
rowterminator = '\n', -- separador de linhas = '\n'
CODEPAGE = 'ACP', -- codificação dos dados = 'ACP'
DATAFILETYPE = 'Char' -- tipo do arquivo = 'Char'
);

select * from ESPECIALIDADE -- Lista todos os registros da tabela personagens

--CLINICA
bulk insert CLINICA
from 'C:\db\CLINICA.csv'
with(
format = 'csv',
firstrow = 2, -- primeira linha de dados = 2
fieldterminator = ';', -- separador de campos = ';'
rowterminator = '\n', -- separador de linhas = '\n'
CODEPAGE = 'ACP', -- codificação dos dados = 'ACP'
DATAFILETYPE = 'Char' -- tipo do arquivo = 'Char'
);

select * from CLINICA -- Lista todos os registros da tabela personagens

--USUARIO
bulk insert USUARIO
from 'C:\db\USUARIO.csv'
with(
format = 'csv',
firstrow = 2, -- primeira linha de dados = 2
fieldterminator = ';', -- separador de campos = ';'
rowterminator = '\n', -- separador de linhas = '\n'
CODEPAGE = 'ACP', -- codificação dos dados = 'ACP'
DATAFILETYPE = 'Char' -- tipo do arquivo = 'Char'
);

select * from USUARIO -- Lista todos os registros da tabela personagens

--MEDICO
bulk insert MEDICO
from 'C:\db\MEDICO.csv'
with(
format = 'csv',
firstrow = 2, -- primeira linha de dados = 2
fieldterminator = ';', -- separador de campos = ';'
rowterminator = '\n', -- separador de linhas = '\n'
CODEPAGE = 'ACP', -- codificação dos dados = 'ACP'
DATAFILETYPE = 'Char' -- tipo do arquivo = 'Char'
);

select * from MEDICO -- Lista todos os registros da tabela personagens
select * from usuario

--PRONTUARIO
bulk insert PRONTUARIO
from 'C:\db\teste.csv'
with(
format = 'csv',
firstrow = 2, -- primeira linha de dados = 2
fieldterminator = ';', -- separador de campos = ';'
rowterminator = '\n', -- separador de linhas = '\n'
CODEPAGE = 'ACP', -- codificação dos dados = 'ACP'
DATAFILETYPE = 'Char' -- tipo do arquivo = 'Char'
);

select * from PRONTUARIO -- Lista todos os registros da tabela personagens
ORDER BY ID

--CONSULTA
bulk insert CONSULTA
from 'C:\db\CONSULTA.csv'
with(
format = 'csv',
firstrow = 2, -- primeira linha de dados = 2
fieldterminator = ';', -- separador de campos = ';'
rowterminator = '\n', -- separador de linhas = '\n'
CODEPAGE = 'ACP', -- codificação dos dados = 'ACP'
DATAFILETYPE = 'Char' -- tipo do arquivo = 'Char'
);

select * from CONSULTA -- Lista todos os registros da tabela personagens
ORDER BY ID

