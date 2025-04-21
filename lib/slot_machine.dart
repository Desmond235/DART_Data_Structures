import 'dart:io';
import 'dart:math';

List<String> spinRow() {
  final random = Random();
  final symbols = ['🍒', '🍉', '🍋', '🔔', '⭐'];
  return [for (var _ = 0; _ < 3; _++) symbols[random.nextInt(symbols.length)]];
}

void printRow(List row) {
  print(row);
}

getPayout(List row, double bet) {
  if (row[0] == row[1] && row[1] == row[2] && row[0] == row[2]) {
    if (row[0] == '🍒') {
      return bet * 3;
    } else if (row[0] == '🍉') {
      return bet * 4;
    } else if (row[0] == '🍋') {
      return bet * 5;
    } else if (row[0] == '🔔') {
      return bet * 10;
    } else if (row[0] == '⭐') {
      return bet * 20;
    }
  } else {
    return 0;
  }
}

void main(List<String> args) {
  double balance = 100;

  while (balance > 0) {
    print('Your balance is \$${balance.toStringAsFixed(2)}');

    stdout.write('Place your bet: ');
    double? bet = double.tryParse(stdin.readLineSync()!);

    if (bet == null) {
      print('Please enter a valid amount');
      continue;
    }

    if (balance <= 0) {
      print('Insufficient funds');
      continue;
    }

    balance -= bet;

    final row = spinRow();
    print('Spinning...');
    printRow(row);

    final payout = getPayout(row, bet);

    if (payout > 0) {
      print('You won \$$payout');
    } else {
      print('You lost this round');
    }

    balance += payout;

    stdout.write('Do you want to play again? (Y/N): ');
    String playAgain = (stdin.readLineSync()!).toUpperCase();

    if (playAgain == 'N') {
      break;
    }

    if (playAgain != 'N' || playAgain != "Y") {
      print('Invalid input. type Y or N');
      stdout.write('Do you want to play again? (Y/N): ');
      playAgain = (stdin.readLineSync()!).toUpperCase();
    }
  }
  print('Game over! Your final balance is $balance');
}
