# Semana 5 — Orientação a Objetos (Atividade 8)

- **Estudante:** Antonia Graciela Silva Costa Silva
- **Disciplina:** Desenvolvimento Mobile I · UESB · 2026.2
- **Docente:** Edilson Luiz do Nascimento
- **Branch:** `semana5` (`https://github.com/antoniacosta25/FirebaseApp/tree/semana5`)

## Requisitos atendidos

1. Branch `semana5` criada a partir da evolução do próprio repositório `antoniacosta25/FirebaseApp`.
2. Arquivo [test/obj_test.dart](../../test/obj_test.dart) contendo:
   - `abstract class Pessoa` (encapsulamento de `_id` positivo);
   - `mixin Ano` (encapsulamento de `_ano` positivo);
   - `class Aluno extends Pessoa with Ano`;
   - `class Professor extends Pessoa` associado à `Turma`;
   - `class Disciplina`;
   - `class Turma with Ano` (validação de compatibilidade de ano e rejeição de matrícula repetida);
   - `class Historico extends Turma` (registro de notas entre 0 e 10 para alunos matriculados, cálculo de `media(Aluno)` e verificação `isAprovado(Aluno)` quando `media > 6`).
3. Suíte com **10 testes unitários** cobrindo todos os cenários de sucesso e de exceção (`ArgumentError`).

## Comandos de validação

```bash
flutter pub get
flutter analyze
flutter test test/obj_test.dart
```
