import 'dart:io';

class ContaBancaria {
  String nome;
  double saldo;
  ContaBancaria(this.nome, this.saldo);
  void depositar(double valor) {
    saldo += valor;
    print('Deposito de R\$ ${valor} realizado com sucesso!');
  }

  void sacar(double valor) {
    saldo -= valor;
    print('Saque de R\$ ${valor} realizado com sucesso!');
  }

  void consultarSaldo() {
    print('saldo atual: R\$ ${saldo}');
  }
}

void main() {
  stdout.write('Digite o nome do titular da conta: ');
  String nome = stdin.readLineSync()!;
  
  stdout.write('Digite o saldo inicial da conta: ');
  double saldo = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  ContaBancaria conta = ContaBancaria(nome, saldo);
  print('\nConta criada para ${conta.nome} com saldo de R\$ ${conta.saldo}\n');

  while (true) {
    print('---------Sistema Bancario---------');
    print('1 - Depositar');
    print('2 - Sacar');
    print('3 - Consultar saldo');
    print('4 - Sair');
    stdout.write('Digite a opção: ');

    int opcao = int.tryParse(stdin.readLineSync()!) ?? 0;
    print('');

    switch (opcao) {
      case 1:
        stdout.write('Digite o valor a ser depositado: ');
        double valor = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        conta.depositar(valor);
        break;

      case 2:
        stdout.write('Digite o valor a ser sacado: ');
        double valor = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        conta.sacar(valor);
        break;

      case 3:
        conta.consultarSaldo();
        break;

      case 4:
        print('Saindo...');
        return;

      default:
        print('Opção inválida.');
    }
    print('');

  }
  
}
