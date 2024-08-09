-- Identificar os clientes que fizeram pedidos e aqueles que ainda não fizeram nenhum pedido em sua loja. 

-- Tabela "Clientes":
-- ID (chave primária)
-- Nome
-- Email

-- Tabela "Pedidos":
-- ID (chave primária)
-- IDcliente (chave estrangeira)
-- datahorapedido

SELECT
    t1.nome,
    t2.id
FROM Clientes AS t1

LEFT JOIN Pedidos AS t2
ON t1.id = t2.idcliente

GROUP BY nome
    HAVING t2.id IS NULL
