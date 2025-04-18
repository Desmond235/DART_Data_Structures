
void main(List<String>args){
  List<String>fruits = ['apple', 'mango', 'orange','watermelon'];

  fruits = <String>[ for ( var fruit in fruits) fruit.toUpperCase()];

  print(fruits.join("\n"));
}
