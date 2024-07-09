// [5:38 PM, 6/29/2024] js: parce listo
import 'dart:io';
import 'dart:math';

class ConsoleColors {
  static String cyan(String message) => '\u001b[36m$message\u001b[0m';
  static String yellow(String message) => '\u001b[33m$message\u001b[0m';
  static String green(String message) => '\u001b[32m$message\u001b[0m';
  static String red(String message) => '\u001b[31m$message\u001b[0m';
  static String blue(String message) => '\u001b[34m$message\u001b[0m';
  static String magenta(String message) => '\u001b[35m$message\u001b[0m';

  static String bgCyan(String message) => '\u001b[46m$message\u001b[0m';
  static String bgYellow(String message) => '\u001b[43m$message\u001b[0m';
  static String bgGreen(String message) => '\u001b[42m$message\u001b[0m';
  static String bgRed(String message) => '\u001b[41m$message\u001b[0m';
  static String bgBlue(String message) => '\u001b[44m$message\u001b[0m';
  static String bgMagenta(String message) => '\u001b[45m$message\u001b[0m';

  static String bold(String message) => '\u001b[1m$message\u001b[0m';
  static String underline(String message) => '\u001b[4m$message\u001b[0m';
  static String reversed(String message) => '\u001b[7m$message\u001b[0m';
}

void main() {
  List<String> conferencias = [];
  List<int> dificultades = [];
  List<String> participantes = [];
  List<List<String>> asignacion = [];

  while (true) {
    print('\n' + ConsoleColors.cyan('--- Menú Principal ---'));
    print(ConsoleColors.blue('1. Conferencias'));
    print(ConsoleColors.blue('2. Participantes'));
    print(ConsoleColors.red('3. Salir'));
    stdout.write(ConsoleColors.green('Seleccione una opción: '));
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        gestionarConferencias(conferencias, dificultades, asignacion);
        break;
      case '2':
        gestionarParticipantes(participantes, conferencias, dificultades, asignacion);
        break;
      case '3':
        print(ConsoleColors.red('Saliendo del programa...'));
        return;
      default:
        print(ConsoleColors.red('Valor no válido. Ingrese el número de nuevo.'));
    }
  }
}

