// 1. Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado
// de Algoritmos.


import 'dart:io';

void main(List<String> args) {
  int calif = 1, suma=0;

  do {
    print('Ingrese la calificación $calif:');
    suma += int.parse(stdin.readLineSync()!);
    calif++;
  } while (calif <= 7);

  double promedio = suma / 7;
  print('El promedio de las notas es: $promedio');
}
