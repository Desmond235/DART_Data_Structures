void selectionSort(List<int> list) {
  int n = list.length;
  
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    
    // Swap the found minimum element with the first element
    if (minIndex != i) {
      int temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
}

void selectionSort1(List<int> list){
  int n = list.length;

  for(int i =0; i < n -1; i++){
    int minIndex = i;
    for(int j = i + 1; j < n; j++){
      if(list[j] < list[minIndex]){
        minIndex = j;
      }
    }

     List<int> numbers = [12,45,7,6,43,68,90,76,45];

    if(minIndex != i){
      int temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
  }

  void main(List<String> args) {
  List<int> numbers = [12,45,6,7,43,68,90,76,45];
  selectionSort1(numbers);
  print(numbers);

 final name = 'desmond';
  Map<String, dynamic> data = {};
  data['name'] = name;
  print(data);
}


  