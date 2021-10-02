//classe abstrata tem métodos implementados
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

//Interface,porque não tem método implementado
abstract class Carro {
  //o abstract torna essas varáveis obrigatórias
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
