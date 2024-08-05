-- Instituições com mais de 2 cursos
SELECT
    COUNT(*) AS Qtde_de_cursos,
    Instituicao
FROM Treinamento

GROUP BY Instituicao 
    HAVING COUNT(Curso) > 2

ORDER BY Qtde_de_cursos DESC

-- Profissões que tem mais procuras. Acima de 2 registros
SELECT
    COUNT(*) AS Qtde,
    Cargo
FROM HistoricoEmprego

GROUP BY Cargo
    HAVING Qtde >= 2

ORDER BY Qtde DESC
