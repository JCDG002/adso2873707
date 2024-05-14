// Calcular e imprimir la tabla de multiplicar de un número cualquiera. Imprimir el multiplicando, el
// multiplicador y el producto.

import 'dart:io';

void main(List<String> args) {
  // int numero = 0;
  double total = 0, numero = 0;
  print('Escriba el número de la table que quiere hacer:');
  numero = double.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    total = numero * i;
    print('$numero x $i = $total');
  }
}
