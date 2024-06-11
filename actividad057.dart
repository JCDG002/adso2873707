import 'dart:io';

void main(List<String> args) {
  int clientes = 15, descuento = 0, precioKgNaranjas = 2000;
  double cantKg, totalPago, ganancias;

  for (int i = 0; i < clientes; i++) {
    print('ingrese la cantidad de kg que desea comprar el cliente ${i + 1}');
    cantKg = double.parse(stdin.readLineSync()!);
    totalPago = cantKg * precioKgNaranjas;
    if (cantKg > 10) {
      totalPago *= 0.85;
    }
  }
}
