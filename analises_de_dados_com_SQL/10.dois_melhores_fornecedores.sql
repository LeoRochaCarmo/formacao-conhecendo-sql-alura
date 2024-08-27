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
),

comparativos_vendas AS(

SELECT
    t1.ano_mes,
    t2.fornecedor,
    COUNT(*) AS qtde_vendas
FROM vendas_data AS t1

JOIN vendas_fornecedores AS t2
ON t1.id_venda = t2.venda_id

WHERE fornecedor IN 
    ('NebulaNetworks','AstroSupply', 'HorizonDistributors')

GROUP BY ano_mes, fornecedor

ORDER BY t1.ano_mes, qtde_vendas

)

SELECT 
    ano_mes,
    SUM(CASE WHEN fornecedor = 'NebulaNetworks'
             THEN qtde_vendas END) AS NebulaNetworks,
     SUM(CASE WHEN fornecedor = 'HorizonDistributors'
             THEN qtde_vendas END) AS HorizonDistributors,
    SUM(CASE WHEN fornecedor = 'AstroSupply'
             THEN qtde_vendas END) AS AstroSupply
    
FROM comparativos_vendas

GROUP BY ano_mes

