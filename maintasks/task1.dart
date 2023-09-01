import 'dart:math';
import 'dart:io';
void main() {
  
  int userScore = 0;
  int compScore = 0;
  bool davam = true;

  while (davam == true) {
    print('Oyuna başlamaq üçün seçim etməlisiniz. Buna görə təqdim edilənlərdən birini seçin: daş, qayçı, kağız');
    String userChoice = stdin.readLineSync()!;

    List<String> choices = ['daş', 'qayçı', 'kağız'];
    Random random = Random();
    String compChoice = choices[random.nextInt(choices.length)];
    print('User: $userChoice, Komputer: $compChoice');

    if (userChoice == compChoice) {
      print('Bərabərə qaldınız!');
    } else if (
        (userChoice == 'daş' && compChoice == 'qayçı') ||
        (userChoice == 'qayçı' && compChoice == 'kağız') ||
        (userChoice == 'kağız' && compChoice == 'daş')) {
      print('Istifadəçi qazandı!');
      userScore++;
    } else {
      print('Komputer qazandı!');
      compScore++;
    }

    print('Hesab - İstifadəçi: $userScore, Komputer: $compScore');
    print('Davam etmək istəyirsiniz mi? (bəli/xeyr)');
    String answer = stdin.readLineSync()!;
    if (answer == 'bəli') {
      davam = true;
    } else {
      davam = false;
    }
  }
}