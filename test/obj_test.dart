
import 'package:flutter_test/flutter_test.dart';

abstract class Pessoa {
  late int _id;
  String nome;

  Pessoa(this.nome);

  int get id => _id;

  set id(int id) {
    if (id > 0) {
      _id = id;
    } else {
      throw ArgumentError(
        'Identificador deve ser positivo.',
      );
    }
  }
}

mixin Ano {
  late int _ano;

  int get ano => _ano;

  set ano(int ano) {
    if (ano > 0) {
      _ano = ano;
    } else {
      throw ArgumentError(
        'Ano deve ser positivo.',
      );
    }
  }
}

class Aluno extends Pessoa with Ano {
  Aluno(super.nome, int ano) {
    this.ano = ano;
  }
}

class Professor extends Pessoa {
  Professor(super.nome);
}

class Disciplina {
  String nome;

  Disciplina(this.nome);
}

class Turma with Ano {
  Disciplina disciplina;
  Professor professor;
  final List<Aluno> _alunos = [];

  Turma(this.disciplina, this.professor, int ano) {
    this.ano = ano;
  }

  void matricular(Aluno aluno) {
    if (aluno.ano == ano) {
      _alunos.add(aluno);
    } else {
      throw ArgumentError(
        'O ano do aluno deve ser igual ao ano da turma.',
      );
    }
  }
}

class Historico extends Turma {
  Map<Aluno, List<double>> notas = {};

  Historico(
    super.disciplina,
    super.professor,
    super.ano,
  );

  @override
  void matricular(Aluno aluno) {
    super.matricular(aluno);
    notas[aluno] = [];
  }

  void adicionarNota(Aluno aluno, double nota) {
    if (!notas.containsKey(aluno)) {
      throw ArgumentError(
        'Aluno não está matriculado nesta turma.',
      );
    }

    if (nota < 0 || nota > 10) {
      throw ArgumentError(
        'A nota deve estar entre 0 e 10.',
      );
    }

    notas[aluno]!.add(nota);
  }

  double media(Aluno aluno) {
    if (!notas.containsKey(aluno) ||
        notas[aluno]!.isEmpty) {
      return 0.0;
    }

    double soma = 0;

    for (double nota in notas[aluno]!) {
      soma += nota;
    }

    return soma / notas[aluno]!.length;
  }

  bool isAprovado(Aluno aluno) {
    return media(aluno) > 6;
  }
}

void main() {
  group('Testes da Semana 5', () {
    late Disciplina disciplina;
    late Professor professor;
    late Historico historico;

    setUp(() {
      disciplina = Disciplina('Flutter');
      professor = Professor('João');

      historico = Historico(
        disciplina,
        professor,
        2023,
      );
    });

    test('Cadastrar aluno e matricular corretamente', () {
      Aluno aluno = Aluno('Maria', 2023);
      aluno.id = 1;

      historico.matricular(aluno);

      expect(aluno.id, 1);
      expect(historico.media(aluno), 0.0);
      expect(historico.isAprovado(aluno), false);
    });

    test('Não permitir identificador inválido', () {
      Aluno aluno = Aluno('Paula', 2023);

      expect(
        () => aluno.id = 0,
        throwsA(isA<ArgumentError>()),
      );
    });

    test('Não permitir ano inválido', () {
      expect(
        () => Aluno('Pedro', 0),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('Não matricular aluno de outro ano', () {
      Aluno aluno = Aluno('Ana', 2022);

      expect(
        () => historico.matricular(aluno),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('Calcular média corretamente', () {
      Aluno aluno = Aluno('Maria', 2023);

      historico.matricular(aluno);
      historico.adicionarNota(aluno, 8.0);
      historico.adicionarNota(aluno, 7.0);

      expect(historico.media(aluno), 7.5);
    });

    test('Aprovar aluno com média superior a seis', () {
      Aluno aluno = Aluno('Maria', 2023);

      historico.matricular(aluno);
      historico.adicionarNota(aluno, 8.0);
      historico.adicionarNota(aluno, 7.0);

      expect(historico.isAprovado(aluno), true);
    });

    test('Reprovar aluno com média igual a seis', () {
      Aluno aluno = Aluno('Paula', 2023);

      historico.matricular(aluno);
      historico.adicionarNota(aluno, 6.0);
      historico.adicionarNota(aluno, 6.0);

      expect(historico.isAprovado(aluno), false);
    });

    test('Não aceitar nota maior que dez', () {
      Aluno aluno = Aluno('Carlos', 2023);

      historico.matricular(aluno);

      expect(
        () => historico.adicionarNota(aluno, 11.0),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
