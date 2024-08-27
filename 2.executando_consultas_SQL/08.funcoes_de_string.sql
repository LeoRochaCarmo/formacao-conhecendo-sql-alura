-- Saber se os campos de CPF estão preenchidos com 11 dígitos (LENGTH)
SELECT
    COUNT(*) AS Qtde_colaboradores,
    LENGTH(CPF) AS Qtde_digitos
FROM colaboradores

WHERE Qtde_digitos = 11

-- Ver os dados dos colaboradores em forma de texto e não como tabela (||)
SELECT
    ('A pessoa colaborada ' || Nome || ' de CPF ' || CPF 
    || ' possui o seguinte endereço: ' || Endereco) AS texto
FROM colaboradores

-- Transformar as letras para maísculo (UPPER)
SELECT
    UPPER('A pessoa colaborada ' || Nome || ' de CPF ' || CPF 
    || ' possui o seguinte endereço: ' || Endereco) AS texto
FROM colaboradores

-- Transformar as letras para minúsculo (LOWER)
SELECT
    LOWER('A pessoa colaborada ' || Nome || ' de CPF ' || CPF 
    || ' possui o seguinte endereço: ' || Endereco) AS texto
FROM colaboradores

-- Trocando '-' por '/' na coluna DataNascimento (REPLACE)
SELECT
    REPLACE(DataNascimento, '-', '/') AS formato_data
FROM colaboradores

-- Encontrando a posição de uma substring (INSTR)
SELECT 
    INSTR(TipoLicenca, 's')
FROM Licencas

WHERE TipoLicenca = 'férias'

-- Remover apenas o ano da coluna mes (SUBSTR)
-- Quais anos tiveram foram mais lucrativos
SELECT
    SUBSTR(mes, 4) AS ano,
    SUM(lucro_liquido) AS lucro_anual

FROM Faturamento

GROUP BY ano

ORDER BY lucro_anual DESC
