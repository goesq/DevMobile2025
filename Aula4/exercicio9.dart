import 'dart:io';

void main() {
  double kwh, precoKwh, valorTotal;
  String tipoInstalacao;

  print("Digite a quantidade de kWh consumida:");
  kwh = double.parse(stdin.readLineSync()!);

  print("Digite o tipo de instalação (R para Residencial, C para Comercial, I para Industrial):");
  tipoInstalacao = stdin.readLineSync()!.toUpperCase(); // Converte para maiúscula

  if (tipoInstalacao == 'R') {
    precoKwh = (kwh <= 500) ? 0.50 : 0.70;
  } else if (tipoInstalacao == 'C') {
    precoKwh = (kwh <= 1000) ? 0.65 : 0.60;
  } else if (tipoInstalacao == 'I') {
    precoKwh = (kwh <= 5000) ? 0.55 : 0.50;
  } else {
    print("Tipo de instalação inválido.");
    return;
  }

  // Calculando o valor total a ser pago
  valorTotal = kwh * precoKwh;

  // Exibindo o valor a ser pago
  print("O valor total a ser pago é: R\$ ${valorTotal.toStringAsFixed(2)}");
}
