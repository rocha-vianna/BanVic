CREATE TABLE contas (
	num_conta INT,
	cod_cliente INT,
	cod_agencia INT,
	cod_colaborador INT,
	tipo_conta VARCHAR(5),
	data_abertura DATE,
	horario_abertura TIME,
	saldo_total NUMERIC,
	saldo_disponivel NUMERIC,
	data_ultimo_lancamento DATE,
	horario_ultimo_lancamento TIME
);

COPY contas(num_conta, cod_cliente, cod_agencia, cod_colaborador, tipo_conta, data_abertura, horario_abertura, saldo_total, saldo_disponivel, data_ultimo_lancamento, horario_ultimo_lancamento)
FROM 'C:\Program Files\PostgreSQL\15\temp\contas_SQL.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

SELECT * FROM contas;