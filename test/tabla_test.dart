import 'package:flutter_test/flutter_test.dart';
import 'package:loteria/logica/baraja.dart';
import 'package:loteria/logica/tabla.dart';

void main() {
  test('una tabla nueva contiene las 16 cartas, sin repetir', () {
    final cartas = Baraja.crearBarajaCompleta().cartasRestantes;
    final tabla = Tabla.generar(cartas);
    final todas = tabla.filas.expand((fila) => fila).toList();
    expect(todas.length, 16);
    expect(todas.toSet().length, 16);
  });

  test('una tabla nueva no tiene ninguna celda marcada', () {
    final cartas = Baraja.crearBarajaCompleta().cartasRestantes;
    final tabla = Tabla.generar(cartas);
    expect(tabla.marcadas.every((fila) => fila.every((m) => m == false)), true);
  });
}


