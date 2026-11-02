# Atividade 9 — Semana 6: Programação Assíncrona em Dart

- **Estudante:** Antonia Graciela Silva Costa Silva
- **Curso:** Análise e Desenvolvimento de Sistemas · 4º semestre
- **Disciplina:** Desenvolvimento Mobile I · UESB · 2026.2
- **Docente:** Edilson Luiz do Nascimento
- **Repositório:** `https://github.com/antoniacosta25/FirebaseApp`
- **Branch da atividade:** `semana6`

---

## Escopo da Atividade 9 (Semana 6)

Implementação prática de Programação Assíncrona em Dart conforme o roteiro oficial da Semana 6:
- `Future<int> process()` com atraso assíncrono (`Future.delayed`) retornando `0`;
- `Future<List<double>> search(String nome)` consultando mapa em memória (`Maria`, `Bruna`, `Carla`) e lançando `ArgumentError` para nome inexistente (`Paula`);
- `Stream<int> count() async*` emitindo `1`, `2` e `3` sequencialmente com `yield`;
- `Stream<double> media(List<String> nomes)` consumindo `search(nome)` de forma assíncrona para emitir as médias na ordem solicitada e propagando `ArgumentError` para aluno ausente sem interromper as emissões subsequentes.

## Estrutura da Branch `semana6`

| Arquivo | Descrição |
| --- | --- |
| `lib/assincrono.dart` | Funções assíncronas `process()`, `search(nome)`, `count()` e `media(nomes)` |
| `test/async_test.dart` | 6 casos de teste assíncronos (`Future`, `Stream`, `async`/`await` e tratamento de erro) |
| `docs/semana6/README.md` | Documentação detalhada da Atividade 9 |
| `lib/main.dart` | Ponto de entrada do pacote da Semana 6 |
| `pubspec.yaml` | Configuração do pacote Dart/Flutter (`firebase_app`) |

## Como executar localmente ou no GitHub Codespaces

```bash
git clone -b semana6 https://github.com/antoniacosta25/FirebaseApp.git
cd FirebaseApp
flutter pub get
flutter analyze
flutter test test/async_test.dart
```
