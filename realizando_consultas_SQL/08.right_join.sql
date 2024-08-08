-- Identificar quais produtos foram vendidos ou não (RIGHT JOIN)
-- RIGHT JOIN -> Retorna todas as linhas da tabela da direita e as correspondentes da esquerda.

-- Selecionar TODOS os produtos e verificar quais foram vendidos ou não no mês de outubro.
SELECT 
    t2.nome,
    x.idproduto,
    x.idpedido

FROM(
    SELECT
        t2.idpedido,
        t2.idproduto
    FROM pedidos AS t1

    INNER JOIN itenspedidos AS t2
    ON t1.id = t2.idpedido

    WHERE STRFTIME('%m', datahorapedido) = '10'
    ) AS x

RIGHT JOIN produtos AS t2
ON x.idproduto = t2.id



