void mergeSort(List<int> list) {
  if (list.length <= 1) return;
  
  int middle = list.length ~/ 2;
  List<int> left = list.sublist(0, middle);
  List<int> right = list.sublist(middle);
  
  mergeSort(left);
  mergeSort(right);
  merge(list, left, right);
}

void merge(List<int> list, List<int> left, List<int> right) {
  int i = 0, j = 0, k = 0;
  
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      list[k++] = left[i++];
    } else {
      list[k++] = right[j++];
    }
  }
  
  // Copy remaining elements
  while (i < left.length) {
    list[k++] = left[i++];
  }
  while (j < right.length) {
    list[k++] = right[j++];
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  mergeSort(numbers);
  print(numbers); // Output: [11, 12, 22, 25, 34, 64, 90]
}