CREATE TABLE transacoes (
	cod_transacao INT,
	num_conta INT,
	data_transacao DATE,
	horario_transacao TIME,
	nome_transacao VARCHAR(55),
	valor_transacao NUMERIC
);

COPY transacoes(cod_transacao, num_conta, data_transacao, horario_transacao, nome_transacao, valor_transacao)
FROM 'C:\Program Files\PostgreSQL\15\temp\transacoes_SQL.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

	
SELECT * FROM transacoes;