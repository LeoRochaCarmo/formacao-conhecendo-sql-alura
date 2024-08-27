-- Porcentagem de vendas de cada marca
WITH qtde_vendas_marca AS(
    SELECT
        t3.nome AS marca,
        COUNT(*) AS qtde_vendas
    FROM itens_venda AS t1

    LEFT JOIN produtos AS t2
    ON t1.produto_id = t2.id_produto

    LEFT JOIN marcas AS t3
    ON t2.marca_id = t3.id_marca

    GROUP BY marca
    ),

total_itens_venda AS(
    SELECT
        COUNT(*) AS total_vendas
    FROM itens_venda
    )

SELECT
    t1.marca,
    ROUND((100.0 * t1.qtde_vendas / t2.total_vendas),2) || '%' AS porcentagem
FROM qtde_vendas_marca AS t1

CROSS JOIN total_itens_venda AS t2

ORDER BY ROUND((100.0 * t1.qtde_vendas / t2.total_vendas),2) DESC




