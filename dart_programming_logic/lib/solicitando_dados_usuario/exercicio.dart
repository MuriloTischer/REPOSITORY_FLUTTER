/*
Descrição da Atividade
Crie um programa que pergunte a um aluno ou aluna o seu nome, a idade e altura.
Depois de obter esses valores, apresente na tela os dados solicitados.
 */

void main() {
   String nomeEstudante;
   int idade;
   double altura;

   print('Olá, Seja bem vindo... Informe seu nome.');
   nomeEstudante = stdin.readLineSync();
   print('Informe a sua idade.');
   idade = stdin.readLineSync();
   print('Informe a sua altura');
   altura = stdin.readLineSync();

   print('O aluno $nomeEstudante, de $idade anos tem $altura de altura');




}