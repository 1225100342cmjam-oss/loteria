class VerificadorPatrones {
  static bool hayLinea(List<List<bool>> marcadas) {
    for (final fila in marcadas) {
      if (fila.every((m) => m)) return true;
    }
    return false;
  }
   static bool hayColumna(List<List<bool>> marcadas) {
    for (var c = 0; c < marcadas[0].length; c++) {
      var completa = true;
      for (var f = 0; f < marcadas.length; f++) {
        if (!marcadas[f][c]) {
          completa = false;
          break;
        }
      }
      if (completa) return true;
    }
    return false;
  }

}
