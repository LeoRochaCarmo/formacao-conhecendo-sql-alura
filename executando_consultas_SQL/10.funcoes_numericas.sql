-- Arredondar para 2 casas após a vírgula (ROUND)
SELECT
    AVG(faturamento_bruto),
    ROUND(AVG(faturamento_bruto), 2)
FROM faturamento

-- Arredondar para o inteiro maior (CEIL)
SELECT
    CEIL(faturamento_bruto), 
    CEIL(despesas)
FROM faturamento

-- Arredondar para o inteiro maior (FLOOR)
SELECT
    FLOOR(faturamento_bruto), 
    FLOOR(despesas)
FROM faturamento

-- Elevar um número a uma potência específica (POWER)
SELECT POWER(2, 3)

-- Retornar a raiz quadrada de um número (SQRT)
SELECT SQRT(9)

-- Gerar um número inteiro aleatório (RANDOM)
SELECT RANDOM()

-- Retornar o valor absoluto de um número, que é o número sem seu sinal (ABS)
SELECT ABS(-5)

-- Converter um número ou uma string para a sua forma hexadecimal (HEX)
SELECT HEX('hello')



--POWER e SQRT são particularmente úteis para cálculos científicos e financeiros.
--RANDOM é útil para situações onde você precisa de dados aleatórios, como na criação de amostras ou em simulações.
-- ABS é frequentemente usado em análises matemáticas e estatísticas para garantir que apenas a magnitude de um número seja considerada.
-- HEX é útil para trabalhos com sistemas que usam representações hexadecimais, como trabalhos com cores na web ou com dados binários.