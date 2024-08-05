-- Selecionando 5 maiores salários(removendo ex-colaboradores)
SELECT *
FROM HistoricoEmprego

WHERE DataTermino IS NULL

ORDER BY Salario DESC

LIMIT 5


