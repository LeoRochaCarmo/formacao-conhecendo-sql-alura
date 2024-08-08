-- Qual foi o primeiro cliente que fez pedido no ano de 2023
SELECT *
FROM clientes

WHERE id = (
    SELECT
        idcliente
    FROM pedidos
    WHERE datahorapedido = (
        SELECT
            MIN(datahorapedido)
        FROM pedidos
    )
)
