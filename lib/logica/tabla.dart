import '../modelos/carta.dart';

class Tabla {
  final List<List<Carta>> filas;
  final List<List<bool>> marcadas;

  Tabla._(this.filas, this.marcadas);

  static Tabla generar(List<Carta> cartas) {
    final copia = List<Carta>.from(cartas)..shuffle();
    final filas = <List<Carta>>[];
    for (var f = 0; f < 4; f++) {
      filas.add(copia.sublist(f * 4, f * 4 + 4));
    }
    final marcadas = List.generate(4, (_) => List.generate(4, (_) => false));
    return Tabla._(filas, marcadas);
  }
}
