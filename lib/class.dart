
// ignore_for_file: unused_local_variable

extension ComprableOperators<T extends Comparable<T>> on T{
  bool operator <(T other) => compareTo(other) < 0;
  bool operator >(T other) => compareTo(other) > 0;
  bool operator <=(T other) => compareTo(other) <= 0;
  bool operator >=(T other) => compareTo(other) >=0;
}

class Book implements Comparable<Book>{
  final String title;
  final String author;
  final int numPages;

  Book(this.title, this.author, this.numPages);

  @override
  String toString() {
    return "$title by $author";
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is Book &&
        title == other.title &&
        author == other.author &&
        numPages == numPages;
  }

  @override
  int get hashCode => title.hashCode ^ author.hashCode ^ numPages.hashCode;
   
  //  bool operator >(Book other){
  //   return numPages > other.numPages;
  //  }

  //  int operator +(Book other){
  //   return numPages + other.numPages;
  //  }
   
     @override
     int compareTo(Book other) {
       return numPages.compareTo(other.numPages);
     }
}

class Rectangle{
   double _width;
   double _height;

  Rectangle(double width, double height) : _width = width , _height = height;

  double get width => _width;
  double get height => _height;


  set width(double width) => _width = width;
  set height(double height) => _height = height;
}
void main(List<String> args) {
  var book1 = Book("Hobbit", "J.R.R Tolkein", 310);
  var book2 =
      Book("Harry Porter and the Philosopher's Stone", "J.K. Rowling", 23);
  var book3 = Book("The Lion, the Witch and the Wardrobe", 'C.S Lewis', 192);

  var rectangle = Rectangle(6, 7);
  
  rectangle.width = 5;
  rectangle.height = 8;
  print(rectangle.width);
  print(rectangle.height);
}
