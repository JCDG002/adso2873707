import 'dart:io';

void main(List<String> args) {
  int numero, factorial = 1;
  print('ingrese un numero para el factorial');
  numero = int.parse(stdin.readLineSync()!);
  if (numero < 0) {
    print('el numero no puede ser negativo');
  } else {
    for (int i = 1; i <= numero; i++) {
      factorial = factorial + i;
      print('el factorial de $i! es $factorial');
    }
  }
}
