
void mergeSort(List<int>list){
  int  middle = list.length ~/ 2;
  List<int>left = list.sublist(0, middle);
  List<int> right = list.sublist(middle);

  if(list.length <=1) return;
  mergeSort(left);
  mergeSort(right);

  merge(list, left, right);
}

void merge(List<int>list, List<int> left, List<int> right){
  int i =0, j =0, k = 0;
  while(i < left.length && j < right.length){
    if(left[i] <= right[j]){
      list[k++] = left[i++];
    }else{
      list[k++] = right[j++];
    }
  }

  while (i < left.length) {
    list[k++] = left[i++];
  }

  while (j < right.length) {
    list[k++ ] = right[j++];
  }
}


void main(List<String> args) {
  List<int> numbers = [ 12,45,78,90,76,45,23,2];
  mergeSort(numbers);
  print(numbers);
}