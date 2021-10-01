import 'cliente.dart';

void main() {
  var cliente = Cliente(nome: 'Rodrigo');
  cliente.nome = 'Horácio';
  print(cliente.nome);

  //cliente.idade = 22;
  //var idade = cliente.idade.toString();

//certeza que não é nulo, utilizar !
  if (cliente.idade != null) {
    print(cliente.idade!.toString().toLowerCase());
  }
}
