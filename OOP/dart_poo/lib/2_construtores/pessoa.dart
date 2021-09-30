class Pessoa {
  String? nome;
  int? idade;
  String? sexo;
  //Construtor
  //default
  //Pessoa();
  /* Pessoa(String nomeConstruct, int idadeConstruct, String sexoConstruct) {
    nome = nomeConstruct;
    idade = idadeConstruct;
    sexo = sexoConstruct;
  } */
  //Construtor simplificado
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });
  //Não permite sobrecarga(em Java usa o mesmo construtor com diferente número de parâmetros), usa construtor nomeado
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

  //factory - regra de negócio antes de criar o construtor
  factory Pessoa.fabrica(String nomeConstr) {
    var nome = nomeConstr + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
