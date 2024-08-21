-- Consulta 1: Buscar o nome do professor e a turma que ele é orientador
SELECT
    t1.Nome_Professor,
    t2.Nome_Turma
FROM professores AS t1

LEFT JOIN turmas AS t2
ON t1.ID_Professor = t2.ID_Professor_Orientador

-- Consulta 2: Retornar o nome e a nota do aluno que possui a melhor nota na disciplina de Matemática
SELECT
    t1.Nome_Aluno,
    MAX(notas_matematica.Nota) AS Melhor_Nota_Matematica
FROM alunos AS t1

LEFT JOIN (
    SELECT*
    FROM notas AS t3

    LEFT JOIN disciplinas AS t4
    ON t3.ID_Disciplina = t4.ID_Disciplina

    WHERE Nome_Disciplina LIKE 'Matemática'
    ) AS notas_matematica
ON t1.ID_Aluno = notas_matematica.ID_Aluno

-- Consulta 3: Identificar o total de alunos por turma
SELECT
    t1.Nome_Turma,
    COUNT(*) AS total_alunos
FROM turmas AS t1

LEFT JOIN turma_alunos AS t2
ON t1.ID_Turma = t2.ID_Turma

GROUP BY Nome_Turma

-- Consulta 4: Listar os Alunos e as disciplinas em que estão matriculados
SELECT
    t1.Nome_Aluno,
    x.Nome_Disciplina
FROM alunos AS t1

LEFT JOIN (
    SELECT *
    FROM notas AS t3

    LEFT JOIN disciplinas AS t4
    ON t3.ID_Disciplina = t4.ID_Disciplina
    ) AS x
ON t1.ID_Aluno = x.ID_Aluno

-- Consulta 5: Criar uma view que apresenta o nome, a disciplina e a nota dos alunos
CREATE VIEW view_nota_alunos AS 

SELECT
    t1.Nome_Aluno,
    x.Nome_Disciplina,
    x.Nota
FROM alunos AS t1

LEFT JOIN (
    SELECT*
    FROM notas AS t3

    LEFT JOIN disciplinas AS t4
    ON t3.ID_Disciplina = t4.ID_Disciplina
    ) AS x
ON t1.ID_Aluno = x.ID_Aluno

