void main() {
  final numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  final resultadoFor = comFor(numeros);
  final resultadoWhile = comWhile(numeros);
  final resultadoRecursivo = comRecursao(numeros);
  final resultadoLista = comLista(numeros);

  print('for: $resultadoFor');
  print('while: $resultadoWhile');
  print('recursão: $resultadoRecursivo');
  print('lista: $resultadoLista');
}

int comFor(List<int> numeros){

  int soma=0, i=0;
  for(i=0;i<numeros.length;i++){
    soma += numeros[i];
  }

  return soma;
}

int comWhile(List<int> numeros) {
  int soma = 0;
  final iterador = numeros.iterator;

  while (iterador.moveNext())/*chama o primeiro elemento*/ {
   soma = soma + iterador.current; /*matem o valor ate a proxima chamada*/
   }
   return soma;
}

int comRecursao(List<int> numeros){ /*Recursão é um método no qual uma função chama a si mesma. */
  if (numeros.isEmpty) {
    return 0;
  }
  return numeros.first + comRecursao(numeros.sublist(1));
  /*Returns a new list containing the elements between start and end.*/
}

int comLista(List<int> numeros) => numeros.reduce((a, b) => a+b);

/*Reduces a collection to a single value by iteratively
combining elements of the collection using the provided function.
 */