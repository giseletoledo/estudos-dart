import 'package:intl/intl.dart';

import 'produto.dart';

void main() {
  var produto = Produto(id: 001, nome: 'leite', preco: 5.00);

  var formatter = NumberFormat('000'); // mostrar 0 a esquerda

  var preco = produto.preco ?? 0;

  print('''
    Id do produto: ${formatter.format(produto.id)},
    Nome do produto: ${produto.nome},
    Preco do produto: ${preco.toStringAsFixed(2)}
    ''');
}
