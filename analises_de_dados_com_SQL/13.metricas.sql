-- métricas (KPIs)

-- Comparativo de vendas com Black Fridays anteriores
WITH total_vendas_black_friday_anteriores AS (
    SELECT
        COUNT(*) AS qtde_vendas,
        STRFTIME('%Y-%m', data_venda) AS ano
    FROM vendas AS t1

    WHERE ano IN ('2020-11', '2021-11')

    GROUP BY ano
    ),

media_vendas_anteriores AS (
    SELECT
        AVG(qtde_vendas) AS media_qtde_vendas
    FROM total_vendas_black_friday_anteriores
    ),

total_vendas_black_friday_atual AS (
    SELECT
        COUNT(*) AS qtde_vendas,
        STRFTIME('%Y-%m', data_venda) AS ano
    FROM vendas AS t1

    WHERE ano = '2022-11'

    GROUP BY ano
    ),

media_vendas_atual AS (
    SELECT
        AVG(qtde_vendas) AS media_qtde_vendas
    FROM total_vendas_black_friday_atual
    )

SELECT
    t2.media_qtde_vendas,
    t1.qtde_vendas,
    ROUND((t1.qtde_vendas - t2.media_qtde_vendas) / t2.media_qtde_vendas * 100.0, 2) || '%' AS porcentagem
FROM total_vendas_black_friday_atual AS t1, media_vendas_anteriores AS t2



