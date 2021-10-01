class Produto {
  final int? _id;
  final String? nome;
  final double? _preco;

  /* Produto(this.id,this.nome,this.preco); */

  //Para inicializar os valores do construtor precisa do :, sem ele os valores do final não podem ser reatribuidos e no construtor oa valores já estão definidos
  /*  Produto({required int id, required String nome, required double preco}){
    _id = id;
    _preco = preco;
  }; */

  int? get id => _id;

  double? get preco => _preco;

  /* Não pode criar um setter, porque final não reatribui valores
  set id(int? id) {
    _id = id;
  } */

  Produto({
    required int id,
    required this.nome,
    required double preco,
  })   : _id = id,
        _preco = preco {
    /*  print(_id);
    print(_preco); */
  }

  factory Produto.fabrica({
    required int id,
    required String nome,
    required double preco,
  }) {
    return Produto(id: id, nome: nome, preco: preco);
  }
}
