class Produto {
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  Produto(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  void ligar() {
    print("O produto $nome está ligado.");
  }

  void desligar() {
    print("O produto $nome está desligado.");
  }
}

class Fritadeira extends Produto {
  Fritadeira(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  void ajusteTemperatura(int setpoint) {
    print("A fritadeira $nome foi ajustada para $setpoint°C.");
  }
}

class Televisao extends Produto {
  Televisao(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  void ajusteTemperatura(int setpoint) {
    print("A televisão $nome não possui ajuste de temperatura, mas foi ajustada para $setpoint de brilho.");
  }
}

class ArCondicionado extends Produto {
  ArCondicionado(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  void ajusteTemperatura(int setpoint) {
    print("O ar-condicionado $nome foi ajustado para $setpoint°C.");
  }
}

void main() {
  Fritadeira fritadeira = Fritadeira("Fritadeira Elétrica", 2, 250.0, "Sem fio", 1500.0);
  Televisao televisao = Televisao("TV LED", 1, 1200.0, "HDMI", 200.0);
  ArCondicionado arCondicionado = ArCondicionado("Ar Condicionado Split", 3, 1800.0, "Wi-Fi", 1500.0);

  fritadeira.ligar();
  fritadeira.ajusteTemperatura(180);
  fritadeira.desligar();

  televisao.ligar();
  televisao.ajusteTemperatura(50);
  televisao.desligar();

  arCondicionado.ligar();
  arCondicionado.ajusteTemperatura(22);
  arCondicionado.desligar();
}
