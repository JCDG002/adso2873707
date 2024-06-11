// Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números
// almacenados en la matriz.

import 'dart:io';

void main(List<String> args) {
  List<List<int>> matriz = [];
  int suma = 0;
  for (int i = 0; i < 5; i++) {
    List<int> fila = [];
    for (int j = 0; j < 6; j++) {
      print('escriba la posicion [$i][$j]:');
      int numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    matriz.add(fila);
  }
  print('matriz');
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 6; j++) {
      // stdout.write('${matriz[i][j]}  ');
      suma += matriz[i][j];
    }
    // print('');
  }
  print('la suma de los elementos de la matriz es: $suma');
}
