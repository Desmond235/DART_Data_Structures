
void bubbleSort(List<int>list){
  int n = list.length;
  
  for(int i = 0; i < n; i++){
    for(int j = 0; j < n -i -1; j++){
      print(n -i -1);
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

void main(List<String> args) {
  List<int> numbers = [11,56,33,20,12,09];
  bubbleSort(numbers);
  print(numbers); 
}