//Classe que serve de base para ser herdada
abstract class Animal {
  String? tamanho;
  //int? idade; se nulo
  final int idade;

  Animal({required this.idade});

  int recuperarIdade() {
    //se for nulo retorna 0
    //return idade ?? 0;
    return idade;
  }

  int calcularIdadeHumana();
}
