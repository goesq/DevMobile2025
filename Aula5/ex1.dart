class Animal {
  String nome;
  int idade;
  String cor;
  String raca;

  Animal(this.nome, this.idade, this.cor, this.raca);

  void exibirInformacoes() {
    print('Nome: $nome');
    print('Idade: $idade anos');
    print('Cor: $cor');
    print('Raça: $raca');
  }
}

void main() {
  Animal cachorro = Animal('Rex', 5, 'Marron', 'Labrador');
  cachorro.exibirInformacoes();
}
