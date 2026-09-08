# Validação dos dados

A versão de portfólio foi preparada a partir do banco SQLite original.

## Verificações realizadas

- `PRAGMA integrity_check`: **ok**
- `PRAGMA foreign_key_check`: **0 violação(ões)** na cópia limpa.
- Tabela de demonstração do ambiente SQLite Online: **não incluída**.
- Registros de `Notas` órfãos no export original: **20 não incluídos**.

Os 20 registros removidos referenciavam `ID_Disciplina` 7, 8, 9 e 10, enquanto a tabela
`Disciplinas` do projeto contém somente disciplinas existentes na versão fornecida.

Nenhuma disciplina ou outro dado foi inventado para corrigir a inconsistência.

## Quantidade de registros na cópia limpa

| Tabela | Registros |
|---|---:|
| Professores | 5 |
| Alunos | 18 |
| Disciplinas | 6 |
| Turmas | 5 |
| Turma_Alunos | 10 |
| Turma_Disciplinas | 8 |
| Notas | 30 |
