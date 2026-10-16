class VerificadorPatrones {
  static bool hayLinea(List<List<bool>> marcadas) {
    for (final fila in marcadas) {
      if (fila.every((m) => m)) return true;
    }
    return false;
  }
}
