// Actividad 02
// Desarrollar un algoritmo que lea n números positivos, determine y muestre el promedio de los n
// números positivos

import 'dart:io';

int suma=0, valor = 0;

void main(List<String> args) {
  do {
    print('ingrese un nuemro, 0 para finalizr');
    valor = int.parse(stdin.readLineSync()!);
    if (valor != 0) {
      suma = suma + valor;
    }
  } while (valor != 0);
  print('la suma de los nuemros es: $suma');
}
