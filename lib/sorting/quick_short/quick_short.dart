void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(list, low, high);
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
}


int partition(List<int> list, int low, int high) {
  int pivot = list[high];
  int i = low - 1;
  
  for (int j = low; j < high; j++) {
    if (list[j] <= pivot) {
      i++;
      // Swap
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }
  
  // Place pivot in correct position
  int temp = list[i + 1];
  list[i + 1] = list[high];
  list[high] = temp;
  
  return i + 1;
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  quickSort(numbers, 0, numbers.length - 1);
  print(numbers); // Output: [11, 12, 22, 25, 34, 64, 90]
}