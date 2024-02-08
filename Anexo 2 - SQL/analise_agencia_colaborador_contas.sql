SELECT colag.cod_agencia, 
COUNT(DISTINCT colag.cod_colaborador) AS Qtdade_colaboradores,
COUNT(DISTINCT con.num_conta) AS Num_contas_abertas,
CAST(COUNT(DISTINCT con.num_conta) AS NUMERIC) / CAST(COUNT(DISTINCT colag.cod_colaborador) AS NUMERIC) AS Media_per_capita
FROM colaborador_agencia colag, contas con
WHERE colag.cod_agencia = con.cod_agencia
GROUP BY colag.cod_agencia ORDER BY Media_per_capita DESC;

-- Agência 7 (digital) tem a melhor média de abertura de contas por colaborador: 65 contas/colaborador

-- Entre as agências físicas, temos:
-- Agência 4 tem a melhor média de abertura de contas por colaborador: 16,25 contas/colaborador
-- Agência 10 tem a pior média de abertura de contas por colaborador: 0,50 contas/colaborador

-- Sendo 460 contas abertas pela agência digital e 538 pelas físicas

SELECT colag.cod_agencia, 
ag.data_abertura,
COUNT(DISTINCT colag.cod_colaborador) AS Qtdade_colaboradores,
COUNT(DISTINCT con.num_conta) AS Num_contas_abertas,
2024 - EXTRACT(YEAR FROM ag.data_abertura) AS Idade_agencia,
CAST(COUNT(DISTINCT con.num_conta) AS NUMERIC) / (2024 - EXTRACT(YEAR FROM ag.data_abertura)) AS Media_por_ano
FROM colaborador_agencia colag, contas con, agencias ag
WHERE colag.cod_agencia = con.cod_agencia AND colag.cod_agencia = ag.cod_agencia
GROUP BY colag.cod_agencia, ag.data_abertura ORDER BY Media_por_ano DESC;

-- A agência digital tem a melhor media de abertura de contas por ano: 51

-- Entre as agências físicas a média é de 5,7 contas abertas por ano
-- Sendo a agência 1 (matriz) com a maior média: 8,4
-- E a agência 10 (a mais nova) com menor média: 1,6

-- RECOMENDO A DIMINUIÇÃO OU FECHAMENTO DA AGÊNCIA 10
-- MAIS INVESTIMENTO NA AGÊNCIA DIGITAL

SELECT endereco AS Estado, COUNT(DISTINCT cod_cliente) AS quantidade_clientes 
FROM clientes GROUP BY Estado ORDER BY quantidade_clientes DESC;

SELECT uf, COUNT(*) AS numero_agencias FROM agencias WHERE tipo_agencia = 'Física' GROUP BY uf;

SELECT COUNT(DISTINCT cod_cliente)/27 AS media_clientes_por_estado FROM clientes; -- 36
