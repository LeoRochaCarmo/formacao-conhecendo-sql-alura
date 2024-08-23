-- Usando DISTINCT para retornar todos os anos únicos
SELECT
    DISTINCT(STRFTIME('%Y', data_venda)) AS ano_venda
FROM vendas

ORDER BY ano_venda

-- Quantidade de vendas por ano
SELECT
    STRFTIME('%Y', data_venda) AS ano_venda,
    COUNT(*) AS qtde_vendas
FROM vendas

GROUP BY ano_venda

-- Quantidade de vendas por ano e mês (FORMA 1)
SELECT
    STRFTIME('%Y', data_venda) AS ano_venda,
    STRFTIME('%m', data_venda) AS mes_venda,
    COUNT(*) AS qtde_vendas
FROM vendas

GROUP BY ano_venda, mes_venda

-- Quantidade de vendas por ano e mês (FORMA 2)
SELECT
    STRFTIME('%Y-%m', data_venda) AS ano_mes,
    COUNT(*) AS qtde_vendas
FROM vendas

GROUP BY ano_mes

