class Maquina {
  String nome;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;

  Maquina(this.nome, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  void ligar() {
    print("A máquina $nome está ligada.");
  }

  void desligar() {
    print("A máquina $nome está desligada.");
  }

  void ajustarVelocidade(int novaRotacao) {
    rotacoesPorMinuto = novaRotacao;
    print("A velocidade da máquina $nome foi ajustada para $rotacoesPorMinuto rotações por minuto.");
  }
}

class Furadeira extends Maquina {
  Furadeira(String nome, int quantidadeEixos, int rotacoesPorMinuto, double consumoEnergia)
      : super(nome, quantidadeEixos, rotacoesPorMinuto, consumoEnergia);

  void furar() {
    print("A furadeira $nome está furando.");
  }
}

void main() {
  Furadeira furadeira = Furadeira("Furadeira Elétrica", 2, 1500, 800.0);
  
  furadeira.ligar();
  furadeira.ajustarVelocidade(2000);
  furadeira.furar();
  furadeira.desligar();
}
