-- Buscar total dos pedidos feitos por cada cliente
-- Retornar o nome de cada cliente e o valor total dos pedidos que cada um deles comprou
SELECT
    t2.id,
    t1.nome AS cliente,
    SUM(t3.precounitario) AS valor_total_pedidos
FROM clientes AS t1

INNER JOIN pedidos AS t2
ON t1.id = t2.idcliente

INNER JOIN itenspedidos AS t3
ON t2.id = t3.idpedido

GROUP BY cliente