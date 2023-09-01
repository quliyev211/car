import 'dart:math';
void main(List<String> args) {
  List<int> tasklist = [14,25,100,200];

  print('Listdəki ən böyük element ${maxItem(tasklist)}');
  print('Listdəki ən kiçik element ${minItem(tasklist)}');
  print('Listdəki elementlərin cəmi ${listTotal(tasklist)}');
  print('Listdəki elementlərin ədədi ortası ${listMedium(tasklist)}');
}

int maxItem(List<int> tasklist) {
  return tasklist.reduce((value, element) => max(value, element));
}

int minItem(List<int> tasklist) {
    return tasklist.reduce((value, element) => min(value, element));
}

int listTotal(List<int> tasklist) {
    return tasklist.reduce((value, element) => value + element);
}

double listMedium(List<int> tasklist) {
    return tasklist.reduce((value, element) => (value + element)) / tasklist.length;
}