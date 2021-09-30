import 'pessoa.dart';

void main() {
  var pessoa = Pessoa(nome: 'Ana', idade: 48, sexo: 'Feminino');
  print(pessoa.nome);

  var pessoaNomeado = Pessoa.semNome(idade: 33, sexo: 'Masculino');

  print(pessoaNomeado.idade);
  print(pessoaNomeado.sexo);

  var pessoaFabrica = Pessoa.fabrica('Raquel');
  print(pessoaFabrica.nome);
}
