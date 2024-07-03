import 'dart:io';
//Escrever um programa que solicite ao usuário dois números e exiba a soma, subtração, multiplicação e divisão entre eles.
void main() {
  int inputNum1 = 23;
  int inputNum2 = 10;

  print('Informe dois valores para obter calculos matematicos');
  final resultSoma = somaValores(inputNum1, inputNum2);
  print('A soma de dois inteiros é $resultSoma');

  final resultSubtracao = subtraiValores(inputNum1, inputNum2);
  print('A subtracao de dois inteiros é $resultSubtracao');

  final resultMultiplicacao = multiplicaValores(inputNum1, inputNum2);
  print('A multiplicacao de dois inteiros é $resultMultiplicacao');

  final resultDivisao = divideValores(inputNum1, inputNum2);
  print('A divisao de dois inteiros é $resultDivisao');
}

int somaValores(int num1, int num2) {
  print('Exucutando a soma de dois inteiros: ($num1, $num2)');
  int soma = num1 + num2;
  return soma;
}

int subtraiValores(int num1, int num2) {
  print('Exucutando a subtraçao de dois inteiros: ($num1, $num2)');
  int subtrai = num1 - num2;
  return subtrai;
}

int multiplicaValores(int num1, int num2) {
  print('Exucutando a multiplicaçao de dois inteiros: ($num1, $num2)');
  int multiplica = num1 * num2;
  return multiplica;
}

int divideValores(int num1, int num2) {
  print('Exucutando a divisao de dois inteiros: ($num1, $num2)');
  int dividir = num1 ~/ num2;
  return dividir;
}