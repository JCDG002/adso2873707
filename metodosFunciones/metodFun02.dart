// import 'dart:io';

double multiplicar(double num1, double num2) {
  double multiplicacion = num1 * num2;
  return multiplicacion;
}

void main(List<String> args) {
  double multi;
  multi = multiplicar(3.5, 4);
  print(multi);
  List<String> frutas = ['mango', 'fresa', 'uva', 'piña'];
  List<String> animales = ['perro', 'gato', 'loro', 'cabra'];
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  imprimirLista(frutas);
  imprimirLista(animales);
  imprimirLista(numeros);
}

void imprimirLista(List<dynamic> lista) {
  for (var i = 0; i < lista.length; i++) {
    print('#${i + 1}: ${lista[i]}');
  }
  print('-' * 50);
}
