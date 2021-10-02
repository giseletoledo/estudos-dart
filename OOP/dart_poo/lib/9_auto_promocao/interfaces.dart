import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

//Variáveis de nível superior e atributos de classe não são autopromovidas
Carro golCarro2 = Gol();

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

//casting
//(golCarro as Gol).tipoDeRodas();

//elimina a necessidade do casting é autopromovida a Gol
  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }
  printarDadosDoCarro(golCarro);
  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
}

void printarDadosDoCarro(Carro carro) {
  print('''
      Carro:
        Tipo: ${carro.runtimeType}
        Portas: ${carro.portas}
        Rodas: ${carro.rodas}
        Motor: ${carro.motor}
        Velocidade Maxima: ${carro.velocidadeMaxima()}
        Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível'}
    ''');
}
