# Desenvolvimento Mobile I

Repositório acadêmico de atividades da disciplina **Desenvolvimento Mobile I**, do curso de Análise e Desenvolvimento de Sistemas da UESB. Os exercícios exploram a linguagem Dart e conceitos utilizados no desenvolvimento de aplicativos com Flutter.

## Atividades por semana

| Semana | Conteúdo | Onde encontrar |
| --- | --- | --- |
| 1 | Materiais e atividades iniciais | [Branch semana-1](https://github.com/antoniacosta25/FirebaseApp/tree/semana-1) |
| 4 | Estruturas de dados em Dart | [Branch semana-4](https://github.com/antoniacosta25/FirebaseApp/tree/semana-4) |
| 5 | Orientação a objetos — Atividade 8 | [Branch semana5](https://github.com/antoniacosta25/FirebaseApp/tree/semana5) |
| 6 | Programação assíncrona — Atividade 9 | [Branch semana6](https://github.com/antoniacosta25/FirebaseApp/tree/semana6) |

A branch `semama5` é uma branch anterior, preservada no repositório; para a atividade da semana 5, consulte `semana5`. O conteúdo de cada semana fica na respectiva branch, não necessariamente nesta página inicial.

## Guia detalhado das atividades

- **Semana 1:** atividades 1, 2 e 3 abordam tendências, questionário e vocabulário mobile. A branch contém um exercício Dart; confira a relação com o roteiro e os resultados no Moodle.
- **Semana 2:** a atividade 4 pede o link do código e não é pontuada. Não foi identificada branch própria; localize o exercício e confira a entrega.
- **Semana 3:** a atividade 5 é um questionário e a 6 pede código sobre estruturas de controle. Não foi identificada branch própria; confira o roteiro e a origem do material disponível.
- **Semana 4:** a atividade 7 aborda estruturas de dados. A branch contém exercícios de listas, mapas e médias; compare-os com o roteiro e execute os testes.
- **Semana 5:** a atividade 8 aborda orientação a objetos. A branch `semana5` contém classes e testes; confira o roteiro e o envio.
- **Semana 6:** a atividade 9 aborda programação assíncrona e a 10 é um questionário. A branch `semana6` contém exemplos com Future e Stream; confira testes e entregas no Moodle.

Publicar código no GitHub não comprova envio ou nota no Moodle. Testes presentes no repositório precisam ser executados para comprovar seus resultados.

## Abrir no GitHub Codespaces

1. No repositório, selecione a branch da semana e escolha **Code > Codespaces** para criar ou abrir um ambiente.
2. No terminal, use `git branch --show-current` para conferir a branch. Salve seu trabalho antes de trocar com `git switch semana5` ou `git switch semana6`.
3. Verifique a instalação com `flutter --version`; se Flutter não estiver instalado, instale-o no ambiente antes de continuar.
4. Execute `flutter pub get` e o teste da branch correspondente:

```bash
# Semana 4
flutter test test/list_test.dart test/map_test.dart test/media_test.dart
# Semana 5
flutter test test/obj_test.dart
# Semana 6
flutter test test/async_test.dart
```

A publicação do site usa a branch `semana6`; preserve seus arquivos. Consulte a [Unidade I no Moodle](https://moodle4.uesb.br/course/view.php?id=1094&section=2) para instruções e situação das entregas.

## Dart e Flutter

[Dart](https://dart.dev/) é uma linguagem de programação utilizada com o [Flutter](https://flutter.dev/) para construir aplicações. Aqui, os exercícios incluem estruturas de dados, classes, objetos e programação assíncrona com `Future` e `Stream`. A configuração e os comandos de execução estão nos READMEs das branches de cada atividade.

O nome do repositório não significa que os exercícios já estejam integrados ao Firebase.

## Página da disciplina

Acesse o [site de Desenvolvimento Mobile I](https://antoniacosta25.github.io/FirebaseApp/) para consultar as atividades e os links do Moodle. O acesso ao Moodle pode exigir autenticação; publicar código no GitHub não substitui o envio da atividade na plataforma.

## Licença

Consulte o arquivo [LICENSE](LICENSE).