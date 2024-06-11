// Hacer un algoritmo que llene una matriz de 3 * 3 y determine la posición [fila, columna] del número
// mayor almacenado en la matriz. Los números son diferentes.

import 'dart:io';

void main(List<String> args) {
  List<List<int>> matriz = [];
  int NumMayor=0, posI=0, posJ=0;
  for(int i=0;i<3;i++){
    List<int> fila = [];
    for(int j=0;j<3;j++){
      print('escriba la posicion [$i][$j]:');
      int numero = int.parse(stdin.readLineSync()!);
      if(numero>NumMayor){
        NumMayor=numero;
        posI=i;
        posJ=j;
      }
      fila.add(numero);
    }
    matriz.add(fila);
  }
  print('el numero mayor esta en la posicion [$posI][$posJ] y el numero mayor es: $NumMayor');
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      stdout.write('${matriz[i][j]}  ');
    }
    print('');
  }
}
