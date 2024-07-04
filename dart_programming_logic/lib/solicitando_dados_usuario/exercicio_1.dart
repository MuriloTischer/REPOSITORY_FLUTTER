/*
Descrição da Atividade
Crie um programa para solicitar ao usuário o seu nome e uma frase preferida. Você deve mostrar o nome e a frase no console da seguinte maneira:
A frase preferida da(o) X é Y. (X é o valor do nome do usuário e Y é a frase digitada pelo usuário).
 */

void main(){
  String nomeUsuario;
  String frasePreferida;

  print('Por favor, informe seu nome.')
  nomeUsuario = stdin.readLineSync();

  print('Qual sua frase preferida?.')
  frasePreferida = stdin.readLineSync();

  print('A frase preferida da(o) $nomeUsuario é $frasePreferida');


}