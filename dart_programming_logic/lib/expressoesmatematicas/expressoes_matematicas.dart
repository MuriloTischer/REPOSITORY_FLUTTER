//expressões matematicas é a forma de adicionar numeros e operadores para fazer um calculo especifico para um objetivo
//expressoes matematicas só podem acontecer em numericos (int, double)
/*
 Adicao (+)
 Subtracao (-)
 Multiplicacao (*)
 Divisão(/)
 Resto da Divisão (%)
 Precedencia ()
  */

void main() {
  int anoAtual = 2024;
  int anoNascimento = 1986;
  int idade = anoAtual - anoNascimento;
  print(idade);

  int numero1 = 20;
  int numero2 = 5;

  int adicao = numero1 + numero2;
  int subtracao = numero1 - numero2;
  int multiplicacao = numero1 * numero2;
  double divisao = numero1 / numero2;
  // no dart mesmo que a divisao seja feita por numeros inteiros, a resposta sempre será um double
  // entao a variavel para uma divisao nao deve ser um tipo Inteiro (INT)

  int resto = numero1 % numero2;
  double precedencia = numero1 / (numero2 + numero1);
  //na precedencia deve ser isolado a expressao para ele calcular primeiro um numero para depois fazer os outros

  print(adicao);
  print(subtracao);
  print(multiplicacao);
  print(divisao);
  print(resto);
  print(precedencia);
}