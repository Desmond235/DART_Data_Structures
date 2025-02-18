abstract class Shape{
   double get area;
  double get perimeter;

  void draw();

  
  void displayInfo(){
    print('This is a shape');
  }
}

 class Circle extends Shape{
  final double radius;

  Circle(this.radius);

  @override
  double get area => 3.14 * radius * radius;

  @override
  double get perimeter => 2 * 3.14 * radius;

  @override 
   void draw(){
    print('Drawing a circle with radius $radius');
   }
}

void main(){
  Circle circle = Circle(5);
  circle..draw()
        ..displayInfo();
  print('Area: ${circle.area}');
  print('Perimeter: ${circle.perimeter}');
}

