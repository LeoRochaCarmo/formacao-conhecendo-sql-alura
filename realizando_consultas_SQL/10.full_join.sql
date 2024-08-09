-- FULL JOIN -> Combina as linhas de ambas as tabelas.
-- Identificar se existem pedidos não associados a um cliente
SELECT *
FROM clientes AS t1

FULL JOIN pedidos AS t2
ON t1.id = t2.idcliente
