import 'package:flutter_test/flutter_test.dart';

// Lista de alunos e suas respectivas notas.
Map<String, List<double>> alunos = {
  'Maria': [8.0, 9.0],
  'Carla': [10.0, 7.0],
  'Elena': [9.0, 8.0],
  'Luiza': [8.0, 9.0],
};

void main() {
  // Teste para calcular a média das notas de cada aluno.
  test('Calcular médias', () {
    // Mapa que armazenará o nome do aluno e sua média.
    Map<String, double> medias = {};

    // Percorre cada aluno e suas notas.
    alunos.forEach((nome, notas) {
      // Variável que armazenará a soma das notas.
      double soma = 0;

      // Percorre todas as notas do aluno.
      for (double nota in notas) {
        soma += nota;
      }

      // Calcula a média dividindo a soma pela quantidade de notas.
      double media = soma / notas.length;

      // Armazena a média no mapa usando o nome do aluno.
      medias[nome] = media;
    });

    // Verifica se as médias calculadas estão corretas.
    expect(medias, {
      'Maria': 8.5,
      'Carla': 8.5,
      'Elena': 8.5,
      'Luiza': 8.5,
    });
  });
}
