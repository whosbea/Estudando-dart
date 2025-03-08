import 'dart:io';

// 6. Calculadora de IMC Construa um programa que solicite o peso e a altura do usuário para calcular o
// Índice de Massa Corporal (IMC). Após realizar o cálculo, exiba uma mensagem indicando a faixa em 
// que o resultado se encontra, como baixo peso, peso normal, sobrepeso ou obesidade.

void main() {
  stdout.write('Digite seu peso (kg): ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Digite sua altura (m): ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print('\nSeu IMC é: ${imc.toStringAsFixed(2)}');

  if (imc < 18.5) {
    print('Classificação: Baixo peso');
  } else if (imc >= 18.5 && imc < 24.9) {
    print('Classificação: Peso normal');
  } else if (imc >= 25 && imc < 29.9) {
    print('Classificação: Sobrepeso');
  } else {
    print('Classificação: Obesidade');
  }
} 
