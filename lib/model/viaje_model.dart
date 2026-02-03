class ViajeModel {
  int numeroAlumnos = 0;
  int costo = 0;

  ViajeModel(this.numeroAlumnos);

  int getCostoIndividual() {
    return costo;
  }

  int calcularCosto() {
    costo = 4000;
    if (numeroAlumnos > 99) {
      costo = 65;
    }
    if (numeroAlumnos > 49) {
      costo = 70;
    }
    if (numeroAlumnos > 29) {
      costo = 95;
    }
    return costo * numeroAlumnos;
  }
}
