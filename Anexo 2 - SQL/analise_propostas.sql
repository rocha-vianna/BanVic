SELECT * FROM propostas_credito;

SELECT cli.endereco, count(*) AS QTDADE FROM clientes cli
WHERE cli.cod_cliente NOT IN (SELECT cod_cliente FROM propostas_credito)
GROUP BY cli.endereco ORDER BY QTDADE DESC;

SELECT status_proposta, AVG(taxa_juros_mensal) AS juros, AVG(valor_proposta) AS proposta, 
AVG(valor_financiamento) AS financiamento, AVG(valor_entrada) AS entrada, 
AVG(valor_prestacao) AS prestacao, AVG(quantidade_parcelas) AS parcelas, AVG(carencia) AS carencia
FROM propostas_credito GROUP BY status_proposta;
-- Unico que parece ter relação seria o valor da prestacao

SELECT status_proposta, 
COUNT(*) AS NUM_propostas,
ROUND(AVG(valor_prestacao), 2) AS AVG_prestacao,
MIN(valor_prestacao),
MAX(valor_prestacao)
FROM propostas_credito GROUP BY status_proposta;
--							  avg		 min	  max		count
--"Aprovada"				5632.53		22.34	156649.98	 513
--"Em análise"				5106.12		37.15	152299.10	 468
--"Validação documentos"	3986.92		30.95	136287.40	 490
--"Enviada"					4802.44		19.16	190122.09	 525

SELECT COUNT(*) AS NUM_propostas,
ROUND(AVG(valor_prestacao), 2) AS AVG_prestacao,
MIN(valor_prestacao),
MAX(valor_prestacao)
FROM propostas_credito;
--Todas						4886,79		19,16	190122,09	1996 

-- Propostas menores que 22,34 ou maiores que 156.649,98 tendem a ficar presas no status: Enviada

SELECT cod_colaborador, COUNT(*) AS QTD
FROM propostas_credito
WHERE status_proposta = 'Enviada'
GROUP BY cod_colaborador
ORDER BY QTD DESC;

-- 525 propostas para 98 colaboradores
-- Mèdia: 5,36
-- 40 acima da média / 58 abaixo 

SELECT cod_colaborador, COUNT(*) AS QTD
FROM propostas_credito
WHERE status_proposta = 'Validação documentos'
GROUP BY cod_colaborador
ORDER BY QTD DESC;

-- 490 propostas para 99 colaboradores
-- Mèdia: 4,95
-- 53 acima da média / 46 abaixo 

SELECT cod_colaborador, COUNT(*) AS QTD
FROM propostas_credito
WHERE status_proposta = 'Em análise'
GROUP BY cod_colaborador
ORDER BY QTD DESC;

-- 468 propostas para 99 colaboradores
-- Mèdia: 4,73
-- 50 acima da média / 49 abaixo 

SELECT cod_colaborador
FROM propostas_credito
WHERE status_proposta = 'Aprovada'
GROUP BY cod_colaborador
ORDER BY QTD DESC
LIMIT 37;

-- 513 propostas para 99 colaboradores
-- Mèdia: 5,18
-- 37 acima da média / 63 abaixo 

SELECT DISTINCT cod_colaborador FROM propostas_credito
WHERE cod_colaborador NOT IN 
(SELECT cod_colaborador
FROM propostas_credito
WHERE status_proposta = 'Enviada');

-- COLABs 14 E 9 NÃO TÊM NENHUMA PROPOSTA COM STATUS 'Enviada'
-- 

SELECT DISTINCT cod_colaborador FROM propostas_credito
WHERE cod_colaborador NOT IN 
(SELECT cod_colaborador
FROM propostas_credito
WHERE status_proposta = 'Validação documentos');

-- COLAB 75 NÃO TEM NENHUMA PROPOSTA COM STATUS 'Validação documentos'
-- 

SELECT DISTINCT cod_colaborador FROM propostas_credito
WHERE cod_colaborador NOT IN 
(SELECT cod_colaborador
FROM propostas_credito
WHERE status_proposta = 'Em análise');

-- COLAB 22 NÃO TEM NENHUMA PROPOSTA COM STATUS 'Em análise'
-- 	

SELECT DISTINCT cod_colaborador FROM propostas_credito
WHERE cod_colaborador NOT IN 
(SELECT cod_colaborador
FROM propostas_credito
WHERE status_proposta = 'Aprovada');

-- COLAB 95 NÃO TEM NENHUMA PROPOSTA COM STATUS 'Aprovada'


SELECT MIN(data_nascimento), MAX(data_nascimento) FROM colaboradores
WHERE cod_colaborador IN (3, 10, 13, 14, 18, 20, 21, 22, 23, 24, 25, 27, 32, 33, 34, 37, 38, 43, 48, 52, 53, 54, 56, 63, 65, 66, 69,
73, 80, 82, 84, 85, 86, 87, 94, 97, 99);

-- MIN: 14/05/1963
-- MAX: 06/04/1998
-- ESSES 37 ESTÃO ENTRE 26 E 61 ANOS / SENDO QUE NA EMPRESA TEMOS DE 25 A 61 ANOS, OU SEJA, IDADE NÃO IMPORTA

SELECT uf, COUNT(*) AS QTD FROM colaboradores
WHERE cod_colaborador IN (3, 10, 13, 14, 18, 20, 21, 22, 23, 24, 25, 27, 32, 33, 34, 37, 38, 43, 48, 52, 53, 54, 56, 63, 65, 66, 69,
73, 80, 82, 84, 85, 86, 87, 94, 97, 99)
GROUP BY uf ORDER BY QTD DESC;

-- 19 ESTADOS
-- 6 EM PE E 4 EM SC

SELECT CONCAT(ag.nome, ' - ', ag.uf) AS agencia, COUNT(*) AS QTD FROM agencias ag
LEFT JOIN colaborador_agencia coag ON ag.cod_agencia = coag.cod_agencia
LEFT JOIN colaboradores co ON coag.cod_colaborador = co.cod_colaborador
WHERE co.cod_colaborador IN (3, 10, 13, 14, 18, 20, 21, 22, 23, 24, 25, 27, 32, 33, 34, 37, 38, 43, 48, 52, 53, 54, 56, 63, 65, 66, 69,
73, 80, 82, 84, 85, 86, 87, 94, 97, 99)
GROUP BY agencia ORDER BY QTD DESC;
-- TEM PELO MENOS 2 EM CADA AGÊNCIA