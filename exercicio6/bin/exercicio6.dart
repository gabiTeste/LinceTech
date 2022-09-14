void main(){

  List<int> decimal = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  String hexa,octal,binario;
  int i=0;

  while(i<decimal.length){
    decimal.sort();
    binario = decimal[i].toRadixString(2);
    octal = decimal[i].toRadixString(4);
    hexa = decimal[i].toRadixString(16);
    print("decimal: ${decimal[i]}, binario: $binario, octal: $octal, hexadecimal: $hexa");
    i++;
  }
}
