import 'package:dart_poo/7_polimorfismo/anestesista.dart';
import 'package:dart_poo/7_polimorfismo/medico.dart';
import 'package:dart_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_poo/7_polimorfismo/residente_anestesista.dart';

void main() {
  //Lista de médicos (generics)
  var medicos = <Medico>[
    ResidenteAnestesista(),
    Anestesista(),
    Obstetra(),
    Pediatra(),
  ];

  for (var medico in medicos) {
    medico.operar();
  }
}
