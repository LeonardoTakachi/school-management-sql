PRAGMA foreign_keys = ON;

-- Verifica a integridade estrutural do arquivo SQLite.
PRAGMA integrity_check;

-- Deve retornar zero linhas quando não há violações de chaves estrangeiras.
PRAGMA foreign_key_check;

-- Verifica se existem notas relacionadas a disciplinas inexistentes.
SELECT n.*
FROM Notas AS n
LEFT JOIN Disciplinas AS d
    ON d.ID_Disciplina = n.ID_Disciplina
WHERE d.ID_Disciplina IS NULL;
