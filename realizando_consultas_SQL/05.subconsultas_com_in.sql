-- Subconsultas com IN
-- Retornar todos os pedidos realizados em um determinado mês
SELECT *
FROM clientes

WHERE id IN (
    SELECT
        idcliente
    FROM pedidos

    WHERE STRFTIME('%m', datahorapedido) = '02'
)