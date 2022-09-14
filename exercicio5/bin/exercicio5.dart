import 'dart:math' as math;
const nomes = ['Ana', 'Maria', 'Francisco', 'João', 'Pedro',
  'Gabriel', 'Rafaela', 'Marcio', 'Jose', 'Carlos',
  'Patricia', 'Helena', 'Camila', 'Mateus', 'Gabriel',
  'Samuel', 'Karina', 'Antonio', 'Daniel',
  'Joel', 'Cristiana', 'Sebastião', 'Paula'
];
const sobrenomes = ['Silva', 'Souza', 'Almeida', 'Azevedo', 'Braga',
  'Barros', 'Campos', 'Cardoso', 'Costa', 'Teixeira', 'Santos', 'Rodrigues',
  'Ferreira', 'Alves', 'Pereira', 'Lima', 'Gomes', 'Ribeiro',
  'Carvalho', 'Lopes', 'Barbosa'
];


void main() {
  final percorrer = math.Random();
  final nomeGerado = nomes[percorrer.nextInt(nomes.length)];
  final sobrenomeGerado = sobrenomes[percorrer.nextInt(sobrenomes.length)];
  final nomeCompletoGerado = '$nomeGerado $sobrenomeGerado';

  print('Nome gerado: $nomeCompletoGerado');
}