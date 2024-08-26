-- Desempenho mensal de vendas do fornecedor que menos vendeu na Black Friday
WITH vendas_fornecedores AS(
    SELECT
        t1.venda_id,
        t3.nome AS fornecedor
    FROM itens_venda AS t1

    LEFT JOIN produtos AS t2
    ON t1.produto_id = t2.id_produto

    LEFT JOIN fornecedores AS t3
    ON t2. fornecedor_id = t3.id_fornecedor
), 

vendas_data AS(
    SELECT
        STRFTIME('%Y-%m', data_venda) AS ano_mes,
        id_venda
    FROM vendas

    ORDER BY ano_mes
)

SELECT
    t1.ano_mes,
    COUNT(*) AS qtde_vendas
FROM vendas_data AS t1

JOIN vendas_fornecedores AS t2
ON t1.id_venda = t2.venda_id

WHERE fornecedor = 'NebulaNetworks'

GROUP BY ano_mes

ORDER BY t1.ano_mes

