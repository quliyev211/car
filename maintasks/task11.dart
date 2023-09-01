void main(List<String> args) {
  List<String> list = [
    'ASUS',
    'Asus',
    'asus',
    'HP',
    'hp',
    'Hp',
    'MSI',
    'msi',
    'Msi'
  ];
  products1(list);
}

products1(List list) {
  Map<String, int> products = {};
  for(String m in list) {
    String optimallasdirilmisM = m.toUpperCase();
    products[optimallasdirilmisM] = (products[optimallasdirilmisM] ?? 0) + 1;
  }

  print(products);
}