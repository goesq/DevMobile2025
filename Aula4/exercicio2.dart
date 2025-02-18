import 'dart:io';

void main(){
  double base, altura, area;
  
  print("Digite a base do triângulo:");
  base = double.parse(stdin.readLineSync()!);
  
  print("Digite a altura do triângulo:");
  altura = double.parse(stdin.readLineSync()!);
  
  area = calcularAreaTriangulo(base, altura);
  
  print("A área do triângulo é: $area");
}

double calcularAreaTriangulo(double b, double h) {
  return (b * h) / 2;
}
