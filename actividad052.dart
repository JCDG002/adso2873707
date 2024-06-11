// 2. Leer 10 números e imprimir solamente los números positivos


// import 'dart:io';

// void main(List<String> args) {
//   int cont = 1, suma = 0;

//   do {
//     print('escriba el  numero positivo $cont:');
//     suma = int.parse(stdin.readLineSync()!);
//     if (suma > 0) {
//       suma++;
//       cont++;
//     } else {
//       print('el numero debe ser positivo');
//     }
//   } while (cont <= 10);

//   // double promedio = suma / 7;
//   print('El promedio de las notas es: $suma');
// }

import 'dart:io';

void main(List<String> args) {
  List<int> numerosPositivos = [];

  for (int i = 1; i <= 10; i++) {
    int numero;
    do {
      print('Escriba el número positivo $i:');
      numero = int.parse(stdin.readLineSync()!);
      if (numero <= 0) {
        print('El número debe ser positivo. Inténtelo nuevamente.');
      }
    } while (numero <= 0);

    numerosPositivos.add(numero);
  }

  print('Los números positivos ingresados son: $numerosPositivos');
}
