import "dart:math";
import 'dart:io';

Random random = Random();

void main (){
  int valor_secreto = random.nextInt(100) + 1;
  // print(valor_secreto);

  var palpite;

  stdout.write("Digite seu palpite: ");
  palpite = int.parse(stdin.readLineSync()!);

  while (palpite != valor_secreto) {
    if (palpite > valor_secreto) {
      print("Você errou, o valor secreto é menor que $palpite.");

    }
    else{
      print("Você errou, o valor secreto é maior que $palpite.");
    }

    stdout.write("Tente novamente: ");
    palpite = int.parse(stdin.readLineSync()!);

  }

  if(palpite == valor_secreto){
    print("Parabéns, você acertou! O número secreto é $valor_secreto");
  }

  }
