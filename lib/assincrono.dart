// Exemplos da Semana 6: dados em memória, sem serviços externos.
const alunos = <String, List<double>>{
  'Maria': [8.0, 9.0],
  'Bruna': [7.0, 7.0],
  'Carla': [10.0, 9.0],
};

Future<int> process() async {
  await Future<void>.delayed(const Duration(seconds: 5));
  return 0;
}

Future<List<double>> search(String nome) async {
  await Future<void>.delayed(const Duration(seconds: 2));
  final notas = alunos[nome];
  if (notas == null) {
    throw ArgumentError('Aluno não encontrado: $nome');
  }
  return List<double>.of(notas);
}

Stream<int> count() async* {
  for (var numero = 1; numero <= 3; numero++) {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield numero;
  }
}

Stream<double> media(List<String> nomes) {
  return Stream<String>.fromIterable(nomes).asyncExpand((nome) {
    return Stream<double>.fromFuture(
      search(nome).then((notas) {
        final soma = notas.reduce((total, nota) => total + nota);
        return soma / notas.length;
      }),
    );
  });
}
