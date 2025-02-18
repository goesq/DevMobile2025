import 'dart:io';

void main(){
  int idade1, idade2;
  
  print("Digite a idade da primeira pessoa:");
  idade1 = int.parse(stdin.readLineSync()!);
  
  print("Digite a idade da segunda pessoa:");
  idade2 = int.parse(stdin.readLineSync()!);
  
  if (idade1 > idade2) {
    print("A primeira pessoa é a mais velha, com $idade1 anos.");
  } else if (idade2 > idade1) {
    print("A segunda pessoa é a mais velha, com $idade2 anos.");
  } else {
    print("Ambas as pessoas têm a mesma idade.");
  }
}
