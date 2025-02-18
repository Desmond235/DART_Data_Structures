import 'package:data_structures/sorting/quick_short/quick__short.dart';


// ignore: camel_case_types
typedef list_int = List<int>;

void main(List<String> arguments) {
 
 list_int  numbers = [34,67,12,45,67,80];

 

//  bubble sort
//  

// insertion sort
// insertionSort(numbers);

quickSort(numbers, 0, numbers.length - 1);

 print(numbers);
}