void gestionarConferencias(List<String> conferencias, List<int> dificultades, List<List<String>> asignacion) {
  while (true) {
    print('\n' + ConsoleColors.cyan('--- Menú Conferencias ---'));
    print(ConsoleColors.yellow('1. Crear múltiples conferencias'));
    print(ConsoleColors.yellow('2. Añadir conferencia'));
    print(ConsoleColors.yellow('3. Editar conferencia'));
    print(ConsoleColors.yellow('4. Ver conferencias'));
    print(ConsoleColors.red('5. Volver al menú principal'));
    stdout.write(ConsoleColors.green('Seleccione una opción: '));
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        stdout.write(ConsoleColors.green('¿Cuántas conferencias deseas crear? '));
        int numConferencias = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < numConferencias; i++) {
          stdout.write(ConsoleColors.green('Ingresa el nombre de la conferencia ${i + 1}: '));
          String conferencia = stdin.readLineSync()!;
          conferencias.add(conferencia);

          int dificultad;
          do {
            stdout.write(ConsoleColors.green('Ingresa la dificultad para la conferencia "$conferencia" (1: fácil, 2: intermedia, 3: difícil): '));
            dificultad = int.parse(stdin.readLineSync()!);
            if (dificultad < 1 || dificultad > 3) {
              print(ConsoleColors.red('Dificultad fuera de rango. Debe ser un número entre 1 y 3.'));
            }
          } while (dificultad < 1 || dificultad > 3);

          dificultades.add(dificultad);
          asignacion.add([]);
        }
        break;
      case '2':
        stdout.write(ConsoleColors.green('Ingresa el nombre de la conferencia: '));
        String conferencia = stdin.readLineSync()!;
        conferencias.add(conferencia);

        int dificultad;
        do {
          stdout.write(ConsoleColors.green('Ingresa la dificultad para la conferencia "$conferencia" (1: fácil, 2: intermedia, 3: difícil): '));
          dificultad = int.parse(stdin.readLineSync()!);
          if (dificultad < 1 || dificultad > 3) {
            print(ConsoleColors.red('Dificultad fuera de rango. Debe ser un número entre 1 y 3.'));
          }
        } while (dificultad < 1 || dificultad > 3);

        dificultades.add(dificultad);
        asignacion.add([]);
        break;
      case '3':
        if (conferencias.isEmpty) {
          print(ConsoleColors.red('No hay conferencias para editar.'));
          break;
        }
        print(ConsoleColors.yellow('Conferencias disponibles:'));
        for (int i = 0; i < conferencias.length; i++) {
          print('${i + 1}. ${conferencias[i]}');
        }
        stdout.write(ConsoleColors.green('Seleccione el número de la conferencia que desea editar: '));
        int indice = int.parse(stdin.readLineSync()!) - 1;

        if (indice < 0 || indice >= conferencias.length) {
          print(ConsoleColors.red('Número de conferencia no válido.'));
          break;
        }

        String conferenciaSeleccionada = conferencias[indice];

        print('\n' + ConsoleColors.cyan('--- Editar conferencia: $conferenciaSeleccionada ---'));
        print(ConsoleColors.yellow('1. Cambiar nombre'));
        print(ConsoleColors.yellow('2. Cambiar dificultad'));
        stdout.write(ConsoleColors.green('Seleccione una opción: '));
        String opcionEditar = stdin.readLineSync()!;

        switch (opcionEditar) {
          case '1':
            stdout.write(ConsoleColors.green('Ingresa el nuevo nombre: '));
            String nuevoNombre = stdin.readLineSync()!;
            conferencias[indice] = nuevoNombre;
            break;
          case '2':
            int nuevaDificultad;
            do {
              stdout.write(ConsoleColors.green('Ingresa la nueva dificultad para la conferencia "$conferenciaSeleccionada" (1: fácil, 2: intermedia, 3: difícil): '));
              nuevaDificultad = int.parse(stdin.readLineSync()!);
              if (nuevaDificultad < 1 || nuevaDificultad > 3) {
                print(ConsoleColors.red('Dificultad fuera de rango. Debe ser un número entre 1 y 3.'));
              }
            } while (nuevaDificultad < 1 || nuevaDificultad > 3);
            dificultades[indice] = nuevaDificultad;
            break;
          default:
            print(ConsoleColors.red('Opción no válida.'));
        }
        break;
      case '4':
        if (conferencias.isEmpty) {
          print(ConsoleColors.red('No hay conferencias disponibles.'));
        } else {
          print(ConsoleColors.yellow('Conferencias:'));
          for (int i = 0; i < conferencias.length; i++) {
            print('${conferencias[i]} (Dificultad: ${dificultades[i]})');
          }
        }
        break;
      case '5':
        return;
      default:
        print(ConsoleColors.red('Valor no válido. Ingrese el número de nuevo.'));
    }
  }
}

