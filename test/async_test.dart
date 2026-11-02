import 'package:firebase_app/assincrono.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Atividade 9 — Semana 6: Programação Assíncrona', () {
    test('process termina com resultado zero', () async {
      expect(await process(), 0);
    });
    test('search encontra as notas de Maria', () async {
      expect(await search('Maria'), [8.0, 9.0]);
    });
    test('search informa erro para nome inexistente', () async {
      await expectLater(search('Paula'), throwsArgumentError);
    });
    test('count emite 1, 2 e 3 e termina', () async {
      await expectLater(count(), emitsInOrder([1, 2, 3, emitsDone]));
    });
    test('media calcula cada aluno na ordem informada', () async {
      await expectLater(
        media(['Maria', 'Bruna', 'Carla']),
        emitsInOrder([8.5, 7.0, 9.5, emitsDone]),
      );
    });
    test('media continua com Bruna depois do erro de Paula', () async {
      await expectLater(
        media(['Maria', 'Paula', 'Bruna']),
        emitsInOrder([8.5, emitsError(isA<ArgumentError>()), 7.0, emitsDone]),
      );
    });
  });
}
