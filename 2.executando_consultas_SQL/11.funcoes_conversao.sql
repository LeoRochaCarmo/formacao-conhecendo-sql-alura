-- Ver o faturamento bruto médio como um texto (CAST)
SELECT
    ('O faturamento bruto médio foi ' || 
    CAST(ROUND(AVG(faturamento_bruto), 2) AS TEXT)) AS faturamento_bruto
FROM faturamento
