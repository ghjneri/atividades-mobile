import 'dart:io';

void main() {
  List<String> categorias = <String>["eletronicos","alimentos","vestuario","livros"];
  print('Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):');
  var categoria = stdin.readLineSync();
  if(categorias.contains(categoria)) {
    print('Categoria válida: ' + '$categoria');
  } else {
    print('Categoria inválida.');
  }
}