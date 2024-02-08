SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 1
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM SP
-- MAX: 8 EM AM
-- MIN: 1 EM PE
-- 26 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 2
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM SP
-- MAX: 7 EM AM
-- MIN: 2 EM TO
-- TODOS ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 3
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM SP
-- MAX: 7 EM RR
-- MIN: 1 EM 5 ESTADOS
-- 26 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 4
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM SP
-- MAX: 7 EM AL
-- MIN: 1 EM 9 ESTADOS
-- 23 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 5
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM RS
-- MAX: 6 EM RO
-- MIN: 1 EM 7 ESTADOS
-- 25 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 6
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM RJ
-- MAX: 8 EM MA
-- MIN: 1 EM 7 ESTADOS
-- 22 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 7
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA DIGITAL
-- MAX: 26 EM MS
-- MIN: 8 EM RO
-- TODOS ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 8
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM SP
-- MAX: 4 EM MG
-- MIN: 1 EM 15 ESTADOS
-- 21 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 9
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM SC
-- MAX: 4 EM SP
-- MIN: 1 EM 16 ESTADOS
-- 21 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
WHERE cod_agencia = 10
GROUP BY UF
ORDER BY Qtdade DESC;

-- AGENCIA EM PE
-- 1 EM 5 ESTADOS
-- 5 ESTADOS

SELECT cli.endereco AS UF, COUNT(con.cod_agencia) AS Qtdade FROM contas con
LEFT JOIN clientes cli
ON con.cod_cliente = cli.cod_cliente
GROUP BY UF
ORDER BY Qtdade DESC;

-- TODOS ESTADOS
-- PE TA EM PENULTIMO, NÃO FAZ SENTIDO TER UMA AGENCIA FISICA
-- TOP 5:
-- 1. AM
-- 2. ES
-- 3. SP
-- 4. MS
-- 5. MA

-- SENDO QUE TEMOS 5 FISICAS EM SP E 1 EM RJ, RS, SC E PE
-- SP: RANK 3
-- RJ: RANK 22
-- RS: RANK 15
-- SC: RANK 13
-- PE: RANK 26

-- VER QUAIS FUNCIONARIOS TRABALHAM EM CADA AGENCIA PARA PENSARMOS EM REALOCAR ELES, CRIANDO NOVAS AGENCIAS,
-- PELO MENOS 1 AGÊNCIA EM CADA REGIÃO DO BRASIL - 5 REGIÕES
-- NORTE: AM
-- NORDESTE: MA
-- CENTRO-OESTE: MS
-- SUDESTE: SP E ES
-- SUL: SC