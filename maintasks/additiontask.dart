class Rectangle{
  late int uzunlugu;
  late int eni;
  
  Rectangle(int uzunlugu, int uni){
    this.uzunlugu = uzunlugu;
    this.eni = uni;
  }

  int perimeter(){
    return 2 * (this.eni + this.uzunlugu);
  }

int area(){
  return this.eni * this.uzunlugu;
}

}