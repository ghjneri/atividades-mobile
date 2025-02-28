import 'dart:io';

void main() {
  double saldoConta = 0.0;
  
  void depositar() {
    print('Informe o valor a ser depositado: ');
    var valor = double.parse(stdin.readLineSync()!);
    saldoConta += valor;
    print('O saldo atual da conta é: ' + '$saldoConta');
  };
  
  void operarConta() {
  print('Informe a operação a ser efetuada (deposito, retirada, transferencia, pagamento): ');
  var operacao = stdin.readLineSync();
  if(operacao == 'deposito') {
    depositar();
  } else {
    print('A operação não está disponível no momento. Tente novamente mais tarde.');
    operarConta();
  };
  };
  
  operarConta();
}