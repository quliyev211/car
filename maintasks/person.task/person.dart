/// Person super class - name, mail
/// Employee class - position
/// Manager class - team, func-addToteam()


abstract class Person {
  String name = '';
  String mail = '';
  Person({
    required this.name,required this.mail
  });
}

class Employee extends Person{
  String position = '';
  Employee({
    required this.position, required super.name, required super.mail,
  });
}
class Manager extends Person {
  var teamList = ['Mahmud', 'Polad','Mehman'];
  Manager({required super.name, required super.mail}
  );
  functionaddToteam(){
    teamList.add('pasha');
    print('$teamList');
  }

}