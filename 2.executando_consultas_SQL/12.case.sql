-- Separar colaboradores pela faixa salarial
SELECT
    ID_Colaborador,
    Cargo,
    Salario,

CASE
    WHEN Salario < 3000 THEN 'BAIXO'
    WHEN Salario BETWEEN 3000 AND 6000 THEN 'MEDIO'
    ELSE 'ALTO' 
END AS categoria_salario

FROM HistoricoEmprego
