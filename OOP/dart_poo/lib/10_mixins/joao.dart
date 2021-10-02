import 'package:dart_poo/10_mixins/artista.dart';
import 'package:dart_poo/10_mixins/cantar.dart';

import 'dancar.dart';

//Para ser um mixin Cantar não podem extender de outra classe
class Joao extends Artista with Dancar, Cantar {}


/* Exemplo com interface
class Joao extends Artista with Dancar implements ArtistaInterface {}

abstract class ArtistaInterface {} */
