import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  // stdout.write("Enter minutes in seconds: ");
  // int? sec = int.tryParse(stdin.readLineSync()!);

  // for (int x = sec!; sec! > 0; x--) {
  //   sec--;
  //   var seconds = x % 60;
  //   var minutes = (x ~/ 60) % 60;
  //   print(
  //       '00:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}');
  //   sleep(Duration(seconds: 1));
  // }
  // print('TIME UP');

  // var creditNumber = "1235-2345-7865-6757";

  // for (var i = 0; i < creditNumber.length; i++) {
  //    if(i == 3) break;
  //    print(creditNumber[i+3]);
  // }

  // var fruits =     ['apple', 'orange', 'banana', 'coconut'];
  // var vegetables = ['cherry','carrots', 'potatoes'];
  // var meats =      ['chicken', 'fish', 'turkey'];

  // var groceries = [fruits, vegetables, meats];

  //  for(var i = 0; i <groceries.length; i++){
  //   for(var x = 0; x < groceries[i].length; x++){
  //     print(groceries[i][x]);
  //   }
  //  }

  var questions = [
    "How many elements are in the periodic table?",
    "Which animal lays the largest eggs?",
    "What is the most abundant gas in Earth's atmosphere?",
    "How  many bones are in the human body?",
    "Which planet in the solar system is the hottest?"
  ];

  var options = [
    ["A. 116", "B. 117", "C. 118", "D. 119"],
    ["A. Whale", "B. Crocodile", "C. Elephant", "D. Ostrich"],
    ["A. Nitrogen", "B. oxygen", "C. Carbon-dioxide", "D. Hydrogen"],
    ["A. 206 ", "B. 207", "C. 208", "D. 209"],
    ["A. Mercury", "B. Venus", "C. Earth", "D. Mars"]
  ];

var answers = ["C", "D", "A", "A", "B"];
var questionNum = 0;
var  guesses = [];
var score = 0;

  for(var question in questions){
    print('---------------------------------');
    print(question);
    for(var option in options[questionNum]){
      print(option);
    }

    String? guess = (stdin.readLineSync()!).toUpperCase();
    guesses.add(guess);
    if (guess == answers[questionNum]){
      score += 1;
      print("CORRECT");
    }else{
      print('INCORRECT');
      print('${answers[questionNum]} is the correct answer');
    }
    questionNum++;
  }
  print('---------------------------------');
  print('|             ANSWERS           |');
  print('---------------------------------');
 
  print('answers');
   for (var i = 0; i < answers.length; i++) {
     stdout.write("${answers[i]} ");
   }
   print("\n");
   print('guesses');
   for (var i = 0; i < guesses.length; i++) {
     stdout.write("${guesses[i]} ");
   }
  
  score = ((score  / questions.length) * 100).toInt();
  print("\n Your score is: $score%");

  
}
