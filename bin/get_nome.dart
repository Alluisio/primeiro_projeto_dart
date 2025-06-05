import 'dart:io';

void nomeIdate() {
  print("Olá, qual o seu nome?");
  var name = stdin.readLineSync();
  print("Obrigado $name. E a sua idade?");
  var age = stdin.readLineSync();
  print('Wow, $name, você tem $age anos !!!');
}
