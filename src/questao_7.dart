import 'dart:io';

void main(List<String> arguments) {
  stdout.write('Digite uma frase: ');
  String frase = stdin.readLineSync() ?? '';
  List<String> palavras = frase.split(' ');
  String acronimo = '';

  for (String palavra in palavras) {
    if (palavra.isNotEmpty) {
      acronimo += palavra[0].toUpperCase();
    }
  }

  print('O Acrônimo: ' + acronimo);
}
