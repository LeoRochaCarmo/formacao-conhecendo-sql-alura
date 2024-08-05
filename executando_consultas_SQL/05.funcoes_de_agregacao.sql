-- Descobrir o mês de maior faturamento na história da empresa
SELECT
    mes,
    MAX(faturamento_bruto)
FROM faturamento

-- Descobrir o mês de menor faturamento na história da empresa
SELECT
    mes,
    MIN(faturamento_bruto)
FROM faturamento

-- Descobrir quantos cliente novos entraram em 2023
SELECT
    SUM(numero_novos_clientes) AS 'Novos clientes em 2023'
FROM faturamento

WHERE MES LIKE '%2023'

-- Média do lucro na história da empresa
SELECT ROUND(AVG(lucro_liquido),2) AS 'Média do Lucro'
FROM faturamento

-- Média de despensas na história da empresa
SELECT ROUND(AVG(despesas),2) AS 'Média do Lucro'
FROM faturamento

-- Quantidade de colaboradores desempregados
SELECT COUNT(*) AS 'Quantidade de colaboradores desempregados'
FROM HistoricoEmprego

WHERE datatermino IS NOT NULL

-- Quantas licencas de férias foram tiradas
SELECT COUNT(*)
FROM Licencas

WHERE TipoLicenca = 'férias'