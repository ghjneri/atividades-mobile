import 'dart:io';

void main() {
  List<String> metodosPagamento = <String>["cartao","boleto","paypal","pix"];
  
  void validarMetodoPagamento() {
  print('Digite a categoria do produto (cartão, boleto, paypal ou pix): ');
  var metodoPagamento = stdin.readLineSync();
  if(metodosPagamento.contains(metodoPagamento)) {
    print('Método de pagamento validado');
  } else {
    print('o método de pagamento não é valido, tente novamente.');
    validarMetodoPagamento();
  };
  };
  validarMetodoPagamento();
}