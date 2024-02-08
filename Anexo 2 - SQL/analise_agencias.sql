SELECT * FROM agencias;

-- São 10 agências no total, sendo 9 físicas e 1 digital.

SELECT uf, COUNT(*) AS numero_agencias FROM agencias WHERE tipo_agencia = 'Física' GROUP BY uf;

-- Temos 5 agências físicas no estado de São Paulo (SP), e 1 agência física em cada um dos seguintes estados: 
-- Pernambuco (PE), Rio de Janeiro (RJ), Rio Grande do Sul (RS) e Santa Catarina (SC).

SELECT * FROM agencias WHERE data_abertura = (SELECT MIN(data_abertura) FROM agencias);

-- A agência mais antiga é a Agência Matriz, localizada em São Paulo/SP, tendo sido inaugurada em 01/01/2010.

SELECT * FROM agencias WHERE data_abertura = (SELECT MAX(data_abertura) FROM agencias);

-- A agência mais nova é a Agência Recife, localizada em Recife/PE, tendo sido inaugurada em 09/10/2021.

SELECT data_abertura, nome, cidade, uf, tipo_agencia FROM agencias ORDER BY data_abertura;

-- Por se tratar de uma tabela com 10 linhas, podemos fazer análises olhando para o resultado da consulta acima
-- A agência digital foi inaugurada em Agosto/2015, após já existirem 6 agências e 5 anos após a inauguração da primeira agência
-- Em pouco mais de 11 anos, foram criadas 10 agências, sendo que apenas em 2011, 2014, 2016, 2017 e 2020 não foram inauguradas nenhuma agência
