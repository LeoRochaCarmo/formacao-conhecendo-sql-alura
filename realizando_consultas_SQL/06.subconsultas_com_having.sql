-- Subconsultas com HAVING
-- HAVING -> valores que já foram agrupados

-- Saber média de preço dos produtos
SELECT
    AVG(preco)
FROM produtos

-- Quais produtos têm preço maior que a média (WHERE)
SELECT
    nome,
    preco
FROM produtos

WHERE preco > (
    SELECT
        AVG(preco)
    FROM produtos
)

-- Quais produtos têm preço maior que a média (HAVING)
SELECT
    nome,
    preco
FROM produtos

GROUP BY nome, preco
HAVING preco > (
    SELECT
        AVG(preco)
    FROM produtos
)
