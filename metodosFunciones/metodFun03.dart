// REALIZAR UNA FUNCION QUE RECIBA UNA LISTA DE DOUBLE Y UN NUMERO A BUSCAR
// RETORANAR TRUE SI LO ENCUENTRA, FALSE SI NO

// bool buscarNumero(List<double> lista, double numero) {
//     return lista.contains(numero);
// }

// // Ejemplo de uso
// void main() {
//   List<double> numeros = [1.5, 2.0, 3.7, 4.2, 5.9];
//   double numeroBuscado = 3.7;

//   if (buscarNumero(numeros, numeroBuscado)) {
//     print("El número $numeroBuscado se encuentra en la lista.");
//   } else {
//     print("El número $numeroBuscado no se encuentra en la lista.");
//   }
// }

bool buscarNumero(List<double> lista, double numero) {
  // for (var num in lista) {
  //     if (num == numero) {
  //         return true;
  //     }
  // }
  // return false;
  for (var i = 0; i < lista.length; i++) {
    if (numero == lista[i]) return true;
  }
  return false;
}

// Ejemplo de uso
void main() {
  List<double> numeros = [1.5, 2.0, 3.7, 4.2, 5.9];
  double numeroBuscado = 3.7;

  if (buscarNumero(numeros, numeroBuscado)) {
    print("El número $numeroBuscado se encuentra en la lista.");
  } else {
    print("El número $numeroBuscado no se encuentra en la lista.");
  }
  
}
