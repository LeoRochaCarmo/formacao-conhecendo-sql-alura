-- Selecionar produtos com valor entre R$200 e R$600
-- Ordenar pelos nomes dos produtos
SELECT *
FROM produtos

WHERE preco_compra BETWEEN 200 AND 600

ORDER BY nome_produto

-- Ordenar por data de inclusão
SELECT *
FROM produtos

WHERE preco_compra BETWEEN 200 AND 600

ORDER BY data_inclusao

-- Ordenar de forma decrescente por fornecedor
SELECT *
FROM produtos

WHERE preco_compra BETWEEN 200 AND 600

ORDER BY fornecedor DESC