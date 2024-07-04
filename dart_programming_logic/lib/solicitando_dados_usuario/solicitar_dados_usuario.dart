import 'dart:io';

void main() {
  print('qual sua idade? ');
  var idade = stdin.readLineSync(); // essa funçao faz com que o console fique aguardando a "digitaçao" (entrada de dados por parte do usuario.)
  print(idade);
  print('muito obrigado!');
}