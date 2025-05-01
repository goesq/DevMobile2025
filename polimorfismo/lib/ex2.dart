abstract class MaquinaIndustrial {
  void ligar();
  void desligar();
}

class Prensa extends MaquinaIndustrial {
  double pressaoToneladas;

  Prensa(this.pressaoToneladas);

  @override
  void ligar() {
    print('Prensa ligada - Pressão configurada para $pressaoToneladas toneladas');
  }

  @override
  void desligar() {
    print('Prensa desligada - Aliviando pressão de $pressaoToneladas toneladas');
  }
}

class RoboSolda extends MaquinaIndustrial {
  String tipoSolda;

  RoboSolda(this.tipoSolda);

  @override
  void ligar() {
    print('Robô solda ligado - Tipo de solda: $tipoSolda');
  }

  @override
  void desligar() {
    print('Robô solda desligado - Finalizando solda $tipoSolda');
  }
}

void main() {
  MaquinaIndustrial prensa = Prensa(50.0);
  MaquinaIndustrial robo = RoboSolda('MIG');

  prensa.ligar();
  prensa.desligar();

  robo.ligar();
  robo.desligar();
}