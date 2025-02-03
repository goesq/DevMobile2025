import 'dart:io';

void main(){
  print("Digite o primeiro número");
    var num1 = stdin.readLineSync()!;
  print("Digite o segundo número");
    var num2 = stdin.readLineSync()!;
    int res = int.parse(num1)+ int.parse(num2);
  print("Resultado = $res"); 
}