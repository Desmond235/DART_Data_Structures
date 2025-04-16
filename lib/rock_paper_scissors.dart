import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  List options = ['rock', 'paper', 'scissors'];
  bool running = true;

  while (running) {
    String player = "";
    var computer = options[random.nextInt(options.length)];

    while (!options.contains(player)) {
      stdout.write("Enter a choice (rock, paper, scissors): ");
      player = (stdin.readLineSync()!).toLowerCase();
    }
    print('Player: $player');
    print('Computer: $computer');

    if (player == computer) {
      print("It's a tie!");
    } else if (player == 'rock' && computer == "scissors") {
      print('You win!');
    } else if (player == "paper" && computer == "rock") {
      print("You win!");
    } else if (player == "scissors" && computer == "paper") {
      print('You win!');
    } else {
      print("You lose!");
    }

    stdout.write('Play again? (y/n): ');
    if ((stdin.readLineSync()!).toLowerCase() == 'n') {
      running = false;
    }
  }
}
