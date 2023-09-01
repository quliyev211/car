void main(){
  // creating a list
  var orgList = [1, 2, 3, 4, 5];
  print(orgList);

  // reversing the list
  var objList = orgList.reversed ;
    
  // creating a new list with the object
  var revList = new List.from(objList);
  print(revList);
}