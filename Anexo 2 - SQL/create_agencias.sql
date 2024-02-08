CREATE TABLE agencias (
	id SERIAL,
	cod_agencia INT,
	nome VARCHAR(55),
	endereco VARCHAR(255),
	bairro VARCHAR(55),
	CEP VARCHAR(15),
	cidade VARCHAR(55),
	UF VARCHAR(5),
	data_abertura DATE,
	tipo_agencia VARCHAR(15)
);

COPY agencias(cod_agencia, nome, endereco, bairro, CEP, cidade, UF, data_abertura, tipo_agencia)
FROM 'C:\Program Files\PostgreSQL\15\temp\agencias.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

SELECT * FROM agencias;