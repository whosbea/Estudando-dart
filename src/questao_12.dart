
// 12. Simulação de Gerenciamento de Estado em um Carrinho de Compras Crie uma aplicação Dart 
// que simule um carrinho de compras, demonstrando conceitos básicos de gerenciamento de estado. 
// O programa deverá:

// ● Definir classes para representar produtos e o carrinho.
// ● Permitir a adição e remoção de produtos do carrinho.
// ● Manter e atualizar o estado atual do carrinho a cada operação, exibindo um resumo com os itens 
// adicionados e o valor total.
// ● Exibir feedback a cada alteração, demonstrando como o estado da aplicação evolui com as interações.


// Produto
class Produto {
  String nome;
  double Preco;

  // Construtor
  Produto(this.nome, this.Preco);

  @override
  String toString() => '$nome - R\$${Preco.toStringAsFixed(2)}';
}


// Carrinho
class Carrinho {
  List<Produto> _Produtos = [];

  void addProduto(Produto Produto) {
    _Produtos.add(Produto);
    _showCarrinhoState('Adicionado: ${Produto.nome}');
  }

  void removeProduto(String ProdutoNome) {
    _Produtos.removeWhere((Produto) => Produto.nome == ProdutoNome);
    _showCarrinhoState('Removido: $ProdutoNome');
  }

  double get totalPreco => _Produtos.fold(0, (total, Produto) => total + Produto.Preco);

  void _showCarrinhoState(String action) {
    print('\n$action');
    print('Estado atual do carrinho:');
    if (_Produtos.isEmpty) {
      print('Carrinho vazio.');
    } else {
      _Produtos.forEach((Produto) => print(Produto));
      print('Valor total: R\$${totalPreco.toStringAsFixed(2)}');
    }
  }
}

void main() {

  // Instanciação
  var carrinho = Carrinho();

  var Produto1 = Produto('Notebook', 3500.00);
  var Produto2 = Produto('Smartphone', 2500.00);
  var Produto3 = Produto('Fone Bluetooth', 150.00);

  carrinho.addProduto(Produto1);
  carrinho.addProduto(Produto2);
  carrinho.addProduto(Produto3);

  carrinho.removeProduto('Smartphone');
  carrinho.removeProduto('Fone Bluetooth');
}
