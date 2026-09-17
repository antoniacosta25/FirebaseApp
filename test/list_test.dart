import 'package:flutter_test/flutter_test.dart';

// Cria uma lista de números inteiros
List<int> numeros = [1, 2, 3];

void main() {

  // Teste para adicionar um novo elemento na lista
  test('Adicionar elemento', () {
    numeros.add(4);

    // Verifica se o número 4 foi adicionado
    expect(numeros.contains(4), isTrue);
  });

  // Teste para adicionar vários elementos de outra lista
  test('Adicionar outra lista', () {
    numeros.addAll([5, 6]);

    // Verifica se o número 5 está na lista
    expect(numeros.contains(5), isTrue);

    // Verifica se o número 6 está na lista
    expect(numeros.contains(6), isTrue);
  });

  // Teste para adicionar um elemento em uma posição específica
  test('Adicionar na posição', () {
    numeros.insert(0, 0);

    // Verifica se o número 0 está na primeira posição
    expect(numeros.indexOf(0), 0);
  });

  // Teste para remover um elemento da lista
  test('Remover elemento', () {
    numeros.remove(2);

    // Verifica se o número 2 não está mais na lista
    expect(numeros.contains(2), isFalse);
  });

  // Teste para remover um elemento usando sua posição
  test('Remover na posição', () {
    numeros.removeAt(0);

    // Verifica se o número 0 foi removido
    expect(numeros.contains(0), isFalse);
  });

  // Teste para verificar o tamanho da lista
  test('Testar tamanho', () {

    // Verifica se a lista possui 5 elementos
    expect(numeros.length, 5);
  });

  // Teste para verificar se a lista está vazia ou não
  test('Testar vazio e não vazio', () {

    // Verifica se a lista não está vazia
    expect(numeros.isEmpty, isFalse);

    // Verifica se a lista possui elementos
    expect(numeros.isNotEmpty, isTrue);
  });

  // Teste relacionado à ordenação dos elementos da lista
  test('Testar ordenação', () {

    // Verifica a lista na ordem inversa
    expect(numeros.reversed.toList(), [6, 5, 4, 3, 1]);

    // Verifica a lista na ordem crescente
    expect(numeros, [1, 3, 4, 5, 6]);

    // Inverte a ordem dos elementos da lista
    numeros = numeros.reversed.toList();

    // Verifica se a lista ficou em ordem decrescente
    expect(numeros, [6, 5, 4, 3, 1]);

    // Ordena novamente a lista em ordem crescente
    numeros.sort();

    // Verifica se a ordenação está correta
    expect(numeros, [1, 3, 4, 5, 6]);
  });

  // Teste para percorrer e realizar operações com os elementos da lista
  test('Testar percorrer lista', () {

    // Cria uma variável para armazenar a soma dos números
    int soma = 0;

    // Percorre todos os números da lista
    for (int numero in numeros) {
      soma += numero;
    }

    // Verifica se a soma dos números é 19
    expect(soma, 19);

    // Multiplica cada número da lista por 2
    numeros = numeros.map((numero) => numero * 2).toList();

    // Verifica o resultado da multiplicação
    expect(numeros, [2, 6, 8, 10, 12]);

    // Filtra somente os números divisíveis por 3
    numeros = numeros.where((numero) => numero % 3 == 0).toList();

    // Verifica os números que passaram pelo filtro
    expect(numeros, [6, 12]);
  });
}
