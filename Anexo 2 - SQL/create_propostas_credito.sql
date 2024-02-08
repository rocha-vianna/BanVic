CREATE TABLE propostas_credito (
	cod_proposta INT,
	cod_cliente INT,
	cod_colaborador INT,
	data_entrada_proposta DATE,
	horario_entrada_proposta TIME,
	taxa_juros_mensal NUMERIC,
	valor_proposta NUMERIC,
	valor_financiamento NUMERIC,
	valor_entrada NUMERIC,
	valor_prestacao NUMERIC,
	quantidade_parcelas INT,
	carencia INT,
	status_proposta VARCHAR(35)
);

COPY propostas_credito(cod_proposta, cod_cliente, cod_colaborador, data_entrada_proposta, horario_entrada_proposta, taxa_juros_mensal, valor_proposta, valor_financiamento, valor_entrada, valor_prestacao, quantidade_parcelas, carencia, status_proposta)
FROM 'C:\Program Files\PostgreSQL\15\temp\proposta_credito_corr_SQL.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

SELECT * FROM propostas_credito;

DROP TABLE propostas_credito;