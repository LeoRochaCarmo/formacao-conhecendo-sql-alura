-- EXCEPT -> Retorna todas as linhas que estão na primeira
-- consulta mas não estão na segunda.
-- INTERSECT -> Retorna todas as linhas que estão tanto
-- na primeira consulta como na segunda.

-- !!! - Devem ter o mesmo número de colunas e tipos de dados compatíveis.

SELECT *
FROM TabelaA

EXCEPT / INTERSECT

SELECT *
FROM TabelaB