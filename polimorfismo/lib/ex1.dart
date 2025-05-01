abstract class MaquinaIndustrial {
  void ligar();
  void desligar();
}

class PrensaHidraulica extends MaquinaIndustrial {
  @override void ligar() => print("Prensa ligada");
  @override void desligar() => print("Prensa desligada");
}

class Esteira extends MaquinaIndustrial {
  @override void ligar() => print("Esteira ligada");
  @override void desligar() => print("Esteira desligada");
}

void main() {
  MaquinaIndustrial maquina = PrensaHidraulica();
  maquina.ligar();
  maquina.desligar();

  maquina = Esteira();
  maquina.ligar();
  maquina.desligar();
}