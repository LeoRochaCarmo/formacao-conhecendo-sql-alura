-- Descobrir tipos de parentescos os colaboradores tem com os dependentes
SELECT 
    COUNT(*) AS Quantidade,
    Parentesco
FROM Dependentes

GROUP BY Parentesco

-- Quantidade de cursos por instituição
SELECT
    COUNT(*) AS Qtde_de_cursos,
    Instituicao
FROM Treinamento

GROUP BY Instituicao

ORDER BY Qtde_de_cursos DESC