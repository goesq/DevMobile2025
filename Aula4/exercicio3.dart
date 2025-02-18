import 'dart:io';

void main(){
  double salarioBruto, salarioLiquido;
  
  print("Digite o seu salário bruto:");
  salarioBruto = double.parse(stdin.readLineSync()!);
  
  salarioLiquido = calcularSalarioLiquido(salarioBruto);
  
  print("O seu salário líquido é: $salarioLiquido");
}

double calcularSalarioLiquido(double salarioBruto) {
  double descontoImpostos = salarioBruto * 0.10;
  double bonificacao = salarioBruto * 0.20;
  return salarioBruto - descontoImpostos + bonificacao;
}
