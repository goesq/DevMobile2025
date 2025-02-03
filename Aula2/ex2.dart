import 'dart:io';

void main(){
  print("Digite seu nome");
// digite seu nome
// null safaty
// so ira converter o dado se a entrada nao for vazia
String nome =stdin.readLineSync()!;
print("Digite sua idade");
String idade = stdin.readLineSync()!;

print("Nome: $nome idade: $idade")
}