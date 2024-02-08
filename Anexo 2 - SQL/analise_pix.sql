SELECT * FROM transacoes;

SELECT nome_transacao, COUNT(cod_transacao) as Qtdade FROM transacoes GROUP BY nome_transacao ORDER BY Qtdade DESC;

SELECT * FROM transacoes WHERE nome_transacao LIKE '%Pix%' ORDER BY data_transacao;
-- a primeira transacao registrada de pix foi Pix - Recebido em 16/11/2020 as 10:54:58

SELECT nome_transacao, COUNT(cod_transacao) as Qtdade FROM transacoes 
WHERE data_transacao <= '2020-11-16' AND horario_transacao < '10:54:58'
GROUP BY nome_transacao ORDER BY Qtdade DESC;

SELECT nome_transacao, COUNT(cod_transacao) as Qtdade FROM transacoes 
WHERE data_transacao >= '2020-11-16' AND horario_transacao >= '10:54:58'
GROUP BY nome_transacao ORDER BY Qtdade DESC;

----------- ^COUNT^ ----------- vSUMv ------------

SELECT nome_transacao, SUM(valor_transacao) as Soma FROM transacoes 
WHERE data_transacao <= '2020-11-16' AND horario_transacao < '10:54:58'
GROUP BY nome_transacao ORDER BY Soma DESC;

SELECT nome_transacao, SUM(valor_transacao) as Soma FROM transacoes 
WHERE data_transacao >= '2020-11-16' AND horario_transacao >= '10:54:58'
GROUP BY nome_transacao ORDER BY Soma DESC;
-------------------------^PIX^-------------------
--------------vAG DIGITALv------------------------------

SELECT nome_transacao, COUNT(cod_transacao) as Qtdade FROM transacoes 
WHERE data_transacao < '2015-08-01'
GROUP BY nome_transacao ORDER BY Qtdade DESC;

SELECT nome_transacao, COUNT(cod_transacao) as Qtdade FROM transacoes 
WHERE data_transacao >= '2015-08-01'
GROUP BY nome_transacao ORDER BY Qtdade DESC;

----------- ^COUNT^ ----------- vSUMv ------------

SELECT nome_transacao, SUM(valor_transacao) as Soma FROM transacoes 
WHERE data_transacao < '2015-08-01'
GROUP BY nome_transacao ORDER BY Soma DESC;

SELECT nome_transacao, SUM(valor_transacao) as Soma FROM transacoes 
WHERE data_transacao >= '2015-08-01'
GROUP BY nome_transacao ORDER BY Soma DESC;



SELECT num_conta, COUNT(cod_transacao) as Qtdade FROM transacoes 
GROUP BY num_conta ORDER BY Qtdade DESC;
-- TODAS AS CONTAS FIZERAM TRANSACOES
-- MAX: 363 -- 97 TRANSACOES -- 4.613,95
-- MIN: 175 -- 49 TRANSACOES -- 1.744,86

SELECT num_conta, SUM(valor_transacao) as Soma FROM transacoes 
GROUP BY num_conta ORDER BY Soma DESC;
-- MAX: 225 -- 411.617,06 -- 77 transacoes
-- MIN: 633 --       0,60 -- 67 transacoes

SELECT * FROM transacoes WHERE valor_transacao = (SELECT MAX(valor_transacao) FROM transacoes);
--conta: 225 -- TED - Recebido --   480.270,00

SELECT * FROM transacoes WHERE valor_transacao = (SELECT MIN(valor_transacao) FROM transacoes);
--conta: 199 -- TED - Realizado -- -132.100,00

