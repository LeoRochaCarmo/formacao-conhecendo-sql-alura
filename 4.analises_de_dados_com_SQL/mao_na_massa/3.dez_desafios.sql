-- 01 - Qual é o número de Clientes que existem na base de dados ?
SELECT 
    COUNT(*) AS qtde_clientes
FROM clientes

-- 02 - Quantos produtos foram vendidos no ano de 2022 ?
SELECT
    COUNT(*) AS qtde_produtos_vendidos
FROM itens_venda AS t1

LEFT JOIN vendas AS t2
ON t1.venda_id = t2.id_venda

WHERE STRFTIME('%Y', data_venda) = '2022'

-- 03 - Qual a categoria que mais vendeu em 2022 ?
WITH qtde_vendas_categorias AS (
    SELECT
        t4.nome_categoria AS categoria,
        COUNT(*) AS qtde_vendas

    FROM itens_venda AS t1

    LEFT JOIN vendas AS t2
    ON t1.venda_id = t2.id_venda

    LEFT JOIN produtos AS t3
    ON t1.produto_id = t3.id_produto

    LEFT JOIN categorias AS t4
    ON t3.categoria_id = t4.id_categoria

    WHERE STRFTIME('%Y', data_venda) = '2022'

    GROUP BY categoria

    ORDER BY qtde_vendas DESC
    )

SELECT
    categoria
FROM qtde_vendas_categorias

LIMIT 1

-- 04 - Qual o primeiro ano disponível na base ?
SELECT
    STRFTIME('%Y', data_venda) AS primeiro_ano_disponível
FROM vendas

ORDER BY data_venda

LIMIT 1

-- 05 - Qual o nome do fornecedor que mais vendeu no primeiro ano disponível na base ?
WITH primeiro_ano_na_base AS (
    SELECT
        STRFTIME('%Y', data_venda) AS primeiro_ano_disponível
    FROM vendas

    ORDER BY data_venda

    LIMIT 1
    ),

qtde_vendas_fornecedores AS (
    SELECT
        t4.nome AS fornecedor,
        COUNT(*) AS qtde_vendas 
    FROM itens_venda AS t1

    LEFT JOIN vendas AS t2
    ON t1.venda_id = t2.id_venda

    LEFT JOIN produtos AS t3
    ON t1.produto_id = t3.id_produto

    LEFT JOIN fornecedores AS t4
    ON t3.fornecedor_id = t4.id_fornecedor

    WHERE STRFTIME('%Y', data_venda) = (
        SELECT *
        FROM primeiro_ano_na_base
        )

    GROUP BY fornecedor

    ORDER BY qtde_vendas DESC
    )

SELECT
    fornecedor
FROM qtde_vendas_fornecedores

LIMIT 1

-- 06 - Quanto ele vendeu no primeiro ano disponível na base de dados ?


-- 07 - Quais as duas categorias que mais venderam no total de todos os anos ?
WITH qtde_vendas_categorias AS (
    SELECT 
        t4.nome_categoria AS categoria,
        COUNT(*) AS qtde_vendas
    FROM itens_venda AS t1

    LEFT JOIN vendas AS t2
    ON t1.venda_id = t2.id_venda

    LEFT JOIN produtos AS t3
    ON t1.produto_id = t3.id_produto

    LEFT JOIN categorias AS t4
    ON t3.categoria_id =t4.id_categoria

    GROUP BY categoria 

    ORDER BY qtde_vendas DESC
    )

SELECT
    categoria
FROM qtde_vendas_categorias

LIMIT 2

-- 08 - Crie uma tabela comparando as vendas ao longo do tempo das duas categorias que mais venderam no total de todos os anos.

WITH itens_vendas AS (
    SELECT
        t2.data_venda,
        t4.nome_categoria AS categoria

    FROM itens_venda AS t1

    LEFT JOIN vendas AS t2
    ON t1.venda_id = t2.id_venda

    LEFT JOIN produtos AS t3
    ON t1.produto_id = t3.id_produto

    LEFT JOIN categorias AS t4
    ON t3.categoria_id =t4.id_categoria
    ),

qtde_vendas_categorias AS (
    SELECT 
        t4.nome_categoria AS categoria,
        COUNT(*) AS qtde_vendas
    FROM itens_venda AS t1

    LEFT JOIN vendas AS t2
    ON t1.venda_id = t2.id_venda

    LEFT JOIN produtos AS t3
    ON t1.produto_id = t3.id_produto

    LEFT JOIN categorias AS t4
    ON t3.categoria_id =t4.id_categoria

    GROUP BY categoria 

    ORDER BY qtde_vendas DESC
    ),

duas_categorias_mais_vendidas AS (
    SELECT
        categoria
    FROM qtde_vendas_categorias

    LIMIT 2
    ),

qtde_vendas_duas_categorias AS (
    SELECT 
        STRFTIME('%Y-%m', data_venda) AS ano_mes,
        categoria

    FROM itens_vendas

    WHERE categoria IN (
         SELECT *
         FROM duas_categorias_mais_vendidas
         )
    ),

comparativo_vendas AS (
    SELECT
        ano_mes,
        categoria,
        COUNT(*) AS qtde_vendas
    FROM qtde_vendas_duas_categorias

    GROUP BY ano_mes, categoria
    )

SELECT 
    ano_mes,
    SUM(CASE WHEN categoria = (
        SELECT *
        FROM duas_categorias_mais_vendidas
        LIMIT 1)
        THEN qtde_vendas END) AS Eletrônicos,
    SUM(CASE WHEN categoria != (
        SELECT *
        FROM duas_categorias_mais_vendidas
        LIMIT 1)
        THEN qtde_vendas END) AS Vestuário

FROM comparativo_vendas

GROUP BY ano_mes

-- 09 - Calcule a porcentagem de vendas por categorias no ano de 2022.

-- 10 - Crie uma métrica mostrando a porcentagem de vendas a mais que a melhor categoria tem em relação a pior no ano de 2022.