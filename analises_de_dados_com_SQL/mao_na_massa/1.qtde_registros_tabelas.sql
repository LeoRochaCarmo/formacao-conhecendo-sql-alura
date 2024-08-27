-- Visualizar a quantidade de registros de várias tabelas em uma única consulta, 
-- consolidando os resultados em uma tabela única.

CREATE VIEW view_qtde_registros_tabelas AS 

SELECT
    COUNT(*) AS qtde,
    'marcas' AS tabela
FROM marcas

UNION ALL

SELECT
    COUNT(*) AS qtde,
    'itens_venda' AS tabela
FROM itens_venda

UNION ALL

SELECT
    COUNT(*) AS qtde,
    'fornecedores' AS tabela
FROM fornecedores

UNION ALL

SELECT
    COUNT(*) AS qtde,
    'categoria' AS tabela
FROM categorias

UNION ALL

SELECT
    COUNT(*) AS qtde,
    'clientes' AS tabela
FROM clientes

UNION ALL

SELECT
    COUNT(*) AS qtde,
    'produtos' AS tabela
FROM produtos

UNION ALL

SELECT
    COUNT(*) AS qtde,
    'vendas' AS tabela
FROM vendas

SELECT * FROM view_qtde_registros_tabelas
