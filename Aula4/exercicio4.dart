import 'dart:io';

void main(){
  double valorReal, valorConvertido;
  int opcao;

  print("Digite o valor em reais (R\$):");
  valorReal = double.parse(stdin.readLineSync()!);
  
  print("Escolha a moeda para conversão:");
  print("1 - Euro (EUR)");
  print("2 - Dólar (USD)");
  print("3 - Franco Suíço (CHF)");
  
  opcao = int.parse(stdin.readLineSync()!);

  switch(opcao) {
    case 1:
      valorConvertido = converterParaEuro(valorReal);
      print("R\$ $valorReal = € $valorConvertido");
      break;
    case 2:
      valorConvertido = converterParaDolar(valorReal);
      print("R\$ $valorReal = \$ $valorConvertido");
      break;
    case 3:
      valorConvertido = converterParaFrancoSuico(valorReal);
      print("R\$ $valorReal = CHF $valorConvertido");
      break;
    default:
      print("Opção inválida!");
  }
}

double converterParaEuro(double reais) {
  return reais / 7.00;
}

double converterParaDolar(double reais) {
  return reais / 6.56;
}

double converterParaFrancoSuico(double reais) {
  return reais / 4.35;
}
