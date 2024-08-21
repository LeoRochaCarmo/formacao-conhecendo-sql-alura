-- Excluindo dados (DELETE)

-- Remover colaborador que se desligou da empresa
DELETE FROM colaboradores WHERE id = 3

-- Remover cliente que não voltou mais
DELETE FROM clientes WHERE id = 28

SELECT*
FROM clientes