void main() {
  List <double> temperaturas = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];
  double fahrenheit=0, kelvin=0;

  for( int i=0; i<temperaturas.length; i++){
    fahrenheit = temperaturas[i] * (9/5) + 32;
    kelvin= temperaturas[i] + 273.15;
    print('Celcius: ${temperaturas[i]}, '
        'fahrenheit: ${fahrenheit.toStringAsFixed(2)}, '
        'kelvin: ${kelvin.toStringAsFixed(2)}');
  }

}
