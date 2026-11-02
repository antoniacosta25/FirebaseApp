# Semana 6 — Programação Assíncrona (Atividade 9)

- **Estudante:** Antonia Graciela Silva Costa Silva
- **Disciplina:** Desenvolvimento Mobile I · UESB · 2026.2
- **Docente:** Edilson Luiz do Nascimento
- **Branch:** `semana6` (`https://github.com/antoniacosta25/FirebaseApp/tree/semana6`)

## Requisitos atendidos

1. Branch `semana6` isolada para a Atividade 9 (sem misturar arquivos da Semana 5).
2. Implementação em [lib/assincrono.dart](../../lib/assincrono.dart) e suíte de **6 testes assíncronos** em [test/async_test.dart](../../test/async_test.dart):
   - `process()` -> `Future<int>` que retorna `0` após atraso;
   - `search(nome)` -> `Future<List<double>>` que retorna as notas de `Maria`, `Bruna` ou `Carla` e lança `ArgumentError` quando o nome não consta no mapa;
   - `count()` -> `Stream<int>` que emite `1, 2, 3` com `async*` / `yield`;
   - `media(nomes)` -> `Stream<double>` que calcula a média de cada estudante usando `search(nome)` e preserva a continuidade da `Stream` após um evento de erro (`ArgumentError` para `Paula` seguido da média `7.0` de `Bruna`).

## Comandos de validação

```bash
flutter pub get
flutter analyze
flutter test test/async_test.dart
```
