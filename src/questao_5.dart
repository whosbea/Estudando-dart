import 'dart:io';

void main() {
  List<String> tarefas = [];

  while (true) {
    print('---------Gerenciador de Tarefas---------');
    print('1 - Adicionar tarefa');
    print('2 - Remover tarefa');
    print('3 - Listar tarefas');
    print('4 - Sair');
    stdout.write('Digite a opção: ');
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write('Digite a tarefa: ');
        String NovaTarefa = stdin.readLineSync()!;
        tarefas.add(NovaTarefa);
        print(NovaTarefa + ' adicionada com sucesso!');
        break;

      case 2:
        if (tarefas.isEmpty) {
          print('Nenhuma tarefa para remover.');
          break;
        }
        print('Tarefas:');
        for (int i = 0; i < tarefas.length; i++) {
          print('${i + 1} - ${tarefas[i]}');
        }
        stdout.write('Digite o número da tarefa a ser removida: ');
        int indice = int.tryParse(stdin.readLineSync()!) ?? 0;
        if (indice < 1 || indice > tarefas.length) {
          print('Tarefa não encontrada.');
          break;
        } else {
          String TarefaRemovida = tarefas.removeAt(indice - 1);
          print(TarefaRemovida + ' removida com sucesso!');
        }
        break;

      case 3:
        if (tarefas.isEmpty) {
          print('Nenhuma tarefa para listar.');
          break;
        } else {
          print('lista de tarefas:');
          for (int i = 0; i < tarefas.length; i++) {
            print('${i + 1} - ${tarefas[i]}');
          }
        }
        break;

      case 4:
        print('Saindo...');
        return;

      default:
        print('Opção inválida.');    
    }
  }
}
