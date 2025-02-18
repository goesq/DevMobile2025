import 'dart:io';

void main(){
  double preco1, preco2, preco3;
  
  print("Digite o valor do primeiro modelo de carro:");
  preco1 = double.parse(stdin.readLineSync()!);
  
  print("Digite o valor do segundo modelo de carro:");
  preco2 = double.parse(stdin.readLineSync()!);
  
  print("Digite o valor do terceiro modelo de carro:");
  preco3 = double.parse(stdin.readLineSync()!);
  
  if (preco1 > preco2 && preco1 > preco3) {
    print("O primeiro modelo de carro é o mais caro, com valor de R\$ $preco1.");
  } else if (preco2 > preco1 && preco2 > preco3) {
    print("O segundo modelo de carro é o mais caro, com valor de R\$ $preco2.");
  } else if (preco3 > preco1 && preco3 > preco2) {
    print("O terceiro modelo de carro é o mais caro, com valor de R\$ $preco3.");
  }
  
  if (preco1 < preco2 && preco1 < preco3) {
    print("O primeiro modelo de carro é o mais barato, com valor de R\$ $preco1.");
  } else if (preco2 < preco1 && preco2 < preco3) {
    print("O segundo modelo de carro é o mais barato, com valor de R\$ $preco2.");
  } else if (preco3 < preco1 && preco3 < preco2) {
    print("O terceiro modelo de carro é o mais barato, com valor de R\$ $preco3.");
  }
}
