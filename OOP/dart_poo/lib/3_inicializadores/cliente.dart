class Cliente {
  //cuidado ao utilizar late e o ! (Force non null), porque se esquecer de definir um valor dá erro
  //late String nome;  Runtime(Tempo de execução) dá exception,sobrescreve o final

  //com late só se o construtor fosse inicializado depois com um construtor nomeado
  //Cliente.comNome({required String nome}){ nome = nome;}

  String nome;
  int? idade;

  //Inicializa sem deixar nulo
  Cliente({
    required String nome,
  }) : nome = nome;
}
