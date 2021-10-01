import 'animal.dart';

//herda os atributos e metodos de Animal, por ser abstrata é obrigatório implementar os métodos
class Cachorro extends Animal {
  //Sobrescreve o valor no construtor
  Cachorro({required int idade}) : super(idade: idade);
  //Anottation, no dart metadata
  @override
  int calcularIdadeHumana() {
    //com null safety
    //return idade != null ? idade! * 7 : 0;
    return idade * 7;
  }
}
