SELECT * FROM contas;

-- 							INICIO - CASO CLIENTE 528
SELECT SUM(cod_cliente) FROM clientes; -- 498972
SELECT SUM(cod_cliente) FROM contas; -- 499500
SELECT cod_cliente FROM clientes WHERE cod_cliente BETWEEN 526 AND 530 ORDER BY cod_cliente; -- FALTANTE: 528
SELECT cod_cliente FROM contas WHERE cod_cliente BETWEEN 526 AND 530 ORDER BY cod_cliente; -- TEM O 528
SELECT * FROM contas WHERE cod_cliente = 528;

-- Temos alugmas suposições a fazer:
-- 1. A conta 528 com o cliente 528 deve ser excluída da tabela 'contas', já que o cliente 528 não consta na tabela 'clientes'
-- 2. A tabela 'clientes' que eu possuo não consta o 528 mais, pq ele já foi nosso cliente, mas deixou de ser
-- 3. Se o sistema permitir que um cliente tenha mais de uma conta, pode ter sido erro de digitação do cod_cliente

SELECT * FROM contas WHERE cod_colaborador = 23;

-- Analisando as contas abertas pelo colaborador 23, não parece ter nenhuma suspeita de fraude

-- 							FIM - CASO CLIENTE 528

SELECT MIN(data_abertura), MAX(data_abertura) FROM contas;

-- De 02/02/2010 a 27/12/2022

SELECT MIN(horario_abertura), MAX(horario_abertura) FROM contas;

-- De 10:03hs às 16:57hs

SELECT MIN(data_ultimo_lancamento), MAX(data_ultimo_lancamento) FROM contas;

-- De 06/02/2013 a 15/01/2023

SELECT MIN(horario_ultimo_lancamento), MAX(horario_ultimo_lancamento) FROM contas;

-- De 00:00:00hs às 23:59:59hs

SELECT MIN(saldo_disponivel), MAX(saldo_disponivel) FROM contas;

-- De 0,60 a 411.617,06

SELECT MIN(saldo_total), MAX(saldo_total) FROM contas;

-- De 1,22 a 419.923,18

SELECT COUNT(*) FROM contas WHERE saldo_disponivel > saldo_total;

-- Temos 248 contas onde o saldo disponível é maior que o saldo total (ESTRANHO)
