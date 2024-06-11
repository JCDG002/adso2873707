// 4. Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo
// para calcular la calificación promedio y la calificación más baja de todo el grupo.

import 'dart:io';

void main(List<String> args) {
  // int numero = 0;
  double numBajo = 10, total = 0, numero=0, promedio;

  for (int i = 1; i <= 40; i++) {
    print('Escriba el número $i:');
    numero = double.parse(stdin.readLineSync()!);
    if (numero < numBajo) {
      numBajo = numero;
    }
    total+= numero;

    // promedio.add(numero);
  }
  promedio = total / 40;
  print('el promedio de los numeros es: $promedio, y la menor calificacione es: $numBajo');
}
