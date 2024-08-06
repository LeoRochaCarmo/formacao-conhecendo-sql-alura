-- 1. Selecione os primeiros 5 registros da tabela clientes, ordenando-os pelo nome em ordem crescente.
SELECT *
FROM clientes

ORDER BY nome

LIMIT 5

-- 2. Encontre todos os produtos na tabela produtos que não têm uma descrição associada 
--    (suponha que a coluna de descrição possa ser nula).
SELECT *
FROM produtos

WHERE descricao IS NOT NULL

-- 3. Liste os funcionários cujo nome começa com 'A' e termina com 'e' na tabela funcionarios.
SELECT *
FROM funcionarios

WHERE nome LIKE 'A%e'

-- 4 . Exiba o departamento e a média salarial dos funcionários em cada departamento na 
--     tabela funcionarios, agrupando por departamento, apenas para os departamentos cuja 
--     média salarial é superior a $5000.
SELECT
    departamento,
    ROUND(AVG(salario),2) AS media_salarial
FROM funcionarios

GROUP BY departamento
    HAVING media_salarial > 5000

-- 5. Selecione todos os clientes da tabela clientes e concatene o primeiro e o último nome, 
--    além de calcular o comprimento total do nome completo.
SELECT 
    (nome || ' ' || sobrenome) AS nome_completo,
    LENGTH(nome || ' ' || sobrenome) AS tamanho_nome_completo
FROM clientes

-- 6. Para cada venda na tabela vendas, exiba o ID da venda, a data da venda e a diferença 
--    em dias entre a data da venda e a data atual.
SELECT
    id_venda,
    data_venda,
    ROUND(JULIANDAY('now') - JULIANDAY(data_venda),2) AS diferenca_dias
FROM vendas

-- 7. Selecione todos os itens da tabela pedidos e arredonde o preço total para o número inteiro mais próximo.

