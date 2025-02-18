import 'dart:io';

void main() {
  double num1, num2, num3, num4, res;
  var op, ch;

  do {
    print('+ - soma');
    print('- subtração');
    print('* - multiplicação');
    print('/ - divisão');

    print("Digite o 1º número:");
    num1 = double.parse(stdin.readLineSync()!);
    print("Digite o 2º número:");
    num2 = double.parse(stdin.readLineSync()!);
    print("Digite o 3º número:");
    num3 = double.parse(stdin.readLineSync()!);
    print("Digite o 4º número:");
    num4 = double.parse(stdin.readLineSync()!);

    print('Escolha a operação desejada:');
    op = stdin.readLineSync()!;

    switch (op) {
      case '+':
        res = num1 + num2 + num3 + num4;
        print("Resultado: $res");
        break;
      case '-':
        res = num1 - num2 - num3 - num4;
        print("Resultado: $res");
        break;
      case '*':
        res = num1 * num2 * num3 * num4;
        print("Resultado: $res");
        break;
      case '/':
        if (num2 != 0 && num3 != 0 && num4 != 0) {
          res = num1 / num2 / num3 / num4;
          print("Resultado: $res");
        } else {
          print("Erro: Divisão por zero não é permitida.");
        }
        break;
      default:
        print("Operação inválida.");
    }

    print("Deseja continuar? (s para sim / n para não)");
    ch = stdin.readLineSync()!;
  } while (ch != 'n');
}
