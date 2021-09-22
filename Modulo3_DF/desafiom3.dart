void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  print('***Pacientes acima de 20 anos***');
  var dadosPacientes;
  var nomePaciente;
  var idadePaciente;
  var profissaoPaciente;
  //svar qtdePaciente;
  var dev = 0;
  var estudante = 0;
  var dentista = 0;
  var jornalista = 0;

  for (var paciente in pacientes) {
    dadosPacientes = paciente.split('|').toList();
    nomePaciente = dadosPacientes[0];
    idadePaciente = int.tryParse(dadosPacientes[1]);

    // verifica se o resultado do tryParse não é nulo e se a idade é maior que 20
    if (idadePaciente != null) {
      if (idadePaciente > 20) {
        print('$nomePaciente tem $idadePaciente anos de idade');
      }
    }
  }

  print('*************************************************');
  print('****Quantidade de pacientes em cada profissão****');
  for (var paciente in pacientes) {
    dadosPacientes = paciente.split('|').toList();
    nomePaciente = dadosPacientes[0];
    profissaoPaciente = dadosPacientes[2];

    switch (profissaoPaciente) {
      case 'desenvolvedor':
        dev++;
        break;
      case 'estudante':
        estudante++;
        break;
      case 'dentista':
        dentista++;
        break;
      case 'jornalista':
        jornalista++;
        break;
    }
  }
  print(
      "Tem $dev desenvolvedores, $estudante estudantes, $dentista dentistas, $jornalista jornalistas");
}
