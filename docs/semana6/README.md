# Mapa de aderência — Atividade 9 / Semana 6

O roteiro oficial pede a branch `semana6`, o arquivo `test/async_test.dart`, exercícios de `Future` e `Stream`, publicação da branch, testes e envio do link.

| Exigência | Evidência no projeto |
| --- | --- |
| `process()` assíncrono | `Future<int>` aguarda 5 segundos e retorna `0`. |
| `search(nome)` assíncrono | Aguarda 2 segundos, retorna notas do mapa em memória ou lança `ArgumentError`. |
| `count()` como Stream | Usa `async*`/`yield`, emite `1`, `2`, `3` com espera de 1 segundo e encerra. |
| `media(nomes)` como Stream | Consulta cada nome por `search`, calcula a média e emite eventos na ordem da lista. |
| Testes dos casos do roteiro | 6 testes cobrem retorno, pesquisa encontrada/não encontrada, contagem, médias e sequência com erro. |

Validação específica:

```bash
flutter test test/async_test.dart
```

O teste deve ser executado antes de marcar a atividade como validada. Não há resultado de execução registrado nesta preparação.
