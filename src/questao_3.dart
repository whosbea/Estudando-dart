import 'dart:math';
import 'dart:io';

void main(){
  String senhaForte = "";
  Random random = Random();
  var qnt_caracteres;
  var opcao;

  stdout.write("Você quer uma senha com quantos caracteres? ");
  qnt_caracteres = int.parse(stdin.readLineSync()!);

  stdout.write("Quer caracteres especiais na sua senha? (S/N) ");
  opcao = stdin.readLineSync()!.toUpperCase();

  while (opcao != "S" && opcao != "N") {
    stdout.write("Digite uma opção válida (S/N): ");
    opcao = stdin.readLineSync()!.toUpperCase();
  }

  const String numeros = "0123456789";
  const String letrasMinusculas = "abcdefghijklmnopqrstuvwxyz";
  const String letrasMaiusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const String caracteresEspeciais = "!@#\$%^&*()-_=+[]{};:,.<>/?";

  String caracteresDisponiveis = numeros + letrasMinusculas + letrasMaiusculas;

   if (opcao == "S") {
    caracteresDisponiveis += caracteresEspeciais;
  }


  for (int i = 0; i < qnt_caracteres; i++) {
    int indiceAleatorio = random.nextInt(caracteresDisponiveis.length);
    senhaForte += caracteresDisponiveis[indiceAleatorio];
  }

  print("Sua senha forte é: $senhaForte");
}
