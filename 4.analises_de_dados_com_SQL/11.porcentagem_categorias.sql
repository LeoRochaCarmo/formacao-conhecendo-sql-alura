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

vendas_data AS(
    SELECT
        STRFTIME('%Y-%m', data_venda) AS ano_mes,
        id_venda
    FROM vendas
    
    ORDER BY ano_mes
),

total_itens_venda AS(
    SELECT
        COUNT(*) total_vendas
    FROM itens_venda
),

qtde_vendas_categorias AS(
    SELECT
        t2.nome_categoria AS categoria,
        COUNT(*) AS qtde_vendas
    FROM vendas_data AS t1

    JOIN vendas_categorias AS t2
    ON t1.id_venda = t2.venda_id

    GROUP BY categoria

    ORDER BY qtde_vendas DESC
)

SELECT 
    t1.*,
    ROUND((100.0 * t1.qtde_vendas/t2.total_vendas),2) || '%' AS porcentagem
FROM qtde_vendas_categorias AS t1

CROSS JOIN total_itens_venda AS t2
