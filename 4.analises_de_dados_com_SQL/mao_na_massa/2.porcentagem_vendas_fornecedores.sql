-- Calcular a porcentagem de vendas atribuídas a cada fornecedor
WITH qtde_vendas_fornecedor AS(
    SELECT
        t3.nome AS fornecedor,
        COUNT(*) AS qtde_vendas
    FROM itens_venda AS t1

    LEFT JOIN produtos AS t2
    ON t1.produto_id = t2.id_produto

    LEFT JOIN fornecedores AS t3
    ON t2.fornecedor_id = t3.id_fornecedor

    GROUP BY fornecedor
    ),

total_itens_venda AS(
    SELECT
        COUNT(*) AS total_vendas
    FROM itens_venda
    )

SELECT
    t1.fornecedor,
    ROUND((100.0 * t1.qtde_vendas / t2.total_vendas), 2) || '%' AS porcentagem
FROM qtde_vendas_fornecedor AS t1

CROSS JOIN total_itens_venda AS t2

ORDER BY ROUND((100.0 * t1.qtde_vendas / t2.total_vendas), 2) DESC

