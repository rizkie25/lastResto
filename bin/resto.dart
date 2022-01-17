import 'dart:io';
import '../models/menu.dart';

void main(List<String> arguments) {
  print('\n Welcome to RESTO !');
  print('\n Please login first');

  int tryLogin = 0;
  bool isLogin = false;

  bool makanan = false;
  bool minuman = false;

  do {
    String username;
    stdout.writeln('Username :');
    username = stdin.readLineSync()!;

    String password;
    stdout.writeln('Password :');
    password = stdin.readLineSync()!;

    if (username == 'user' && password == 'pass') {
      isLogin = true;

      print('Login anda berhasil');

      print('\nChoose what you want !');
      bool tipe;
      stdout.writeln('Menu :\n 1.Makanan \n 2.Minuman');
      tipe = stdin.readLineSync()! == '1' ? true : false;

      if (tipe) {
        Makanan nasGor = Makanan('Nasi goreng  :', 15000);
        Makanan martabak = Makanan('Martabak     :', 20000);
        Makanan bakso = Makanan('Bakso        :', 15000);
        makanan = true;

        if (makanan) {
          print('Your food !');
        }
        List<Makanan> menuMakanan = [
          nasGor,
          martabak,
          bakso,
        ];
        for (int i = 0; i < menuMakanan.length; i++) {
          print(menuMakanan[i].namaMenu + menuMakanan[i].hargaMenu.toString());
        }
      } else {
        Minuman esTeler = Minuman('Es teler     :', 8000);
        Minuman jusJeruk = Minuman('Jus jeruk    :', 5000);
        Minuman coklat = Minuman('Coklat panas :', 10000);
        minuman = true;
        if (minuman) {
          print('Your drink !');
        }

        List<Minuman> menuMinuman = [
          esTeler,
          jusJeruk,
          coklat,
        ];
        for (int i = 0; i < menuMinuman.length; i++) {
          print(menuMinuman[i].namaMenu + menuMinuman[i].hargaMenu.toString());
        }
      }
    } else {
      tryLogin++;

      if (tryLogin == 3) {
        print('Akun anda terblokir');
      } else {
        print('Maaf, login anda gagal !');
      }
    }
  } while (isLogin == false && tryLogin <= 2);
}


// plih 1

// anda memilih nasi Goreng

// apakah anda ingin menambah makanan/minuman lagi? 1. ya 2. tidak

// if ya balik lagi ke menu
// pilih lagi

// proses penghitungan total beli kmu

// else aplikasi selesai