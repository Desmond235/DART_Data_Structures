void insertionSort(List<int> numbers) {
  for (int i = 1; i < numbers.length; i++) {
    int key = numbers[i];
    int j = i - 1;
    while (j >= 0 && numbers[j] > key) {
      numbers[j + 1] = numbers[j];
      j--;
    }
    numbers[j + 1] = key;
  }
}
