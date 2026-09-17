void main() {
  test('Calcular médias', () {
    Map<String, double> medias = {};

    alunos.forEach((nome, notas) {
      double soma = 0;

      for (double nota in notas) {
        soma += nota;
      }

      double media = soma / notas.length;
      medias[nome] = media;
    });

    expect(medias, {
      'Maria': 8.5,
      'Carla': 8.5,
      'Elena': 8.5,
      'Luiza': 8.5
    });
  });
}
