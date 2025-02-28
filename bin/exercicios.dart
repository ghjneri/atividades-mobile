import 'dart:io';

void main() {
  List<String> tiposArquivo = <String>["pdf","jpg","png","docx"];
  
  void verificarArquivo() {
  print('Informe o tipo do arquivo (pdf, jpg, png, docx): ');
  var tipoArquivo = stdin.readLineSync();
  
  if(tiposArquivo.contains(tipoArquivo)) {
    print('Arquivo permitido: ' + '$tipoArquivo');
  } else {
    print('Tipo de arquivo não suportado, tente novamente');
    verificarArquivo();
  }
  }

verificarArquivo();
}

