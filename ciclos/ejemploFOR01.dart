// algoritmo que sume 10 numeros enteros

import 'dart:io';

int num = 0, suma = 0;

void main() {
  // imprimir numeros del 1 al 5
  for (int i = 0; i < 10; i++) {
    // print('i: $i');
    print('ingrese el valor del numero '+(i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    suma = suma + num;
  }
  print('la suma de los nuemeros ingresados es $suma');
}
