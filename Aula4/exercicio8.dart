import 'dart:io';

void main() {
  double litros, precoLitro, desconto, valorTotal;
  String tipoCombustivel;

  print("Digite a quantidade de litros comprada:");
  litros = double.parse(stdin.readLineSync()!);

  print("Digite o tipo de combustível (E para Etanol, D para Diesel, G para Gasolina):");
  tipoCombustivel = stdin.readLineSync()!;

  if (tipoCombustivel == 'E') {
    precoLitro = 4.50;  // Preço do litro do Etanol
    if (litros <= 20) {
      desconto = 0.03;  // Desconto de 3% para até 20 litros
    } else {
      desconto = 0.05;  // Desconto de 5% para mais de 20 litros
    }
  } else if (tipoCombustivel == 'D') {
    precoLitro = 5.00;  // Preço do litro do Diesel
    if (litros <= 20) {
      desconto = 0.02;  // Desconto de 2% para até 20 litros
    } else {
      desconto = 0.04;  // Desconto de 4% para mais de 20 litros
    }
  } else if (tipoCombustivel == 'G') {
    precoLitro = 6.00;  // Preço do litro da Gasolina
    if (litros <= 20) {
      desconto = 0.05;  // Desconto de 5% para até 20 litros
    } else {
      desconto = 0.08;  // Desconto de 8% para mais de 20 litros
    }
  } else {
    print("Tipo de combustível inválido.");
    return;
  }

  // Calculando o valor do desconto
  double valorDesconto = precoLitro * litros * desconto;

  // Calculando o valor total a ser pago
  valorTotal = (precoLitro * litros) - valorDesconto;

  // Exibindo o valor a ser pago
  print("O valor total a ser pago é: R\$ ${valorTotal.toStringAsFixed(2)}");
}
