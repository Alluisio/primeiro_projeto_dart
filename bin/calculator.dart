import 'dart:io';

void calculator() {
  var firstNumber = stdin.readLineSync();
  var secondNumber = stdin.readLineSync();
  print(firstNumber! + secondNumber!);
}
