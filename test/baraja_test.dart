import 'package:flutter_test/flutter_test.dart';
import 'package:loteria/logica/baraja.dart';

void main() {
  test('crearBarajaCompleta regresa exactamente 16 cartas', () {
    final baraja = Baraja.crearBarajaCompleta();
    expect(baraja.cartasRestantes.length, 16);
  });

  test('crearBarajaCompleta no repite ninguna carta', () {
    final baraja = Baraja.crearBarajaCompleta();
    final idsUnicos = baraja.cartasRestantes.map((c) => c.id).toSet();
    expect(idsUnicos.length, 16);
  });
}

