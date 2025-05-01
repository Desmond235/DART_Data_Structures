import 'dart:math';

extension ListExtensions<T> on List<T> {
  T? firstWhereOrNull(bool Function(T) test) {
    try {
      return firstWhere(test);
    } catch (e) {
      return null;
    }
  }

  List<List<T>> chunk(int chunkSize){
    List<List<T>> chunks = [];
    for(var i = 0; i < length; i +=chunkSize){
      chunks.add(sublist(i, i + chunkSize > length ? length: i + chunkSize));
    }
    return chunks;
  }
  // List<List<T>> chunk(int chunkSize) {
  //   return List.generate(
  //     (length / chunkSize).ceil(),
  //     (index) => sublist(
  //       index * chunkSize,
  //       min((index + 1) * chunkSize, length),
  //     ),
  //   );
  // }
}

extension StringExtensions on String{
  String capitalize(){
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String capitalizeAfterPunctuation(){
    return split(RegExp(r'\.\s*')).map((sentence){
      return sentence.trim().isEmpty ? sentence :
      sentence[0].toUpperCase() + sentence.substring(1).toLowerCase();
    }).join(". ");
  }
}
void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  String str = 'the boy is handsome. he is very respectful. he is awesome';
  print(numbers.chunk(2));
  print(str.capitalizeAfterPunctuation());
}
