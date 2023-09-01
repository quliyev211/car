// ! Animal super class
// ! Birds, Mammals, Reptile
// ! display func. hamisina aiddir.
// ! her birinin ozunun fildleri var

/// Mammal- novu, yasi
/// Birds qanad uzunlugu, novunu,
/// Reptile- novu, zeherli olub olmadigi(bool)

class Animal{
  String typeAnimal;

  Animal({
    required this.typeAnimal
  });
  displayAbout(){
    print('$typeAnimal');
  }
}


class Mammal extends Animal{
  int ageMammal;
  Mammal({
    required super.typeAnimal, required this.ageMammal
  });
  displayAbout() {
   print('$ageMammal, $typeAnimal');
  }
}

class Birds extends Animal{
  int wingSize;
  Birds({
    required super.typeAnimal, required this.wingSize
  });
  displayAbout(){
    print('$wingSize, $typeAnimal');
  }

}

class Reptile extends Animal{
  bool isPoisonous;
  Reptile({
    required super.typeAnimal, required this.isPoisonous
  });
 displayAbout(){
  print('$isPoisonous, $typeAnimal');
 }
}