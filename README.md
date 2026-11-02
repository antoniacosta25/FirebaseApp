# Desenvolvimento Mobile I (UESB — 2026.2)

Repositório acadêmico de atividades da disciplina **Desenvolvimento Mobile I (DFCHNBC 03 — 60h)**, ministrada pelo **Prof. Dr. Edilson Luiz do Nascimento** (Mediador: **Dárcio Rocha**), da Universidade Estadual do Sudoeste da Bahia (UESB).

Estudante: **Antônia Graciela Silva Costa Silva** (`antoniacosta25`)

---

## 🌐 Portal HTML Completo (Semanas 1 a 6, Roteiros, 31 Questões Revisadas e Glossário)

Todo o conteúdo da disciplina baixado do Moodle UESB (`id=1094`) foi organizado em HTML dentro deste repositório:

- **[Abrir Portal HTML Completo (`docs/portal-moodle-html/index.html`)](docs/portal-moodle-html/index.html)**
- **[Página Inicial Publicada (GitHub Pages)](https://antoniacosta25.github.io/FirebaseApp/)**
- **[Quadro Consolidado das 10 Atividades (`ATIVIDADES-OUTRAS-PLATAFORMAS.md`)](ATIVIDADES-OUTRAS-PLATAFORMAS.md)**

---

## 🌿 Branches e Atividades por Semana (1 a 6)

| Semana | Conteúdo e Roteiro Oficial | Atividades Avaliativas (Moodle) | Branch no GitHub | Situação no Moodle |
| --- | --- | --- | --- | --- |
| **Semana 1** | Introdução à computação móvel: Arquitetura, Ferramentas, UX/UI e Tendências ([Página HTML](docs/portal-moodle-html/semana-1.html)) | **A1** (`id=29914`, H5P, peso 2)<br>**A2** (`id=29915`, Quiz, peso 1)<br>**A3** (`id=30639`, LTI, peso 3) | [Portal Semana 1](docs/portal-moodle-html/semana-1.html) | **A1:** `2,50 / 10,00`<br>**A2:** `10,00 / 10,00`<br>**A3:** `8,00 / 10,00` |
| **Semana 2** | Introdução ao ambiente de programação e Capítulo 1 — *Hello, Dart!* ([Página HTML](docs/portal-moodle-html/semana-2.html)) | **A4** (`id=31596`, Assign) | [Branch `semana-1`](https://github.com/antoniacosta25/FirebaseApp/tree/semana-1) | Atividade não pontuada no Moodle |
| **Semana 3** | Ambiente GitHub Codespaces, Roteiro `.devcontainer`/Flutter e Capítulos II e III de Dart ([Página HTML](docs/portal-moodle-html/semana-3.html)) | **A5** (`id=30524`, Quiz, peso 5)<br>**A6** (`id=30525`, Assign, peso 5) | [Branch `semana1`](https://github.com/antoniacosta25/FirebaseApp/tree/semana1) e [`semana-1`](https://github.com/antoniacosta25/FirebaseApp/tree/semana-1) | **A5:** `8,50 / 10,00` (17/20)<br>**A6:** PDF enviado em 11/09 apontando para `tree/semana1` (branch ativa!) |
| **Semana 4** | Estruturas de Dados em Dart — Capítulo IX (`List`, `Map`, ordenação, filtragem e médias) ([Página HTML](docs/portal-moodle-html/semana-4.html)) | **A7** (`id=30735`, Assign, peso 10) | [Branch `semana-4`](https://github.com/antoniacosta25/FirebaseApp/tree/semana-4) e [`semana4`](https://github.com/antoniacosta25/FirebaseApp/tree/semana4) | **A7:** Avaliada com **Nota Máxima `10,00 / 10,00`** em 18/10/2026 |
| **Semana 5** | Orientação a Objetos em Dart — Capítulo VIII (`Pessoa`, `mixin Ano`, `Aluno`, `Professor`, `Turma`, `Historico`) ([Página HTML](docs/portal-moodle-html/semana-5-atividade-8.html)) | **A8** (`id=31001`, Assign, peso 5) | [Branch `semana5`](https://github.com/antoniacosta25/FirebaseApp/tree/semana5) | 11 testes unitários passando (`test/obj_test.dart`) |
| **Semana 6** | Programação Assíncrona em Dart — Capítulo X (`Future`, `async`/`await`, `Stream`, `async*`/`yield`) ([Página HTML](docs/portal-moodle-html/semana-6-atividade-9-10.html)) | **A9** (`id=30089`, Assign, peso 10)<br>**A10** (`id=31597`, Quiz, peso 5) | [Branch `semana6`](https://github.com/antoniacosta25/FirebaseApp/tree/semana6) | **A9:** 6 testes passando (`test/async_test.dart`)<br>**A10:** **Nota `4,50 / 5,00` (90%)** em 29/10/2026 |

---

## 💻 Executar no GitHub Codespaces ou Localmente

1. Selecione a branch correspondente à atividade (`semana1`, `semana-4`, `semana5` ou `semana6`) ou utilize `git switch <branch>`.
2. Instale as dependências com `flutter pub get`.
3. Execute a suíte de testes automatizados da semana correspondente:

```bash
# Semana 4 (Atividade 7 — Estruturas de Dados: List e Map)
flutter test test/list_test.dart test/map_test.dart test/media_test.dart

# Semana 5 (Atividade 8 — Orientação a Objetos: 11 testes)
flutter test test/obj_test.dart

# Semana 6 (Atividade 9 — Programação Assíncrona: 6 testes)
flutter test test/async_test.dart
```

---

## 📚 Documentação Complementar no Repositório

- **[Revisão Completa dos 3 Questionários (31 Questões com Gabarito — A2, A5 e A10)](docs/portal-moodle-html/revisao-questionarios.html)**
- **[Glossário Completo de Desenvolvimento Mobile (A–Z)](docs/portal-moodle-html/glossario-mobile.html)**
- **[Catálogo dos 52 Arquivos Sincronizados do Moodle UESB](docs/portal-moodle-html/acervo-sincronizado-moodle.html)**

## Licença

Consulte o arquivo [LICENSE](LICENSE).
