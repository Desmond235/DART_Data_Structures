abstract class Animal{
  void makeSound();
}


class Dog extends Animal{
  @override
  void makeSound() => print('bark');
}

class Cat extends Animal{
  @override
  void makeSound() => print('meow');
}

void main(){
  List<Animal> animals = [Dog(), Cat()];
  for(var animal in animals){
    animal.makeSound();
  }
}
