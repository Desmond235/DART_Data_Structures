import 'dart:math';
import 'dart:io';
import 'package:data_structures/wordslist.dart' show  hangmanArt;

var words = ['cat', 'maize', 'carrot'];
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
  int wrongGuesses = 0;
  var guessedLetters = <String>{};
  bool isRunning = true;

  while (isRunning) {
    displayMan(wrongGuesses);
    displayHint(hint.join(" "));

    stdout.write('Enter a letter: ');
    String? guess = (stdin.readLineSync()!).toLowerCase();

    if (guess.length != 1 || double.tryParse(guess) != null) {
      print('Invalid input');
      continue;
    }

    if (guessedLetters.contains(guess)) {
      print('$guess is already guessed');
      continue;
    }

    guessedLetters.add(guess);

    if (answer.contains(guess)) {
      for (var i = 0; i < answer.length; i++) {
        if (answer[i] == guess) {
          print('yes');
          hint[i] = guess; 
          print(hint);
        }
      }
    } else {
      wrongGuesses += 1;
    }

    if (!hint.contains("_")) {
      displayMan(wrongGuesses);
      displayAnswer(answer);
      print("YOU WIN!");
      isRunning = false;
    } else if (wrongGuesses >= hangmanArt.length - 1) {
      displayMan(wrongGuesses);
      displayAnswer(answer);
      print("YOU LOSE!");
      isRunning = false;
    }
  }
}
