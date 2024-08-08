-- Selecionar o nome do cliente, o pedido que ele fez e a data e hora do pedido (INNER JOIN)
-- INNER JOIN -> retorna APENAS os clientes que fizeram algum pedido ou pedidos que estão
--               vinculados com algum cliente 
SELECT
    t1.nome,
    t2.id,
    t2.datahorapedido
FROM clientes AS t1

INNER JOIN pedidos AS t2
ON t1.id = t2.idcliente

