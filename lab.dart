import 'dart:io';
void main() {
  String ejem1 = "arroz";
  String ejem2 = "nada";
  String ejem3 = "Corre caballo";

  print(comprobar(ejem1)); 
  print(comprobar(ejem2)); 
  print(comprobar(ejem3)); 

  print("Escriba una frase u palabra: ");
  String? inputx = stdin.readLineSync();
  if (inputx != null) {
    print("Es Palindroma: ${comprobar(inputx)}");
  } else {
    print("Entrada No es Valida");
  }
}

bool comprobar(String cadena) {
  String cleanedString =
      cadena.toLowerCase().replaceAll(RegExp('[^a-z0-9]'), '');

  String reversedString = cleanedString.split('').reversed.join('');

  return cleanedString == reversedString;
}