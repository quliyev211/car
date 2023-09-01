import'dart:ffi';
import'dart:io';
void main(List<String> args) {
  stdout.writeln('Yasinizi daxil edin');
  int age = int.parse(stdin.readLineSync().toString());

  if(age.isEven) {
    print('yaşınız cüt');
   } else {
    print('yaşınız tək');
   }
}