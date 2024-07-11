import 'dart:io';

void main(List<String> args) {
  int opcion;
  do {
    print('----------------CALCULADORA----------------');
    print('''DIGITE UNA OPCION:
    1. SUMAR
    2. RESTAR
    3. MULTIPLICAR
    4. DIVIDIR
    5. SALIR''');
    opcion = int.parse(stdin.readLineSync()!);
    if (opcion != 5) {
      print('Ingrese el Primer Numero');
      double num1 = double.parse(stdin.readLineSync()!);
      print('Ingrese el Segundo Numero');
      double num2 = double.parse(stdin.readLineSync()!);
    }

    switch (opcion) {
      case 1:
        // LLAMAR A FUNCION SUMAR
        break;
      case 2:
        // LLAMAR A METODO RESTAR
        break;
      case 3:
        // LLAMAR A METODO MULTIPLICAR
        break;
      case 4:
        // LLAMAR A FUNCION DIVIDIR
        break;
      default:
        print('Opcion Incorrecta');
    }
  } while (opcion != 5);
}
