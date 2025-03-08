import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  int tentativas = 0;
  while (true) {
    tentativas++; // Aumenta o contador de tentativas
    print('------------------------------------------------');
    print('\nTentativa ($tentativas)');
    print('Jokenpô!');
    print('(0) - Pedra | (1) - Papel | (2) - Tesoura');
    print('\n------------------------------------------------');
    stdout.write('Escolha jogador número um(Você): ');
    Random random = Random();
    int jogador2 = random.nextInt(3); // 0, 1 ou 2
    int? jogador1 = int.tryParse(stdin.readLineSync() ?? '');
    if (jogador1 == null || jogador1 < 0 && jogador1 > 2) {
      print('Tentativa ($tentativas)');
      print('Entrada inválida! Digite um número válido.');
      continue;
    }
    if (jogador1 < 0 || jogador1 > 2) {
      print('Tentativa ($tentativas)');
      print('Entrada inválida! Digite um número válido.');
      continue;
    }
    if (jogador1 == 0 && jogador2 == 0 ||
        jogador1 == 1 && jogador2 == 1 ||
        jogador1 == 2 && jogador2 == 2) {
      print('Tentativa ($tentativas)');
      print(
        "DEU EMPATE, SEU NÚMERO É $jogador1 E O NÚMERO DO JOGADOR2 $jogador2",
      );
    }
    if (jogador1 == 0 && jogador2 == 2 ||
        jogador1 == 2 && jogador2 == 1 ||
        jogador1 == 1 && jogador2 == 0) {
      print('Tentativa ($tentativas)');
      print(
        "VOCE VENCEU!!!, SEU NÚMERO É $jogador1 E O NÚMERO DO JOGADOR2 $jogador2",
      );
    }
    if (jogador1 == 2 && jogador2 == 0 ||
        jogador1 == 1 && jogador2 == 2 ||
        jogador1 == 0 && jogador2 == 1) {
      print('Tentativa ($tentativas)');
      print(
        "VOCE PERDEU!!!, SEU NÚMERO É $jogador1 E O NÚMERO DO JOGADOR2 $jogador2",
      );
    }
  }
}