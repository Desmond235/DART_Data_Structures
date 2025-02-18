void quickSort(List<int>list, int low, int high){
  if(low < high){
  int pivotIndex = partition(list, low, high);
  quickSort(list, low, pivotIndex - 1);
  quickSort(list,pivotIndex + 1, high);
  }
}

int partition(List<int>list, int low, int high){
  int pivot = list[high];
  int i = low -1;

  for (var j = low; j < high; j++) {
    if (list[j] <= pivot) {
      i++;
      swap(list, i, j);
    }
  }

  swap(list, i+ 1, high);

  return i + 1;
}

void swap(List<int>list, int i, int high){
   int temp = list[i];
   list[i] = list[high];
   list[high] = temp;
}

void main(List<String> args) {
  List<int> numbers = [12,56,43,12,19,10,67,89,90];
  quickSort(numbers, 0, numbers.length -1);
  print(numbers);
}

