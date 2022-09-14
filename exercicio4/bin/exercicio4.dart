import 'package:intl/intl.dart';


void main() {
  final dateFormat = DateFormat('dd/MM/yyyy');
  final dataAtual = DateTime.now();

  var diasUteis = 18;
  var dataCalc = dataAtual;

  while (diasUteis > 0) {
    dataCalc = dataCalc.add(Duration(days: 1));
    final sabado = dataCalc.weekday == DateTime.friday;
    final domingo = dataCalc.weekday == DateTime.sunday;

    if (sabado || domingo) {
      continue;
    }

    diasUteis--;
  }

  print('Data atual: ${dateFormat.format(dataAtual)}');
  print('Data calculada: ${dateFormat.format(dataCalc)}');
}