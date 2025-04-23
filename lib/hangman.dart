import 'dart:math';
import 'dart:io';
import 'package:data_structures/wordslist.dart';

final hangmanArt = {
  0: [
    "  ",
    "  ",
    "  ",
  ],
  1: [
    " Օ ",
    "   ",
    "  ",
  ],
  2: [
    " Օ ",
    " | ",
    "   ",
  ],
  3: [
    " Օ ",
    "/| ",
    "   ",
  ],
  4: [
    " Օ ",
    "/|\\ ",
    "    ",
  ],
  5: [
    " Օ ",
    "/|\\ ",
    "/   ",
  ],
  6: [
    " Օ ",
    "/|\\ ",
    "/ \\   ",
  ]
};

void displayMan(int wrongGuesses) {
  print('***********');
  for (var line in hangmanArt[wrongGuesses]!) {
    print(line);
  }
  print('***********');
}

void displayHint(String hint) {
  print(hint);
}

void displayAnswer(answer) {
  print(answer);
}

void main(List<String> args) {
  final random = Random();
  var answer = words[random.nextInt(words.length)];
  var hint = List.filled(answer.length, "_");
  print(hint);
  int wrongGuesses = 0;
  var guessedLetters = <String>{};
  bool isRunning = true;

  while (isRunning) {
    displayHint(hint.join(" "));
    displayMan(wrongGuesses);

    stdout.write('Enter a letter: ');
    String? guess = (stdin.readLineSync()!).toLowerCase();

    if (guess.length != 1 || double.tryParse(guess) != null) {
      print('Invalid input');
      continue;
    }



    guessedLetters.add(guess);

    if (answer.contains(guess)) {
      for (var i = 0; i < answer.length; i++) {
        if (answer[i] == guess) {
          hint[i] == guess;
        }
      }
    }else{
      wrongGuesses += 1;
    }

    if(hint.contains("_")){
      displayMan(wrongGuesses);
      displayAnswer(answer);
      print("YOU WIN!");
      isRunning = false;
    }else if (wrongGuesses > hangmanArt.length -1){
      displayMan(wrongGuesses);
      displayAnswer(answer);
      print("YOU LOSE!");
      isRunning = false;
    }
  }
}
