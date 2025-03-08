import 'dart:io';

void main() {
  Map<String, double> taxas = {
    'Real-Dólar': 0.20,
    'Dólar-Real': 5.04,
    'Real-Euro': 0.17,
    'Euro-Real': 5.90,
    'Dólar-Euro': 0.85,
    'Euro-Dólar': 1.18,
  };

  print('Informe a moeda de origem: ');
  print('1 - Real (BRL)\n2 - Dólar (USD)\n3 - Euro (EUR)');
  stdout.write('Digite a opção: ');
  int origem = int.parse(stdin.readLineSync()!);

  print('Informe a moeda de destino: ');
  print('1 - Real (BRL)\n2 - Dólar (USD)\n3 - Euro (EUR)');
  stdout.write('Digite a opção: ');
  int destino = int.parse(stdin.readLineSync()!);

  if (origem == destino) {
    print('Moedas de origem e destino iguais.');
    return;
  }

  stdout.write('Digite o valor a ser convertido: ');
  double valor = double.parse(stdin.readLineSync()!);

  String _gerarChave(int origem, int destino) {
    Map<int, String> moedas = {1: 'Real', 2: 'Dólar', 3: 'Euro'};
    return '${moedas[origem]}-${moedas[destino]}';
  }

  String chave = _gerarChave(origem, destino);

  if (!taxas.containsKey(chave)) {
    print('Taxa de conversão não encontrada.');
    return;
  }

  double taxa = taxas[chave]!;
  double convertido = valor * taxa;

  print('O valor convertido é: ${convertido.toStringAsFixed(2)}');

}
