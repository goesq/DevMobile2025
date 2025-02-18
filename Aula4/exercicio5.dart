import 'dart:io';

void main(){
  double nota1, nota2, media;
  
  print("Digite a primeira nota do aluno:");
  nota1 = double.parse(stdin.readLineSync()!);
  
  print("Digite a segunda nota do aluno:");
  nota2 = double.parse(stdin.readLineSync()!);
  
  media = calcularMedia(nota1, nota2);
  
  print("A média do aluno é: $media");
  
  if (media >= 7) {
    print("Aprovado");
  } else if (media >= 4 && media < 7) {
    print("Exame");
  } else {
    print("Reprovado");
  }
}

double calcularMedia(double n1, double n2) {
  return (n1 + n2) / 2;
}
