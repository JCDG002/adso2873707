// Actividad 04
// Realizar un algoritmo que permita mostrar al usuario un listado de opciones tipo menú, para
// realizar una transacción en un banco (Determinar las que crea necesarias). La última opción
// será la de salir y allí se terminará el ciclo, de lo contrario mostrará las otras opciones mientras
// el usuario quiera. No se deberá implementar las acciones como tal sino solo prints que
// indiquen las acciones realizadas

import 'dart:io';


String clave = '';

void main(List<String> args) {
  do {
    print('''ingrese las siguientes opciones:
    1 para retiros
    2 para consignaciones
    3 para salir''');
    clave = (stdin.readLineSync()!);
    if (clave == '1') {
      print('retiro aprobado');
    } else if(clave == '2'){
      print('consignacion aprobada');
    }
  } while (clave != '3');
}
