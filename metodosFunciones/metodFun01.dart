void main(List<String> args) {
  int a, b;
  print('hola mundo');
  saludar('Ana', 'm');
  saludar('Mario', 'h');
  a = 5;
  b = 3;
  sumar(a, b);
  sumar(10, 4);
  sumar(7, 2);
}

void saludar(String nombre, String genero) {
  if (genero == 'h') print('hola querido $nombre');
  else print('hola querida $nombre');
}

void sumar(int a, int b) {
  int c;
  c = a + b;
  print(c);
}
