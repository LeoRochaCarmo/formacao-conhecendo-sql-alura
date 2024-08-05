-- Buscar colaboradores específicos para preencher algumas vagas
-- Professor que não esteja trabalhando no momento
SELECT *
FROM HistoricoEmprego

WHERE Cargo = 'Professor'
    AND DataTermino IS NOT NULL

-- Buscar Dermatologistas ou Oftalmologistas (OR)
SELECT *
FROM HistoricoEmprego

WHERE Cargo = 'Dermatologista'
    OR Cargo = 'Oftalmologista'

-- Buscar Dermatologistas ou Oftalmologistas (IN)
SELECT *
FROM HistoricoEmprego

WHERE Cargo IN ('Dermatologista','Oftalmologista')

-- Buscar todos cargos menos Dermatologistas ou Oftalmologistas (NOT IN)
SELECT *
FROM HistoricoEmprego

WHERE Cargo NOT IN ('Dermatologista','Oftalmologista')