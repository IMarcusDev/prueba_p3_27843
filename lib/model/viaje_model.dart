class ViajeModel {
  int numeroAlumnos = 0;
  int costoIndividual = 0;
  int costoTotal = 0;

  ViajeModel(this.numeroAlumnos);

  int getCostoIndividual() {
    return costoIndividual;
  }

  int calcularCosto() {
    if (numeroAlumnos >= 100) {
      costoIndividual = 65;
      costoTotal = 65 * numeroAlumnos;
    } else if (numeroAlumnos >= 50) {
      costoIndividual = 70;
      costoTotal = 70 * numeroAlumnos;
    } else if (numeroAlumnos >= 30) {
      costoIndividual = 95;
      costoTotal = 95 * numeroAlumnos;
    } else {
      costoTotal = 4000;
      costoIndividual = 4000 ~/ numeroAlumnos;
    }
    return costoTotal;
  }
}
