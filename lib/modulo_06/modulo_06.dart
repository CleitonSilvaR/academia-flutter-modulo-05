void main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  var pessoasNaoDuplicados = <String>{...pessoas};

  var pessoasSexoMasculino = <String>{
    ...pessoasNaoDuplicados
        .where((pessoa) => pessoa.toUpperCase().contains('MASCULINO'))
  };
  var pessoasSexoFeminino = <String>{
    ...pessoasNaoDuplicados
        .where((pessoa) => pessoa.toUpperCase().contains('FEMININO'))
  };

  var pessoasSexoMasculinoMaiores = <String>{
    ...pessoasSexoMasculino
        .where((pessoa) => int.tryParse(pessoa.split('|')[1] ?? 0) > 18)
  };

  var pessoasSexoFemininoMaiores = <String>{
    ...pessoasSexoFeminino
        .where((pessoa) => int.tryParse(pessoa.split('|')[1] ?? 0) > 18)
  };

  var pessoasSexoMaiores = <String>{
    ...(pessoasSexoMasculinoMaiores.union(pessoasSexoFemininoMaiores))
  };

  var pessoasMaisVelhaParaMaisNova = <String>[...pessoasNaoDuplicados];
  pessoasMaisVelhaParaMaisNova.sort((pessoa1, pessoa2) =>
      int.tryParse(pessoa2.split('|')[1] ?? 0)
          .compareTo(int.tryParse(pessoa1.split('|')[1] ?? 0)));

  var pessoaMaisVelha = pessoasMaisVelhaParaMaisNova[0];
  var pessoaMaisVelhaMasculino = [
    ...pessoasMaisVelhaParaMaisNova
        .where((pessoa) => pessoa.toUpperCase().contains('MASCULINO'))
  ][0];
  var pessoaMaisVelhaFeminino = [
    ...pessoasMaisVelhaParaMaisNova
        .where((pessoa) => pessoa.toUpperCase().contains('FEMININO'))
  ][0];

  print('___________ DESAFIO ____________');
  print('1 - Remover os duplicados');
  print('Pessoas não duplicadas $pessoasNaoDuplicados');
  print('Quantidade pessoas não duplicadas ${pessoasNaoDuplicados.length}');
  print('________________________________');

  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');
  print('Quantidade pessoas sexo Masculino ${pessoasSexoMasculino.length}');
  print('Quantidade pessoas sexo Feminino ${pessoasSexoFeminino.length}');
  print('________________________________');

  print('3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos');
  print('    e mostre a quantidade de pessoas com mais de 18 anos');
  print('Quantidade pessoas Maiores de 18 anos ${pessoasSexoMaiores.length}');
  print(
      'Quantidade pessoas sexo Masculino Maiores de 18 anos ${pessoasSexoMasculinoMaiores.length}');
  print(
      'Quantidade pessoas sexo Feminino Maiores de 18 anos ${pessoasSexoFemininoMaiores.length}');
  print('________________________________');

  print('4 - Encontre a pessoa mais velha.');
  print('Pessoa Mais Velha $pessoaMaisVelha');
  print('Pessoa Mais Velha sexo Masculino $pessoaMaisVelhaMasculino');
  print('Pessoa Mais Velha sexo Feminino $pessoaMaisVelhaFeminino');
  print('________________________________');
}
