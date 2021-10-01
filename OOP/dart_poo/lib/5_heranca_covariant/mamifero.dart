import 'package:dart_poo/5_heranca_covariant/fruta.dart';

//Deixa utilizar uma classe filha de Fruta como parâmetro
abstract class Mamifero {
  void comer(covariant Fruta fruta);
}
