import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  var lowestNum = 1;
  var highestNum = 50;
  var answer = Random().nextInt(lowestNum) + Random().nextInt(highestNum);
  var guesses = 0;
  bool isRunning = true;

  stdout.write("Select a number between $lowestNum and $highestNum: ");
  while (isRunning) {
    int? guess = int.tryParse(stdin.readLineSync()!);
    if (guess != null) {
      guesses += 1;

      if (guess < lowestNum || guess > highestNum) {
        print('That number is out of ragne');
        print('Enter a number between $lowestNum and $highestNum');
      } else if (guess < answer) {
        print('Answer to low! Try again!');
      } else if (guess > answer) {
        print('Answer too big! Try again!');
      } else {
        print('CORRECT! The answer was $answer');
        print('Number of guesses: $guesses');
        isRunning = false;
      }
    } else {
      print('Invalid guess');
      print('Please select a number between $lowestNum and $highestNum');
    }
  }
}
