SELECT * FROM transacoes;

SELECT COUNT(DISTINCT cod_transacao) FROM transacoes;

-- Temos 71999 propostas diferentes

SELECT COUNT(DISTINCT num_conta) FROM transacoes;

-- 999 contas diferentes, LEMBRAR DE EXCLUIR O 528

SELECT MIN(data_transacao), MAX(data_transacao) FROM transacoes;

-- De 27/02/2010 a 15/01/2023

SELECT MIN(horario_transacao), MAX(horario_transacao) FROM transacoes; 

-- De 00:00:00 as 23:59:59

SELECT COUNT(DISTINCT nome_transacao) FROM transacoes;

-- Temos 15 tipos de transacoes

SELECT nome_transacao, COUNT(*) AS Qtdade FROM transacoes GROUP BY nome_transacao ORDER BY Qtdade DESC;

-- Compra crédito é a transacao com mais registros, 24977 no total
-- Pix Saque é a transacao com menos registros, 90 no total

SELECT MIN(valor_transacao), MAX(valor_transacao), AVG(valor_transacao) FROM transacoes; 

-- Min: -132100,00
-- Max: 480270,00
-- Média: 357,03

SELECT num_conta, COUNT(DISTINCT cod_transacao) FROM transacoes WHERE num_conta = 528 GROUP BY num_conta;

-- Temos 78 transacoes com a conta 528 do cliente 528 que não existe na base de clientes


