

import 'dart:math' as math;

void main() {
  List <double> raios = [5.0, 8.0, 12.0, 6.3, 15];
  double area=0 , perimetro=0;


  for( int i=0; i<raios.length; i++){
    area = math.pow(raios[i], 2) * math.pi;
    perimetro = raios[i] * 2 * math.pi;

     print("Raio: ${raios[i]}, área: $area , perímetro: $perimetro ");
  }

}
