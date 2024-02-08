CREATE TABLE colaboradores (
	cod_colaborador INT,
	nome_completo VARCHAR(55),
	email VARCHAR(55),
	cpf VARCHAR(25),
	data_nascimento DATE,
	UF VARCHAR(5),
	CEP VARCHAR(15)
);

COPY colaboradores(cod_colaborador, nome_completo, email, cpf, data_nascimento, UF, CEP)
FROM 'C:\Program Files\PostgreSQL\15\temp\colaboradores.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

SELECT * FROM colaboradores;