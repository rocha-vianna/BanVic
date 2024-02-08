SELECT * FROM colaborador_agencia;

SELECT COUNT(DISTINCT cod_colaborador) FROM colaborador_agencia;

-- Temos 100 colaboradores registrados

SELECT COUNT(DISTINCT cod_agencia) FROM colaborador_agencia;

-- Temos 10 agências

SELECT cod_agencia, COUNT(DISTINCT cod_colaborador) AS Qtdade_colaboradores FROM colaborador_agencia 
GROUP BY cod_agencia ORDER BY Qtdade_colaboradores;

-- A agência 4 é a que tem menos colaboradores, são 4 no total
-- A agência 1 é a que tem mais colaboradores, são 16 no total