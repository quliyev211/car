class Human {
  String name;
  int age;
  Human({required this.age, required this.name});
  
}
void main(List<String> args) {
  Human human=Human(age: 14, name: 'mahmud');
  print(human.name);
}