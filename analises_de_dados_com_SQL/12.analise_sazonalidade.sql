-- Quadro geral
WITH vendas_por_ano_mes AS (
    SELECT
        STRFTIME('%Y', data_venda) AS ano,
        STRFTIME('%m', data_venda) AS mes,
        COUNT(*) AS qtde_vendas
    FROM vendas

    GROUP BY ano, mes
    )

SELECT
    mes,
    SUM(CASE WHEN ano LIKE '%2020%' THEN qtde_vendas ELSE 0 END) AS '2020',
    SUM(CASE WHEN ano LIKE '%2021%' THEN qtde_vendas ELSE 0 END) AS '2021',
    SUM(CASE WHEN ano LIKE '%2022%' THEN qtde_vendas ELSE 0 END) AS '2022',
    SUM(CASE WHEN ano LIKE '%2023%' THEN qtde_vendas ELSE 0 END) AS '2023'
FROM vendas_por_ano_mes

GROUP BY mes

