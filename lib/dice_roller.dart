import 'dart:async';
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  final diceArt = {
    1: [
      '┌───────────┐',
      '│           │',
      '│     ●     │',
      '│           │',
      '└───────────┘'
    ],
    2: [
      '┌───────────┐',
      '│  ●        │',
      '│           │',
      '│        ●  │',
      '└───────────┘'
    ],
    3: [
      '┌───────────┐',
      '│  ●        │',
      '│     ●     │',
      '│        ●  │',
      '└───────────┘'
    ],
    4: [
      '┌───────────┐',
      '│  ●     ●  │',
      '│           │',
      '│  ●     ●  │',
      '└───────────┘'
    ],
    5: [
      '┌───────────┐',
      '│  ●     ●  │',
      '│     ●     │',
      '│  ●     ●  │',
      '└───────────┘'
    ],
    6: [
      '┌───────────┐',
      '│  ●     ●  │',
      '│  ●     ●  │',
      '│  ●     ●  │',
      '└───────────┘'
    ],
  };
 
 final dice = <int>[];
 int total = 0;
 final random = Random();
 stdout.write("How many dice?: ");
 int? numOfDice = int.tryParse(stdin.readLineSync()!);

 while (numOfDice == null) {
   stdout.write('How many dice?: ');
   numOfDice = int.parse(stdin.readLineSync()!);
 }

 for (var die = 0; die < numOfDice; die++){
  dice.add(random.nextInt(6) + 1);
 }
 
 for(var line = 0; line < 5; line++){
  for(var die in dice){
    stdout.write(diceArt[die]?[line]);
  }
  print("");
 }
 for(var die in dice){
  total += die;
 }
 
 print(dice);
 print(total);
}
