//Pessoa tem um endereço
class Pessoa {
  String? nome;
  //Quando um atributo de associação é obrigatório, é uma composição
  Endereco endereco = Endereco();
  //Quando um atributo de associação não é obrigatório, é uma agregação
  Telefone? telefone;
  CPF cpf = CPF();
}

class CPF {}

class Telefone {}

class Endereco {}
