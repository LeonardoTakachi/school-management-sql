-- Consultas básicas para explorar o banco de dados escolar.

-- 1. Listar todos os alunos
SELECT * FROM Alunos;

-- 2. Listar professores em ordem alfabética
SELECT *
FROM Professores
ORDER BY Nome_Professor;

-- 3. Filtrar disciplinas com carga horária de 60 horas
SELECT Nome_Disciplina, Carga_Horaria
FROM Disciplinas
WHERE Carga_Horaria = 60;

-- 4. Listar turmas do ano letivo de 2023
SELECT *
FROM Turmas
WHERE Ano_Letivo = 2023;

-- 5. Listar notas iguais ou superiores a 7
SELECT ID_Aluno, ID_Disciplina, valor_nota, Data_Avaliacao
FROM Notas
WHERE valor_nota >= 7
ORDER BY valor_nota DESC;

-- 6. Buscar alunos por nome
SELECT *
FROM Alunos
WHERE Nome_Aluno LIKE '%Silva%';

-- 7. Contar registros principais
SELECT COUNT(*) AS total_alunos FROM Alunos;
SELECT COUNT(*) AS total_professores FROM Professores;
SELECT COUNT(*) AS total_disciplinas FROM Disciplinas;
SELECT COUNT(*) AS total_turmas FROM Turmas;
