import 'dart:io';

void main() {
  bool again = true;
  while (again) {
    print('Digite um número inteiro positivo:');
    String str = stdin.readLineSync()!;

    if (int.tryParse(str) != null) {
      int n = int.parse(str);
      int soma = 0;
      for (int i = 1; i < n; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
          soma += i;
        }
      }
      print('Valor digitado: $n \nSoma de divisiveis por 3 e 5: $soma');
    } else {
      print('Digite apenas números e que sejam inteiros');
    }
    print('Deseja reiniciar? (S/N)');
    String resp = stdin.readLineSync()!;
    if (resp.toUpperCase() == 'N') {
      again = false;
    }
  }
}
