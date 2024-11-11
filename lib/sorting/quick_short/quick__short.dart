void quickSort(List<int> list, int low, int high){
  if(low < high){
    int pi = partition(list, low, high);
    quickSort(list, low, pi -1);
    quickSort(list, pi + 1, high);
  }
}

int partition(List<int>list, int low, int high){
  int pivot = list[high];
  int i = low - 1;

for( int j = low; j < high; j++){
  i++;
  if(list[j] <=pivot){
  swap(list[i], list[j]);
  }
  }

  swap(list[i + 1], list[high]);
  return i + 1;
}

void swap(int a, int b){
  int swap = a;
  a = b;
  b = swap;
}