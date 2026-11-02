# Atividade 8 — Semana 5: Orientação a Objetos em Dart

**Estudante:** Antônia Graciela Silva Costa Silva
**Curso:** Análise e Desenvolvimento de Sistemas — UESB, 4º semestre
**Disciplina:** Desenvolvimento Mobile I (2026.2)
**Docente:** Edilson Luiz do Nascimento
**Repositório:** `antoniacosta25/FirebaseApp`
**Branch desta atividade:** `semana5`

Este projeto implementa o roteiro prático da Semana 5. A atividade trabalha classes, herança, mixin, associação entre objetos, validação de dados e testes unitários. O roteiro não pede integração com serviços do Firebase; os dados do exercício são mantidos no próprio código.

## Requisitos do roteiro e arquivos

| Requisito | Implementação |
| --- | --- |
| Criar a branch `semana5` e o arquivo `test/obj_test.dart` | A branch contém o arquivo de testes e os modelos do exercício. |
| Definir `Pessoa` e validar o identificador positivo | `Pessoa` mantém `_id` encapsulado e rejeita valores menores ou iguais a zero. |
| Criar o mixin `Ano` e validar o ano | `Ano` encapsula `_ano` e rejeita valores menores ou iguais a zero. |
| Modelar `Aluno`, `Professor` e `Disciplina` | `Aluno` herda de `Pessoa` e usa `Ano`; `Professor` herda de `Pessoa`; `Disciplina` guarda o nome. |
| Associar professor e disciplina à turma | `Turma` mantém referências a `Professor` e `Disciplina`. |
| Validar matrícula e histórico | `Turma` rejeita aluno de outro ano e matrícula duplicada; `Historico` registra notas para alunos matriculados. |
| Calcular média e aprovação | `media(Aluno)` calcula a média das notas; `isAprovado(Aluno)` aprova somente média **maior que 6**. Média igual a 6 reprova. |
| Testar os comportamentos | `test/obj_test.dart` contém 11 testes de sucesso e validação. |

## Arquivos da atividade

- `test/obj_test.dart` — modelos e testes unitários da atividade.
- `lib/main.dart` — ponto de entrada simples do pacote.
- `pubspec.yaml` — configuração do projeto Flutter/Dart.
- `docs/semana5/README.md` — resumo da correspondência com o roteiro.

## Executar a validação

No diretório do projeto:

```bash
flutter pub get
flutter analyze
flutter test test/obj_test.dart
```

**Status dos testes neste pacote:** ainda não executados nesta revisão. Não considere a atividade validada até que os comandos sejam executados e o resultado real seja registrado.

## Entrega

O roteiro pede publicar e enviar o link da branch `semana5`. Selecione essa branch no repositório `antoniacosta25/FirebaseApp` e copie o endereço da branch para a tarefa Moodle correspondente. Não use a branch `main` para esta entrega.
