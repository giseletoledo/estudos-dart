import 'camiseta.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Branca';
  camisetaNike.marca = 'Nike';

  print('''
   Camiseta:
     Cor: ${camisetaNike.cor}
     Marca: ${camisetaNike.marca}
     Tamanho: ${camisetaNike.tamanho}
     tipoLavagem: ${camisetaNike.tipoDeLavagem()}
    ''');
}
