void main() {
  //! Detalhe sobre a String
  //! A String Ã© composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  var dadosPessoas;
  var nomePessoa;
  var fmPessoa;
  var novaLista = [];

  var idades = <int>[];
  var idadePessoa;

  var listaSet = pessoas.toSet();

  var nomesMaiores18 = <String>[];
  var qtdeGenero = Map<String, int>();

  for (var pessoa in listaSet) {
    dadosPessoas = pessoa.split('|');
    novaLista.add(dadosPessoas);

    nomePessoa = dadosPessoas[0];
    fmPessoa = dadosPessoas[2].toString();
    idadePessoa = int.tryParse(dadosPessoas[1]);

    idades.add(idadePessoa);

    var maior18 = Maior18(idadePessoa, nomePessoa);

    if (maior18 != null) {
      nomesMaiores18.add(maior18);
    }

    qtdeMouF(fmPessoa, qtdeGenero);
  }

  print('*************************************************');
  print('***************Lista original********************');
  print(pessoas);
  print("A lista tem ${pessoas.length} pessoas");

  print('*************************************************');
  print('******Nova lista sem pacientes duplicados********');
  print(novaLista);
  print("A lista tem ${novaLista.length} pessoas");

  print('*************************************************');
  print('**Maiores de 18**');
  nomesMaiores18.forEach(print);

  print('*************************************************');
  print('********Quantidade de pessoas por genero*********');
  qtdeGenero.forEach((key, value) {
    print("$key: $value");
  });

  print('*************************************************');
  print('**************Pessoa mais velha******************');
  MaisVelho(listaSet);
}

String? Maior18(int idade, String nome) {
  if (idade > 18) {
    return nome;
  }
}

Map<String, int>? qtdeMouF(String genero, Map<String, int> qtde) {
  var qtdFeminino = qtde['masculino'] ?? 0; //valor acumulado ou 0
  var qtdeMasculino = qtde['feminino'] ?? 0;

  switch (genero) {
    case 'Masculino':
      qtdeMasculino++;
      break;
    case 'Feminino':
      qtdFeminino++;
      break;
  }
  qtde['masculino'] = qtdeMasculino;
  qtde['feminino'] = qtdFeminino;

  return qtde;
}

void MaisVelho(Set<String> listaSet) {
  var newList = listaSet.map((e) => e.split('|')).toList();
  newList.sort((idd1, idd2) {
    final idade1 = int.tryParse(idd1[1]) ?? 0;
    final idade2 = int.tryParse(idd2[1]) ?? 0;
    return idade2.compareTo(idade1);
  });

  var dadosMaisVelho = newList.first;

  print('A pessoa mais velha é ${dadosMaisVelho[0]} com ${dadosMaisVelho[1]}');
}
