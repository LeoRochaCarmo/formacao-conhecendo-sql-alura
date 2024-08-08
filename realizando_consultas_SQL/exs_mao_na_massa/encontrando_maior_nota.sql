-- Identificar o aluno que obteve a maior nota em sua disciplina. 

-- Tabela "Alunos":
-- ID_aluno (chave primária)
-- Nome
-- Curso

-- Tabela "Notas":
-- ID_nota (chave primária)
-- ID_aluno (chave estrangeira)
-- Nota

SELECT *
FROM Alunos

WHERE ID_aluno = (
    SELECT
        IDaluno
    FROM Notas
    WHERE Nota = (
        SELECT
            MAX(Nota)
        FROM Notas
    )
)