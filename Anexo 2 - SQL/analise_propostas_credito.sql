SELECT * FROM propostas_credito;

SELECT COUNT(DISTINCT cod_proposta) FROM propostas_credito;

-- Temos 1996 propostas diferentes

SELECT status_proposta, COUNT(*) AS Qtdade FROM propostas_credito GROUP BY status_proposta ORDER BY Qtdade DESC;

-- Enviada: 525
-- Aprovada: 513
-- Validação documentos: 490
-- Em análise: 468

SELECT cod_cliente, COUNT(*) AS Qtdade FROM propostas_credito GROUP BY cod_cliente ORDER BY Qtdade DESC;

-- Temos 860 clientes com pelo menos 1 proposta de crédito

SELECT cod_colaborador, COUNT(*) AS Qtdade FROM propostas_credito GROUP BY cod_colaborador ORDER BY Qtdade DESC;

-- Todos os 100 colaboradores tem pelo menos 8 propostas registradas e no máximo 34 propostas

SELECT MIN(data_entrada_proposta), MAX(data_entrada_proposta) FROM propostas_credito;

-- De 01/01/2010 a 18/12/2022

SELECT MIN(horario_entrada_proposta), MAX(horario_entrada_proposta) FROM propostas_credito;

-- De 00:00:17 à 23:59:06

SELECT MIN(taxa_juros_mensal), MAX(taxa_juros_mensal), AVG(taxa_juros_mensal) FROM propostas_credito;

-- Menor taxa: 0,008
-- Maior taxa: 0,025
-- Taxa média: 0,016

SELECT MIN(valor_proposta), MAX(valor_proposta), AVG(valor_proposta) FROM propostas_credito;

-- Min: 944,01
-- Max: 206514,64
-- Média: 83911,89

SELECT MIN(valor_financiamento), MAX(valor_financiamento), AVG(valor_financiamento) FROM propostas_credito; 

-- Min: 1605,63
-- Max: 249974,50
-- Média: 124751,12

SELECT MIN(valor_entrada), MAX(valor_entrada), AVG(valor_entrada) FROM propostas_credito; 

-- Min: 288,50
-- Max: 120647,80
-- Média: 40839,23

SELECT MIN(valor_prestacao), MAX(valor_prestacao), AVG(valor_prestacao) FROM propostas_credito; 

-- Min: 19,16
-- Max: 190122,09
-- Média: 4886,79

SELECT MIN(quantidade_parcelas), MAX(quantidade_parcelas), AVG(quantidade_parcelas) FROM propostas_credito; 

-- Min: 1
-- Max: 120
-- Média: 61,22

SELECT MIN(carencia), MAX(carencia), AVG(carencia) FROM propostas_credito; 

-- Min: 0
-- Max: 6
-- Média: 3,04 