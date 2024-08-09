-- LEFT JOIN -> Retorna todas as linhas da tabela da esquerda e as linhas correspondentes da tabela da direita. 
-- Identificar quais clientes compraram em um mês específico (LEFT JOIN)
SELECT
    t1.nome,
    t2.idcliente,
    t2.datahorapedido
FROM Clientes AS t1

LEFT JOIN Pedidos AS t2
ON t1.id = t2.idcliente

WHERE STRFTIME('%m', datahorapedido) = '10'

-- Identificar quais clientes não compraram em um mês específico (LEFT JOIN)
SELECT
    t1.nome,
    x.id
FROM Clientes AS t1

LEFT JOIN (
    SELECT
    id,
    idcliente
    FROM pedidos          
    WHERE STRFTIME('%m', datahorapedido) = '10'
    ) AS x
ON t1.id = x.idcliente

WHERE x.idcliente IS NULL


