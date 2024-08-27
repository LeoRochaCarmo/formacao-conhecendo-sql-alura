-- Achar um treinamento que não sabemos o nome completo 
SELECT *
FROM treinamento
-- % -> indica que pode ter texto antes e depois
WHERE Curso LIKE '%poder%'

-- Identificar o nome completo de uma funcionária que chama Isadora
SELECT *
FROM colaboradores
-- % -> indica que tem texto depois
WHERE Nome LIKE 'Isadora%'