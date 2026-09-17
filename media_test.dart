import 'package:flutter_test/flutter_test.dart';

// Lista de alunos e suas respectivas notas
Map<String, List<double>> alunos = {
  'Maria': [8.0, 9.0],
  'Carla': [10.0, 7.0],
  'Elena': [9.0, 8.0],
  'Luiza': [8.0, 9.0],
};

void main() {
  test('Calcular médias', () {
    // Cria um mapa vazio para guardar as médias
    Map<String, double> medias = {};

    // Percorre cada aluno e suas notas
    alunos.forEach((nome, notas) {
      double soma = 0;

      // Soma todas as notas do aluno
      for (double nota in notas) {
        soma += nota;
      }

      // Calcula a média
      double media = soma / notas.length;

      // Guarda a média do aluno
      medias[nome] = media;
    });

    // Confere se as médias estão corretas
    expect(medias, {
      'Maria': 8.5,
      'Carla': 8.5,
      'Elena': 8.5,
      'Luiza': 8.5,
    });
  });
}
