import 'dart:io';

void main(){
  String nome, curso;
  int idade;
  
  print("Digite seu nome:");
  nome = stdin.readLineSync()!;
  
  print("Digite seu curso:");
  curso = stdin.readLineSync()!;
  
  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);

  print("\nInformações coletadas:");
  print("Nome: $nome");
  print("Curso: $curso");
  print("Idade: $idade");
}
