 import 'dart:io';

void main(List<String> args) {
  String username = '';
  String comehello = 'Welcome to our car shop';
  String mercedesAbout = 'Mercedes-Maybach S 580 4MATIC, 4.0 L, 2022';
  String bmwAbout = 'Bmw F30 3.0 L,2019';
  String lexusAbout = 'Lexus LX 570 5.7 L,2013';
  
  int mercedesCost = 310000;
  int bwmCost = 45000;
  int lexusCost = 57500;
  double totalCost = 0;
  print('Please enter your username');
  username = stdin.readLineSync()!;
  print('$username , $comehello');
  print('1-MercedesMaybach - $mercedesCost, 2-Bmw f30 - $bwmCost, 3-Lexus LX 570 - $lexusCost');
int carsMark = int.parse(stdin.readLineSync()!);
if(carsMark == 1) {
  print('Siz $mercedesCost AZN qiymətə Mercedes-Maybach S 580 4MATIC, 4.0 L, 2022 aldınız');
  totalCost = mercedesCost + totalCost;
} else if (carsMark == 2) {
  print('Siz $bwmCost AZN qiymətə Bmw F30 3.0 L,2019 aldınız');
  totalCost = bwmCost + totalCost;
  } else if (carsMark == 3){
    print('Siz $lexusCost AZN qiymətə Lexus LX 570 5.7 L,2013 aldınız');
    totalCost = lexusCost + totalCost;

  }

print('Sizin borcunuz bu qədərdir $totalCost');
}