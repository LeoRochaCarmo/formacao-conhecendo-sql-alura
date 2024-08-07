-- Unindo tabelas com UNION
-- Tabelas com os mesmos campos com a mesma descrição
-- UNION -> retorna valores distintos

SELECT
    Rua,
    Bairro,
    Cidade,
    cep
FROM colaboradores

UNION

SELECT
    Rua,
    Bairro,
    Cidade,
    cep
FROM fornecedores

