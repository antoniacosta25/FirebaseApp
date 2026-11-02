# Mapa de aderência — Atividade 8 / Semana 5

O roteiro prático determina uma branch chamada `semana5`, o arquivo `test/obj_test.dart`, a modelagem de pessoas/alunos/professores, a associação de professor e disciplina à turma, a verificação de aprovação e testes.

| Exigência | Evidência no projeto |
| --- | --- |
| `Pessoa` abstrata com identificador válido | Classe `Pessoa`; setter `id` rejeita `id <= 0`. |
| Mixin `Ano` com ano válido | Mixin `Ano`; setter `ano` rejeita `ano <= 0`. |
| Aluno com herança e mixin | `Aluno extends Pessoa with Ano`. |
| Professor como Pessoa e vinculado à turma | `Professor extends Pessoa`; `Turma` recebe e guarda `Professor`. |
| Disciplina e turma | `Disciplina` é associada à `Turma`, que também usa `Ano`. |
| Histórico, notas e média | `Historico extends Turma`; notas são guardadas por aluno e `media(Aluno)` calcula a média. |
| Regra de aprovação | `isAprovado(Aluno)` retorna verdadeiro somente para média estritamente maior que 6. |
| Casos de teste | 11 testes cobrem cadastros, matrícula, cálculos e exceções. |

Comando de validação específico:

```bash
flutter test test/obj_test.dart
```

O comando ainda precisa ser executado no ambiente Flutter antes de registrar aprovação. Este documento descreve a implementação presente; não afirma que os testes passaram.
