import 'dart:io';
import 'dart:math';

// 4. Simulador de Sorteio Crie um sistema que permita a entrada de uma lista de nomes e realize um
// sorteio para selecionar um nome de forma aleatória.

void main() {
  List<String> nomes = [];

  print('Digite os nomes para o sorteio (digite "sair" para finalizar):');

  while (true) {
    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.toLowerCase() == 'sair') {
      break;
    }

    if (entrada != null && entrada.isNotEmpty) {
      nomes.add(entrada);
    }
  }

  if (nomes.isEmpty) {
    print('Nenhum nome foi inserido. Encerrando o programa.');
    return;
  }

  Random random = Random();
  int indiceSorteado = random.nextInt(nomes.length);

  print('O nome sorteado foi: ${nomes[indiceSorteado]}');
} 
