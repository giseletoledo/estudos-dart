import 'package:dart_poo/5_heranca_covariant/banana.dart';
//import 'package:dart_poo/5_heranca_covariant/fruta.dart';
import 'package:dart_poo/5_heranca_covariant/mamifero.dart';

//É possível usar Banana por causa da palavra covariant na classe mamífero
class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
