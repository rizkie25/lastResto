import 'package:resto/resto.dart';
import 'dart:io';
import '../models/menu.dart';

void main(List<String> arguments) {
  print('Welcome to RESTO !');

  String username;
  stdout.writeln('Username :');
  username = stdin.readLineSync()!;

  String password;
  stdout.writeln('Password :');
  password = stdin.readLineSync()!;

  print(login(username, password));
  print('Choose what you want !');

  Menu nasGor = Menu("Nasi goreng :", 15000);
  Menu martabak = Menu("Martabak    :", 20000);
  Menu esTeler = Menu("Es teler    :", 8000);
  Menu jusJeruk = Menu("Jus jeruk   :", 5000);
  Menu bakso = Menu("Bakso       :", 15000);

  List<Menu> listMenu = [nasGor, martabak, esTeler, jusJeruk, bakso];
  for (int i = 0; i < listMenu.length; i++) {
    print(listMenu[i].namaMenu + listMenu[i].hargaMenu.toString());
  }
}
