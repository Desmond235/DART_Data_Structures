import 'package:data_structures/data_structures.dart' as data_structures;
import 'package:data_structures/sorting/bubble_short/bubble_sort.dart';
import 'package:data_structures/sorting/insertion_sort/insertion_sort.dart';
import 'package:data_structures/sorting/quick_short/quick__short.dart';
import 'package:data_structures/sorting/selection_sort/selection_sort.dart';


// ignore: camel_case_types
typedef list_int = List<int>;

void main(List<String> arguments) {
 
 list_int  numbers = [34,67,12,45,67,80];

//  bubble sort
//  bubbleSort(numbers);

//  selection sort
// selectionSort(numbers);

// insertion sort
insertionSort(numbers);

// quickSort(numbers, 0, numbers.length - 1);

 print(numbers);
}
