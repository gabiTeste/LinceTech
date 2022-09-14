void main() {
  final paragrafo = 'Lorem ipsum dolor sit amet, consectetur '
      'adipiscing elit. Nam venenatis nunc et posuere vehicula.'
      ' Mauris lobortis quam id lacinia porttitor.';
  final numeroPalavras = contarPalavras(paragrafo);
  final tamanhoTexto = contarTamanhoTexto(paragrafo);
  final numeroFrases = contarFrases(paragrafo);
  List<String> vogais = ['a','e','i','o','u'];
  List<String> consoantes = ['b','c','d','f','g','h','j','k',
    'l','m','n','p','q','r','s','t','v','w','x','y','z'];
  List<String> consoantesAchadas = [];
  int i=0, numeroVogais=0;

  while(i<consoantes.length){
    if(((consoantes[i]).allMatches(paragrafo,0).length)!=0){
      consoantesAchadas.add(consoantes[i]);
    }
    i++;
  }

  i =0;

  while(i<vogais.length){
    if(((vogais[i]).allMatches(paragrafo,0).length)!=0){
      numeroVogais += (vogais[i]).allMatches(paragrafo,0).length;
    }
    i++;
  }


  print('Paragrafo: $paragrafo');
  print('Número de palavras: $numeroPalavras');
  print('Tamanho do texto: $tamanhoTexto');
  print('Numero de frases: $numeroFrases');
  print('Número de vogais: $numeroVogais');
  print('Consoantes encontradas: ${consoantesAchadas}');

}
int contarPalavras(String paragrafo) {
  if (paragrafo.trim().isEmpty) {
    return 0;
  }
  return paragrafo.split(' ').length;
}

int contarTamanhoTexto(String paragrafo){
  if(paragrafo.trim().isEmpty){
    return 0;
  }
  return paragrafo.trim().length;
}

int contarFrases(String paragrafo) {
  final frases = paragrafo.trim().split('.');
  var cont= 0;
  for (final frase in frases) {
    if (frase.isNotEmpty) {
      cont++;
    }
  }
  return cont;
}
