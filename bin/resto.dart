import 'package:resto/resto.dart' as resto;
import 'dart:io';
import '../models/menu.dart';

void main(List<String> arguments) {
  Menu nasGor = Menu("nasi goreng", 15000);
  Menu martabak = Menu("martabak", 20000);
  Menu esTeler = Menu("es teler", 10000);

  List<Menu> listMenu = [nasGor, martabak, esTeler];
  for (int i = 0; i < listMenu.length; i++) {
    print(listMenu[i].namaMenu + listMenu[i].hargaMenu.toString());
  }
}
