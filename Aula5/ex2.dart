class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void dormir() {
    print("O animal ${nome} está dormindo");
  }
}

class Cachorro extends Animal {
  Cachorro(nome, idade) : super(nome, idade);

  void latir() {
    print("O animal ${nome} está latindo");
  }
}

class Tigre extends Animal {
  String? cor;

  Tigre(nome, idade, this.cor) : super(nome, idade);

  void atacar() {
    print("O animal Tigre $nome atacou");
  }
}

class Passaro extends Animal {
  Passaro(nome, idade) : super(nome, idade);

  void cantar() {
    print("O animal ${nome} está cantando");
  }
}

class Peixe extends Animal {
  Peixe(nome, idade) : super(nome, idade);

  void nadar() {
    print("O animal ${nome} está nadando");
  }
}

void main() {
  Cachorro Rocky = Cachorro("Rocky", 2);
  Rocky.latir();
  Rocky.dormir();

  Tigre Memphis = Tigre("Memphis", 30, "Branco");
  Memphis.atacar();
  Memphis.dormir();

  Passaro Piu = Passaro("Piu", 1);
  Piu.cantar();
  Piu.dormir();

  Peixe Nemo = Peixe("Nemo", 3);
  Nemo.nadar();
  Nemo.dormir();
}
