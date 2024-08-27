-- Deletar fornecedores da Turquia
-- DELETE + WHERE
DELETE FROM fornecedores

WHERE pais_de_origem = 'Turquia'

-- Deletar fornecedores com id > 35
DELETE FROM fornecedores

WHERE ID > 35 