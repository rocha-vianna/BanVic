SELECT * FROM contas WHERE num_conta = 528; -- 1 registro
DELETE FROM contas WHERE num_conta = 528; -- deletado

SELECT * FROM propostas_credito WHERE cod_cliente = 528; -- 4 registros
DELETE FROM propostas_credito WHERE cod_cliente = 528; -- deletado

SELECT * FROM transacoes WHERE num_conta = 528; -- 78 registros
DELETE FROM transacoes WHERE num_conta = 528; -- deletado