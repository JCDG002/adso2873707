// La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por
// día, la compañía necesita obtener un reporte al final del día del total de la producción por artículo y
// el total de la producción por turno. Desarrollar un programa que pida al usuario el nombre de cada
// artículo y la producción que se hizo en cada uno de los tres turnos del día y genere un reporte al final
// del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por
// turno y el artículo con mayor producción.
// Articulo \ Turno   Turno 1   Turno 2   Turno 3
// Articulo 1         30        40        20
// Articulo 2         10        12        15
// Articulo 3         8         10        7
// Articulo 4         25        30        30
// Articulo 5         12        20        10
//

import 'dart:io';

void main(List<String> args) {
  List<List<int>> matriz = [
    [30, 40, 20],
    [10, 12, 15],
    [8, 10, 7],
    [25, 30, 30],
    [12, 20, 10],
  ];
  List<int> turnos = [0, 0, 0];
  List<int> articulos = [0, 0, 0, 0, 0];
  List<String> nombres = [
    'Articulo 1',
    'Articulo 2',
    'Articulo 3',
    'Articulo 4',
    'Articulo 5'
  ];
  for (int i = 0; i < matriz.length; i++) {
    print('nombre para el articulo: ${nombres[i]}');
    String nombre = stdin.readLineSync()!;
    List<int> articulo = [];
    for (int j = 0; j < matriz[i].length; j++) {
      matriz.add(articulo);
    }
  }
}