void gestionarParticipantes(List<String> participantes, List<String> conferencias, List<int> dificultades, List<List<String>> asignacion) {
  while (true) {
    print('\n' + ConsoleColors.cyan('--- Menú Participantes ---'));
    print(ConsoleColors.yellow('1. Crear múltiples participantes'));
    print(ConsoleColors.yellow('2. Añadir participante'));
    print(ConsoleColors.yellow('3. Editar participante'));
    print(ConsoleColors.yellow('4. Ver participantes'));
    print(ConsoleColors.yellow('5. Asignar participantes a conferencias'));
    print(ConsoleColors.red('6. Volver al menú principal'));
    stdout.write(ConsoleColors.green('Seleccione una opción: '));
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        stdout.write(ConsoleColors.green('¿Cuántos participantes deseas crear? '));
        int numParticipantes = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < numParticipantes; i++) {
          stdout.write(ConsoleColors.green('Ingresa el nombre del participante ${i + 1}: '));
          String participante = stdin.readLineSync()!;
          participantes.add(participante);
        }
        break;
      case '2':
        stdout.write(ConsoleColors.green('Ingresa el nombre del participante: '));
        String participante = stdin.readLineSync()!;
        participantes.add(participante);
        break;
      case '3':
        if (participantes.isEmpty) {
          print(ConsoleColors.red('No hay participantes para editar.'));
          break;
        }
        print(ConsoleColors.yellow('Participantes disponibles:'));
        for (int i = 0; i < participantes.length; i++) {
          print('${i + 1}. ${participantes[i]}');
        }
        stdout.write(ConsoleColors.green('Seleccione el número del participante que desea editar: '));
        int indice = int.parse(stdin.readLineSync()!) - 1;

        if (indice < 0 || indice >= participantes.length) {
          print(ConsoleColors.red('Número de participante no válido.'));
          break;
        }

        stdout.write(ConsoleColors.green('Ingresa el nuevo nombre: '));
        String nuevoNombre = stdin.readLineSync()!;
        participantes[indice] = nuevoNombre;
        break;
      case '4':
        if (participantes.isEmpty) {
          print(ConsoleColors.red('No hay participantes disponibles.'));
        } else {
          print(ConsoleColors.yellow('Participantes:'));
          for (String participante in participantes) {
            print(participante);
          }
        }
        break;
      case '5':
        if (conferencias.length > participantes.length) {
          print(ConsoleColors.red('No puede haber más conferencias que participantes.'));
        } else {
          asignarParticipantes(conferencias, dificultades, participantes, asignacion);
        }
        break;
      case '6':
        return;
      default:
        print(ConsoleColors.red('Valor no válido. Ingrese el número de nuevo.'));
    }
  }
}

void asignarParticipantes(List<String> conferencias, List<int> dificultades, List<String> participantes, List<List<String>> asignacion) {
  List<int> participantesPorConferencia = List.filled(conferencias.length, 0);
  List<int> indicesOrdenados = List.generate(conferencias.length, (index) => index);

  // Ordenar las conferencias por dificultad (de mayor a menor)
  indicesOrdenados.sort((a, b) => dificultades[b].compareTo(dificultades[a]));

  int participantesAsignados = 0;

  // Asignar participantes según la dificultad
  for (int indice in indicesOrdenados) {
    int dificultad = dificultades[indice];
    int numParticipantes = (dificultad * participantes.length) ~/ 6;
    participantesPorConferencia[indice] = numParticipantes;
    participantesAsignados += numParticipantes;
  }

  // Ajustar la distribución para asegurar que todos los participantes sean asignados
  int sumaAsignados = participantesPorConferencia.reduce((a, b) => a + b);
  int diferencia = participantes.length - sumaAsignados;

  for (int i = 0; i < diferencia; i++) {
    participantesPorConferencia[indicesOrdenados[i % indicesOrdenados.length]]++;
  }

  // Asignar los participantes
  Random random = Random();
  participantes.shuffle(random);

  int indiceParticipante = 0;
  for (int i = 0; i < conferencias.length; i++) {
    asignacion[i].clear();
    int numParticipantes = participantesPorConferencia[i];
    
    for (int j = 0; j < numParticipantes; j++) {
      if (indiceParticipante >= participantes.length) break;
      asignacion[i].add(participantes[indiceParticipante]);
      indiceParticipante++;
    }
  }

  // Imprimir la asignación de participantes a conferencias
  print(ConsoleColors.magenta('Asignación de participantes a conferencias:'));
  for (int i = 0; i < conferencias.length; i++) {
    print(ConsoleColors.blue('Conferencia: ${conferencias[i]}, Dificultad: ${dificultades[i]}, Participantes: ${asignacion[i]}'));
  }
}