import 'dart:io';
import 'dart:math';

final wordBank = {
  'easy': {
    'animal': ['cat', 'dog', 'goat', 'pig', 'cow', 'sheep', 'duck', 'mouse', 'horse'],
    'fruit': ['apple', 'plum', 'grape', 'mango', 'lemon', 'melon', 'peach'],
    'object': ['hat', 'pen', 'book', 'bag', 'ball', 'kite', 'lamp', 'clock', 'toy'],
    'transport': ['car', 'bus', 'bike', 'van', 'boat'],
    'weather': ['sun', 'rain', 'fog', 'wind', 'winter', 'autumn', 'spring', 'snow'],
  },
  'medium': {
    'food': ['bread', 'pasta', 'pizza', 'soup', 'butter', 'cheese', 'salad', 'cake'],
    'household': ['table', 'chair', 'mirror', 'candle', 'blanket', 'pillow', 'basket'],
    'place': ['school', 'bridge', 'market', 'library', 'island', 'kitchen', 'garage'],
    'nature': ['forest', 'river', 'mountain', 'garden', 'flower'],
    'music': ['piano', 'flute', 'guitar', 'drum', 'dance'],
  },
  'hard': {
    'complex': [
      'awkward', 'schnitzel', 'liaison', 'opaque', 'plaque', 'czar', 'sphinx', 'rhythm',
      'voodoo', 'gnome', 'queue', 'dilemma', 'macabre', 'fuchsia', 'bizarre', 'haphazard',
      'zephyr', 'gazebo', 'nostalgia', 'vortex', 'eclipse', 'xylophone'
    ],
    'emotions/abstract': ['phantom', 'mirage', 'flabbergast', 'grumble', 'plummet', 'wrinkle'],
    'action': ['fiddle', 'topple', 'hazard', 'jinx', 'bequeath', 'fathom'],
  }
};

void main(List<String> args) {
  
  stdout.write('Choose difficulty level (easy, medium, hard): ');
  String? difficulty = stdin.readLineSync();

  if(!wordBank.containsKey(difficulty)){
    print('Invalid input');
    return;
  }
  final categories = wordBank[difficulty]!;
  final category = categories.keys.elementAt(Random().nextInt(categories.length));
  final wordList = categories[category]!;
  final answer = wordList[Random().nextInt(wordList.length)];
  print(answer);
  print('$category :  $wordList');
  //  for(var i in categories.values){
  //   for(var x in i){
  //     print(x);
  //   }
  //  }
  // for (var i in categories.entries){
  //   for(var x in i.value){
  //     print('${i.key}  :$x ');
  //   }
    
  // }
}