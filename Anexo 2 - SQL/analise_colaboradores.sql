SELECT * FROM colaboradores;

SELECT COUNT(DISTINCT cod_colaborador) FROM colaboradores;

-- Temos 100 colaboradores

SELECT cod_colaborador, nome_completo, data_nascimento FROM colaboradores 
WHERE data_nascimento = (SELECT MIN(data_nascimento) FROM colaboradores);

-- João Miguel Souza é nosso colaborador mais idoso. Em Dezembro/2023 ele tinha 61 anos.

SELECT cod_colaborador, nome_completo, data_nascimento FROM colaboradores 
WHERE data_nascimento = (SELECT MAX(data_nascimento) FROM colaboradores);

-- Luna Teixeira é nossa colaboradora mais jovem. Em Dezembro/2023 ela tinha 25 anos.

SELECT uf, COUNT(DISTINCT cod_colaborador) AS Qtdade_colaboradores FROM colaboradores GROUP BY uf ORDER BY Qtdade_colaboradores DESC;

-- Temos pelo menos 1 colaborador em cada estado do Brasil e no DF;
-- Pernambuco(PE) é onde temos mais colaboradores, 8 no total.
-- E com apenas 1 colaborador nos estados do Rio Grande do Sul (RS) e em Alagoas (AL).
