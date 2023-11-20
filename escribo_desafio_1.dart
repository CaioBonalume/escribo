import 'dart:io';

void main() {
  print('Digite um número inteiro positivo:');
  int n = int.parse(stdin.readLineSync()!);
  int soma = 0;
  if (n > 0) {
    for (int i = 1; i < n; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        soma += i;
      }
    }
    print('Valor digitado: $n \nSoma de divisiveis por 3 e 5: $soma');
  } else if (n != int) {
    print('Por favor Digite apenas números inteiros');
  }
}
