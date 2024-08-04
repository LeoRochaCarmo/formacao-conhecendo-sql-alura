-- Inserindo dados na nova tabela pedidos_gold

INSERT INTO pedidos_gold(
    id_pedido_gold,
    data_do_pedido_gold,
    status_gold,
    total_do_pedido_gold,
    cliente_gold,
    data_de_envio_estimada_gold
)

SELECT
    ID,
    data_do_pedido,
    status,
    total_do_pedido,
    cliente,
    data_de_envio_estimada
FROM pedidos

WHERE total_do_pedido >= 400

-- Verificando a tabela pedidos_gold
SELECT *
FROM pedidos_gold

ORDER BY total_do_pedido_gold ASC