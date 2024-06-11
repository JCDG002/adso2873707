// 6. Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los
// niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las
// categorías con base en la sig, tabla
// CATEGORIA        EDAD
// Niños            0 – 12
// Jóvenes          13 - 29
// Adultos          30 - 59
// Adultos Mayores  60 en adelante
// . Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoría.

import 'dart:io';

void main(List<String> args) {
  // int numero = 0;
  double total = 0, numero = 0, boys = 0, youngs = 0, adults = 0, seniors = 0;
  print('Escriba la edad de la persona: ');
  numero = double.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    if (numero > 0 && numero <= 12) {
      boys += numero;
    } else if (numero > 13 && numero <= 29) {
      youngs += numero;
    } else if (numero > 30 && numero <= 59) {
      adults += numero;
    } else if (numero > 60) {
      seniors += numero;
    }
  }
  print(
      'cantidad de niños: $boys, jovenes: $youngs, adultos: $adults, mayores: $seniors');
}
