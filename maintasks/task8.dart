import 'dart:io';
void main() {
  stdout.write('Adınızı daxil edin: ');

  String ad = stdin.readLineSync()!;
  stdout.write('Yaşınızı daxil edin: ');

  int yas = int.parse(stdin.readLineSync()!);
  int yuzYas = 100 - yas;
  
  print('$ad, 100 yaşınız $yuzYas il sonra tamamlanacaq.');
}
