import 'dart:math';

abstract class Shape{
 double area();
}

class Circle extends Shape{
  final double radius;
  Circle(this.radius);

  @override
  double area() {
    return  3.14 * pow(radius, 2);
  }
  
}

class Square extends Shape{
  final double side;
  Square(this.side);
  @override
  double area() {
    return pow(side, 2).toDouble();
  }
}

class Triangle extends Shape{
  final double base;
  final double height;

  Triangle(this.base, this.height);
  @override
  double area() {
    return base * height * 0.5;
  }
}

class Pizza extends Circle{
  Pizza(super.radius, this.topping);
  final String topping;
}

void main(List<String> args) {
  List<Shape> shapes = [Circle(4), Square(5), Triangle(6, 7), Pizza(7, "Peperoni")];

  for(var shape in shapes){
    print(shape.area());
  }
}

