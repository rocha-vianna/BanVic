SELECT * FROM calendario;

SELECT a.nome, a.data_abertura, c.tipo_dia FROM agencias a, calendario c WHERE a.data_abertura = c.dates;

-- relação entre as datas de abertura das agências e os tipos de dia

SELECT cal.tipo_dia, COUNT(cli.*) AS Num_clientes 
FROM clientes cli, calendario cal WHERE cli.data_inclusao = cal.dates GROUP BY cal.tipo_dia ORDER BY Num_clientes DESC;

-- DIA UTIL: 716 clientes
-- FINAL DE SEMANA: 244 clientes
-- FERIADO: 38 clientes

SELECT cal.tipo_dia, COUNT(con.*) AS Num_contas 
FROM contas con, calendario cal WHERE con.data_abertura = cal.dates GROUP BY cal.tipo_dia ORDER BY Num_contas DESC;

-- DIA UTIL: 716 contas (se excluirmos o cliente 528)
-- FINAL DE SEMANA: 244 contas
-- FERIADO: 38 contas

-- Podemos ver que esses arquvios enviados não se atentaram a esse tipo de análise, uma vez que baseado nessa 3 consultas acima
-- temos muitas inclusões/aberturas que caem no FINAL DE SEMANA ou no FERIADO






