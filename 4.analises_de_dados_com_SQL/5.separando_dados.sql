-- Retornar a quantidade de vendas para meses específicos

SELECT
    STRFTIME('%Y-%m', data_venda) AS ano_mes,
    COUNT(*) AS qtde_vendas
FROM vendas

GROUP BY ano_mes
    HAVING STRFTIME('%m', data_venda) IN ('01', '11', '12') 