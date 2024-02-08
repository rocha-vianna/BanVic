CREATE TABLE colaborador_agencia(
	cod_colaborador INT,
	cod_agencia INT
);

COPY colaborador_agencia(cod_colaborador, cod_agencia)
FROM 'C:\Program Files\PostgreSQL\15\temp\colaborador_agencia.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

SELECT * FROM colaborador_agencia;