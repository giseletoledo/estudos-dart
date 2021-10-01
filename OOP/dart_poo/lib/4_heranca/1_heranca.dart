import 'cachorro.dart';

void main() {
  //Instancia da classe cachorro
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'Pequeno';
  //Antes do super
  // cachorro.idade = 10;

  //método herdado da classe Animal
  //print(cachorro.recuperarIdade());
  //print(cachorro.calcularIdadeHumana());
  print('''
    Cachorro:
      Tamanho: ${cachorro.tamanho}
      Idade: ${cachorro.idade}
      Idade Humana: ${cachorro.calcularIdadeHumana()}
  ''');
}
