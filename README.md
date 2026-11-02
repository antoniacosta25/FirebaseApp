# Atividade 8 — Semana 5: Orientação a Objetos em Dart

- **Estudante:** Antonia Graciela Silva Costa Silva
- **Curso:** Análise e Desenvolvimento de Sistemas · 4º semestre
- **Disciplina:** Desenvolvimento Mobile I · UESB · 2026.2
- **Docente:** Edilson Luiz do Nascimento
- **Repositório:** `https://github.com/antoniacosta25/FirebaseApp`
- **Branch da atividade:** `semana5`

---

## Escopo da Atividade 8 (Semana 5)

Implementação prática de Orientação a Objetos em Dart conforme o roteiro oficial da Semana 5:
- Classe abstrata `Pessoa` com encapsulamento e validação de `id > 0`;
- Mixin `Ano` com validação de `ano > 0`;
- Classes `Aluno extends Pessoa with Ano`, `Professor extends Pessoa` e `Disciplina`;
- Classe `Turma with Ano` associada a `Disciplina` e `Professor`, com validação de ano letivo e bloqueio de matrícula duplicada;
- Subclasse `Historico extends Turma` com registro de notas no intervalo `[0, 10]`, cálculo de média (`media(Aluno)`) e critério de aprovação estritamente maior que 6 (`isAprovado(Aluno)`).

## Estrutura da Branch `semana5`

| Arquivo | Descrição |
| --- | --- |
| `test/obj_test.dart` | Implementação das classes de domínio e 10 casos de teste unitários |
| `docs/semana5/README.md` | Documentação detalhada da Atividade 8 |
| `lib/main.dart` | Ponto de entrada do pacote da Semana 5 |
| `pubspec.yaml` | Configuração do pacote Dart/Flutter (`firebase_app`) |

## Como executar localmente ou no GitHub Codespaces

```bash
git clone -b semana5 https://github.com/antoniacosta25/FirebaseApp.git
cd FirebaseApp
flutter pub get
flutter analyze
flutter test test/obj_test.dart
```
