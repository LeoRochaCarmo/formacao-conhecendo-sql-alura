-- Formato diferente da data de início (ano/mês)
SELECT
    ID_Colaborador,
    STRFTIME('%Y/%m', DataInicio) AS data_formatada
FROM licencas

-- Intervalo de tempo que cada colaborador ficou na empresa
SELECT
    ID_Colaborador,
    JULIANDAY(DataTermino) - JULIANDAY(DataContratacao) AS dias_contratado
FROM HistoricoEmprego

WHERE DataTermino IS NOT NULL

-- Extrair a data atual (DATE)
SELECT DATE('now')

-- Obter a data 10 dias atrás (DATE)
SELECT DATE('now', '-10 days')

-- Extrair a hora atual (TIME)
SELECT TIME('now')

-- Obter data e horário atual (DATETIME)
SELECT DATETIME('now')

-- Bbter a data e hora exatas 1 ano no futuro (DATETIME)
SELECT DATETIME('now', '+1 year')

-- Outra forma de obter data e horário atual (CURRENT_TIMESTAMP)
SELECT CURRENT_TIMESTAMP