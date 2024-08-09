-- Calcular o valor total dos pedidos (MODO SIMPLES)

SELECT
    idpedido,
    SUM(precounitario) AS valor_pedido 
FROM itenspedidos

GROUP BY idpedido

-- -- Calcular o valor total dos pedidos (MODO COMPLEXO)

SELECT
    t1.id,
    t3.nome AS cliente,
    t1.datahorapedido,
    SUM(t2.precounitario) AS valor_pedido
FROM pedidos AS t1

INNER JOIN itenspedidos AS t2
ON t1.id = t2.idpedido

INNER JOIN clientes AS t3
ON t1.idcliente = t3.id

GROUP BY t1.id


