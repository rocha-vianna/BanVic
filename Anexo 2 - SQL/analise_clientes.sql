SELECT * FROM clientes;

SELECT 'Número total de clientes' AS descricao, COUNT(DISTINCT cod_cliente) AS quantidade FROM clientes;

-- Temos 998 clientes diferentes nessa base

SELECT DISTINCT tipo_cliente, COUNT(*) AS quantidade FROM clientes GROUP BY tipo_cliente;

-- Todos os 998 clientes são Pessoa Física (PF)

SELECT cod_cliente, nome_completo, cpfcnpj, data_inclusao FROM clientes WHERE data_inclusao = (SELECT MIN(data_inclusao) FROM clientes);

-- Luiza Silva é a nossa cliente mais antiga, foi incluída no sistema em 02/02/2010

SELECT cod_cliente, nome_completo, cpfcnpj, data_inclusao FROM clientes WHERE data_inclusao = (SELECT MAX(data_inclusao) FROM clientes);

-- Vitor Almeida é o nosso cliente mais recente, foi incluído no sistema em 27/12/2010

SELECT EXTRACT(YEAR FROM data_inclusao) AS Ano_inclusao, COUNT(*) AS Quantidade_clientes FROM clientes GROUP BY Ano_inclusao ORDER BY Ano_inclusao;

-- Podemos ver que houve crescimento ano após ano no número de clientes registrados, excluindo entre 2019 e 2020, que registrou uma queda de 1 registro
-- GERAR O GRÁFICO

SELECT EXTRACT(MONTH FROM data_inclusao) AS Mes_inclusao, COUNT(*) AS Quantidade_clientes FROM clientes GROUP BY Mes_inclusao ORDER BY Mes_inclusao;

-- PENSAR EM COMO COMPARAR OS MESES, COMO MÉDIA, ALCANCE E TALZ

SELECT cod_cliente, nome_completo, cpfcnpj, data_inclusao, data_nascimento FROM clientes WHERE data_nascimento = (SELECT MIN(data_nascimento) FROM clientes);

-- Brenda Cunha e Sarah da Mata são nossas 2 clientes mais idosas, ambas nasceram em 26/07/1942.
-- Brenda se tornou nossa cliente aos 76 anos.
-- Sarah se tornou nossa cliente aos 79 anos.

SELECT cod_cliente, nome_completo, cpfcnpj, data_inclusao, data_nascimento FROM clientes WHERE data_nascimento = (SELECT MAX(data_nascimento) FROM clientes);

-- Maria Sophia da Luz é nossa cliente mais nova, ela nasceu em 04/04/2007. 
-- Ela se tornou nossa cliente aos 7 anos.

SELECT endereco AS Estado, COUNT(DISTINCT cod_cliente) AS quantidade FROM clientes GROUP BY Estado ORDER BY quantidade DESC;

-- Nós temos clientes em todos os estados do Brasil e no DF!!
-- O estado com maior número de clientes é Amazonas (AM) com 53 clientes.
-- O estado com menor número de clientes é Rondônia (RO) com 25 clientes.

-- PENSAR EM COMO COMPARAR OS DADOS, COMO MÉDIA, ALCANCE E TALZ

