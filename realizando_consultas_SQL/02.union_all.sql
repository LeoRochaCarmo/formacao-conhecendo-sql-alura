-- Retornar todos os endereços (mesmo os iguais)
SELECT
    Nome,
    Rua,
    Bairro,
    Cidade,
    cep
FROM colaboradores

UNION ALL

SELECT
    Nome,
    Rua,
    Bairro,
    Cidade,
    cep
FROM fornecedores
