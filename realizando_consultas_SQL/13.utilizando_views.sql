-- Utilizando views
SELECT *
FROM view_valor_pedido

WHERE valor_pedido > 10 AND valor_pedido < 14

CREATE VIEW view_teste AS
SELECT *
FROM view_valor_pedido

WHERE STRFTIME('%m', datahorapedido) = '08'


-- Removendo Views
DROP VIEW view_teste
