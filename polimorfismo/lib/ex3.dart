class Pessoa {
  String _nome = '';
  int _idade = 0;

  String get nome => _nome;

  set nome(String novoNome) {
    if (novoNome.isEmpty) throw 'Nome não pode ser vazio';
    if (novoNome.length < 3) throw 'Nome muito curto';
    _nome = novoNome;
  }

  int get idade => _idade;

  set idade(int novaIdade) {
    if (novaIdade < 0) throw 'Idade não pode ser negativa';
    if (novaIdade > 120) throw 'Idade inválida';
    _idade = novaIdade;
  }

  void mostrarInfo() {
    print('Nome: $_nome, Idade: $_idade anos');
  }
}

void main() {
  final pessoa = Pessoa()
    ..nome = 'Carlos'
    ..idade = 25;
  
  pessoa.mostrarInfo();
  
  try {
    pessoa.idade = -5;
  } catch (e) {
    print(e);
  }
}