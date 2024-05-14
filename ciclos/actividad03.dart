// Actividad 03
// Realizar un algoritmo que permita solicitar una clave numérica al usuario y no permitir continuar
// hasta que no ingrese la clave válida

import 'dart:io';

int suma = 0, valor = 0;
String clave = '';

void main(List<String> args) {
  do {
    print('ingrese la clave');
    clave = (stdin.readLineSync()!);
    if (clave != '123') {
      print('clave incorrecta');
    } else {
      print('BIENVENIDO');
    }
  } while (clave != '123');
}
