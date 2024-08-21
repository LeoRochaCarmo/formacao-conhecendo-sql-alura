-- Transações

BEGIN TRANSACTION;

SELECT*
FROM clientes

SELECT*
FROM pedidos

UPDATE pedidos SET status = 'teste'

DELETE FROM clientes

ROLLBACK;