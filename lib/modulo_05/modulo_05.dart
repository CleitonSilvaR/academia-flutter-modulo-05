void main() {
  print('________________________________');
  var nomes =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';
  print('RESULT EX 1');
  print(nomes.length);

  var nomesList = List<String>.generate(10, (index) => 'Nome${index + 1}');

  print('________________________________');
  print('RESULT EX 2');
  for (var nome in nomesList) {
    print('Sejá bem vindo $nome');
  }

  print('________________________________');
  print('RESULT EX 4');
  print(nomes.split(' ').length);

  var pacientes = <String>[
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  print('________________________________');
  print('RESULT EX 4');
  for (var paciente in pacientes) {
    var itens = paciente.split('|');
    print('${itens[0]} tem ${itens[1]} anos');
  }

  var pacientes2 = pacientes.sublist(0, pacientes.length - 2);
  print('________________________________');
  print('RESULT EX 5');
  for (var paciente in pacientes2) {
    var itens = paciente.split('|');
    print('${itens[0]} tem ${itens[1]} anos');
  }

  var pacientes3 = [...pacientes];
  pacientes3.removeWhere((item) => int.tryParse(item.split('|')[1] ?? 0) < 18);
  print('________________________________');
  print('RESULT EX 6');
  for (var paciente in pacientes3) {
    var itens = paciente.split('|');
    print('${itens[0]} tem ${itens[1]} anos');
  }

  print('________________________________');

  print('___________ DESAFIO ____________');

  var pacientesDesafio = <String>[
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  print('________________________________');
  print('Apresente a quantidade de pacientes com mais de 20 anos');
  print('________________________________');
  var pacientesDesafioAcimaVinteAnos = [...pacientesDesafio];
  pacientesDesafioAcimaVinteAnos
      .removeWhere((element) => int.tryParse(element.split('|')[1] ?? 0) < 20);

  for (var paciente in pacientesDesafioAcimaVinteAnos) {
    var itens = paciente.split('|');
    print(
        '${itens[0]}, tem ${itens[1]} anos, é ${itens[2]}, mora em ${itens[3]}');
  }

  print('________________________________');
  print(
      'Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.');
  print('________________________________');

  var familias = <String>[];

  for (var paciente in pacientesDesafio) {
    var familia = paciente.split('|')[0].split(' ').last;

    if (!familias.contains(familia)) {
      familias.add(familia);
    }
  }

  for (var familia in familias) {
    var pacientesDesafioFamilia = [...pacientesDesafio];
    pacientesDesafioFamilia
        .removeWhere((element) => !element.split('|')[0].contains(familia));

    for (var paciente in pacientesDesafioFamilia) {
      var itens = paciente.split('|');
      print(
          '${itens[0]}, da familia $familia, tem ${itens[1]} anos, é ${itens[2]}, mora em ${itens[3]}');
    }
  }
}
