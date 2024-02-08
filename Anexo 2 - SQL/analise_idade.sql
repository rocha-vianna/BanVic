SELECT * FROM clientes; 

SELECT (2023 - EXTRACT(YEAR FROM data_nascimento)) AS Idade
FROM clientes 
ORDER BY Idade;

----------------------------------------------------------------------

SELECT 'Jovens - menos de 30 anos', COUNT(*) AS Qtdade_clientes
FROM clientes 
WHERE EXTRACT(YEAR FROM data_nascimento) > '1993'; -- 192

SELECT CONCAT(ag.nome, ' - ', ag.uf) AS agencia, COUNT(con.num_conta) AS Qtdade_contas
FROM agencias ag
LEFT JOIN contas con ON ag.cod_agencia = con.cod_agencia
LEFT JOIN clientes cli ON con.cod_cliente = cli.cod_cliente
WHERE EXTRACT(YEAR FROM data_nascimento) > '1993'
GROUP BY agencia ORDER BY Qtdade_contas DESC;

----------------------------------------------------------------------

SELECT 'Adultos - entre 30 e 60 anos', COUNT(*) AS Qtdade_clientes
FROM clientes 
WHERE EXTRACT(YEAR FROM data_nascimento) BETWEEN '1963' AND '1993'; -- 483

SELECT CONCAT(ag.nome, ' - ', ag.uf) AS agencia, COUNT(con.num_conta) AS Qtdade_contas
FROM agencias ag
LEFT JOIN contas con ON ag.cod_agencia = con.cod_agencia
LEFT JOIN clientes cli ON con.cod_cliente = cli.cod_cliente
WHERE EXTRACT(YEAR FROM data_nascimento) BETWEEN '1963' AND '1993'
GROUP BY agencia ORDER BY Qtdade_contas DESC;

----------------------------------------------------------------------

SELECT 'Idosos - mais de 60 anos', COUNT(*) AS Qtdade_clientes
FROM clientes 
WHERE EXTRACT(YEAR FROM data_nascimento) < '1963'; -- 323

SELECT CONCAT(ag.nome, ' - ', ag.uf) AS agencia, COUNT(con.num_conta) AS Qtdade_contas
FROM agencias ag
LEFT JOIN contas con ON ag.cod_agencia = con.cod_agencia
LEFT JOIN clientes cli ON con.cod_cliente = cli.cod_cliente
WHERE EXTRACT(YEAR FROM data_nascimento) < '1963'
GROUP BY agencia ORDER BY Qtdade_contas DESC;