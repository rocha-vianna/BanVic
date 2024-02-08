CREATE TABLE clientes (
	id SERIAL,
	cod_cliente INT,
	nome_completo VARCHAR(55),
	email VARCHAR(55),
	tipo_cliente VARCHAR(5),
	data_inclusao DATE,
	horario_inclusao TIME,
	cpfcnpj VARCHAR(25),
	data_nascimento DATE,
	endereco VARCHAR(5),
	CEP VARCHAR(15)
);

COPY clientes(cod_cliente, nome_completo, email, tipo_cliente, data_inclusao, horario_inclusao, cpfcnpj, data_nascimento, endereco, CEP)
FROM 'C:\Program Files\PostgreSQL\15\temp\clientes.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

SELECT * FROM clientes;