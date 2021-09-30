class Camiseta {
  String? tamanho;
  String? _cor; //variável privada
  String? marca;

  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser verde');
    }
  }

  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
}
