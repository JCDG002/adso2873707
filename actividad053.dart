// Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.

import 'dart:io';

void main(List<String> args) {
  List<int> numerosPositivos = [], numerosNegativos = [];
  int ceros = 0;

  for (int i = 1; i <= 20; i++) {
    int numero;
      print('Escriba el número $i:');
      numero = int.parse(stdin.readLineSync()!);
      if (numero < 0) {
        numerosNegativos.add(numero);
      } else if (numero > 0) {
        numerosPositivos.add(numero);
      } else {
        ceros++;
      }

    // numerosPositivos.add(numero);
  }

  print(
      'Los números positivos ingresados son: $numerosPositivos, los negativos son: $numerosNegativos, los ceros fueron $ceros');
}
