import 'dart:math';
import 'dart:io';
import 'package:data_structures/wordslist.dart' show wordBank, hangmanArt;

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

void playGame() {
  final random = Random();

  // pick difficulty
  stdout.write("Choose difficulty (easy, medium, hard): ");
  String? difficulty = stdin.readLineSync()?.toLowerCase();

  if (!wordBank.containsKey(difficulty)) {
    print('Invalid difficulty ');
    return;
  }

  // pick a random category
  final categories = wordBank[difficulty]!;
  final category = categories.keys.elementAt(random.nextInt(categories.length));
  print(category);
  final wordList = categories[category]!;
  final answer = wordList[random.nextInt(wordList.length)];

  var hint = List.filled(answer.length, "_");
  var guessedLetters = <String>{};
  int wrongGuesses = 0;
  bool isRunning = true;

  print('\nHint: It\'s a/an $category');

  while (isRunning) {
    displayMan(wrongGuesses);
    displayHint(hint.join(" "));
    print('Guessed letters: ${guessedLetters.join(", ")}');

    stdout.write('Enter a letter: ');
    String? guess = stdin.readLineSync()?.toLowerCase();

    if (guess == null || guess.length != 1 || double.tryParse(guess) != null) {
      print("Invalid input");
      continue;
    }

    if (guessedLetters.contains(guess)) {
      print('Guessed already guessed');
      continue;
    }

    guessedLetters.add(guess);

    if (answer.contains(guess)) {
      for (var i = 0; i < answer.length; i++) {
        if (answer[i] == guess) {
          hint[i] = guess;
        }
      }
    } else {
      wrongGuesses += 1;
    }

    if (!hint.contains('_')) {
      displayMan(wrongGuesses);
      displayAnswer(answer);
      print('YOU WIN!');
      isRunning = false;
    } else if (wrongGuesses >= hangmanArt.length - 1) {
      displayMan(wrongGuesses);
      displayAnswer(answer);
      print('YOU LOSE!');
      isRunning = false;
    }
  }
}

void main(List<String> args) {
  while (true) {
    playGame();

    stdout.write('\nPlay again? (y/n): ');
    String? playAgain = stdin.readLineSync();
    if (playAgain?.toLowerCase() != 'y') {
      print('Thanks for playing');
      break;
    }
  }
}
