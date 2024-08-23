-- Categorias mais vendidas na Black Friday de 2022
WITH vendas_categorias AS(
    SELECT
        t1.venda_id,
        t3.nome_categoria

    FROM itens_venda AS t1

    LEFT JOIN produtos AS t2
    ON t1.produto_id = t2.id_produto

    LEFT JOIN Categorias AS t3
    ON t2.categoria_id = t3.id_categoria

), 

vendas_black_fridays AS(
    SELECT
        STRFTIME('%Y-%m', data_venda) AS ano_mes,
        id_venda
    FROM vendas
    
    GROUP BY ano_mes, id_venda
        HAVING STRFTIME('%Y-%m', data_venda) = '2022-11'

    ORDER BY ano_mes
)

SELECT
    t1.ano_mes,
    t2.nome_categoria AS categoria,
    COUNT(*) AS qtde_vendas
FROM vendas_black_fridays AS t1

JOIN vendas_categorias AS t2
ON t1.id_venda = t2.venda_id

GROUP BY ano_mes, categoria

ORDER BY qtde_vendas DESC forne