import 'package:flutter_test/flutter_test.dart';

// Cria um Map que relaciona o nome do aluno com uma lista de notas
Map<String, List<double>> alunos = {
  'Maria': [8.0, 9.0],
  'Bruna': [7.0, 7.0],
  'Carla': [10.0, 9.0],
};

void main() {

  // Teste para adicionar um novo aluno ao Map
  test('Adicionar elemento', () {

    // Adiciona Elena somente se ela ainda não existir
    alunos.putIfAbsent('Elena', () => [9.0, 8.0]);

    // Verifica se Elena foi adicionada
    expect(alunos.containsKey('Elena'), isTrue);

    // Verifica as notas de Elena
    expect(alunos['Elena'], [9.0, 8.0]);
  });

  // Teste para adicionar vários alunos de uma vez
  test('Adicionar outro dicionário', () {

    // Adiciona Elena e Luiza ao Map
    alunos.addAll({
      'Elena': [9.0, 8.0],
      'Luiza': [8.0, 9.0],
    });

    // Verifica se Elena existe no Map
    expect(alunos.containsKey('Elena'), isTrue);

    // Verifica se Luiza existe no Map
    expect(alunos.containsKey('Luiza'), isTrue);
  });

  // Teste para remover um aluno
  test('Remover elemento', () {

    // Remove a aluna Bruna do Map
    alunos.remove('Bruna');

    // Verifica se Bruna não está mais no Map
    expect(alunos.containsKey('Bruna'), isFalse);
  });

  // Teste para atualizar as notas de um aluno
  test('Atualizar elemento', () {

    // Atualiza as notas da aluna Carla usando update
    alunos.update('Carla', (value) => [9.0, 8.0]);

    // Verifica se as notas foram atualizadas
    expect(alunos['Carla'], [9.0, 8.0]);

    // Atualiza novamente as notas de Carla
    alunos['Carla'] = [8.0, 9.0];

    // Verifica o novo valor das notas
    expect(alunos['Carla'], [8.0, 9.0]);
  });

  // Teste para percorrer e consultar os dados do Map
  test('Testar percorrer dicionário', () {

    // Verifica os nomes dos alunos cadastrados
    expect(alunos.keys, ['Maria', 'Carla', 'Elena', 'Luiza']);

    // Verifica as notas de todos os alunos
    expect(alunos.values, [
      [8.0, 9.0],
      [8.0, 9.0],
      [9.0, 8.0],
      [8.0, 9.0],
    ]);

    // Cria uma variável para armazenar a soma de todas as notas
    double soma = 0;

    // Percorre todos os alunos e suas respectivas notas
    alunos.forEach((key, value) {

      // Percorre cada nota do aluno
      for (double nota in value) {

        // Adiciona a nota ao total da soma
        soma += nota;
      }
    });

    // Verifica se a soma de todas as notas é 68
    expect(soma, 68.0);
  });
}
