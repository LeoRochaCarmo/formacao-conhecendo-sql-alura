-- Consulta 1: Retornar a média de Notas dos Alunos em história.
SELECT
    AVG(t1.Nota) AS media_alunos,
    t2.Nome_Disciplina AS disciplina
FROM notas as t1

LEFT JOIN disciplinas as t2
ON t1.ID_Disciplina = t2.ID_Disciplina

WHERE t2.Nome_Disciplina = 'História'

-- Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.
SELECT *
FROM alunos

WHERE Nome_Aluno LIKE 'A%'
 
-- Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.
SELECT *
FROM alunos

WHERE STRFTIME('%m', Data_Nascimento) = '02'
 
-- Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.
SELECT
    Nome_Aluno,
    SUBSTR(TIMEDIFF('now', Data_Nascimento), 4, 2) || ' anos' AS idade,
    Data_Nascimento
FROM alunos
 
-- Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado 
-- aprovado se a sua nota foi igual ou maior que 6.
SELECT *,
    CASE
        WHEN Nota >= 6 THEN 'Aprovado'
        ELSE 'Não aprovado'
    END AS aprovacao
FROM notas