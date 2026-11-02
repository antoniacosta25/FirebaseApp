# Atividade 9 — Semana 6: Programação Assíncrona em Dart

**Estudante:** Antônia Graciela Silva Costa Silva
**Curso:** Análise e Desenvolvimento de Sistemas — UESB, 4º semestre
**Disciplina:** Desenvolvimento Mobile I (2026.2)
**Docente:** Edilson Luiz do Nascimento
**Repositório:** `antoniacosta25/FirebaseApp`
**Branch desta atividade:** `semana6`

Este projeto implementa o roteiro prático de Programação Assíncrona da Semana 6. O exercício usa notas em memória para praticar `Future`, `async`/`await`, `Stream`, `async*` e `yield`. O roteiro desta atividade não pede integração com Firebase.

## Requisitos do roteiro e arquivos

| Requisito | Implementação |
| --- | --- |
| Criar a branch `semana6` e o arquivo de testes | `test/async_test.dart` contém os testes da semana. |
| `process()` retornar `0` após aguardar | `lib/assincrono.dart` implementa `Future<int>` com atraso de 5 segundos. |
| Consultar as notas de um aluno | `search(nome)` aguarda 2 segundos e retorna as notas de Maria, Bruna ou Carla; nome ausente gera `ArgumentError`. |
| Contar usando uma Stream | `count()` usa `async*` e `yield`, emitindo 1, 2 e 3 com intervalo de 1 segundo. |
| Calcular médias de forma assíncrona | `media(nomes)` consulta `search` para cada nome e emite as médias como eventos da Stream. |
| Exercitar sucesso e erro | Os testes verificam `process`, busca válida e inválida, contagem, médias e a continuidade da Stream após erro de busca. |

## Arquivos da atividade

- `lib/assincrono.dart` — dados em memória e funções assíncronas.
- `test/async_test.dart` — 6 testes da Atividade 9.
- `docs/semana6/README.md` — mapa dos requisitos do roteiro para o código.
- `lib/main.dart` — ponto de entrada simples do pacote.
- `pubspec.yaml` — configuração do projeto Flutter/Dart.

## Executar a validação

No diretório do projeto:

```bash
flutter pub get
flutter analyze
flutter test test/async_test.dart
```

**Status dos testes nesta revisão:** ainda não executados. Registre os resultados reais após executar os comandos; este README não afirma que passaram.

## Entrega

O roteiro pede publicar e enviar o link da branch `semana6`. Selecione essa branch no repositório `antoniacosta25/FirebaseApp` e copie o endereço da branch para a tarefa Moodle correspondente. Não use a branch `main` para esta entrega.
