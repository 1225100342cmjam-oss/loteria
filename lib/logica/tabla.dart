import '../modelos/carta.dart';

class Tabla {
  final List<List<Carta>> filas;
  final List<List<bool>> marcadas;

  // Constructor con control explícito del acomodo (útil para pruebas)
  Tabla.desdeFilas(this.filas)
      : marcadas = List.generate(4, (_) => List.generate(4, (_) => false));

  // Constructor para el juego real: acomodo aleatorio
  static Tabla generar(List<Carta> cartas) {
    final copia = List<Carta>.from(cartas)..shuffle();
    final filas = <List<Carta>>[];
    for (var f = 0; f < 4; f++) {
      filas.add(copia.sublist(f * 4, f * 4 + 4));
    }
    return Tabla.desdeFilas(filas);
  }

  // Marca la celda que contiene la carta (si existe en la tabla)
  void marcar(Carta carta) {
    for (var f = 0; f < filas.length; f++) {
      for (var c = 0; c < filas[f].length; c++) {
        if (filas[f][c] == carta) {
          marcadas[f][c] = true;
          return;
        }
      }
    }
  }
}