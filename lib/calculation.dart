import 'dart:io';

import 'package:data_structures/extension.dart';
import 'package:csv/csv.dart' as csv;

const localAmountFor3Min = 10;
const trunkAmountFor3Min = 20;
const foreignAmountFor3Min = 30;
const localAddMin = 5;
const trunkAddMin = 10;
const foreignAddMin = 15;

/// This calculates the amount payable .
///
/// There are default amounts if the minute is 3.
///
/// If minute is not 3, the amount payable will be calculated
/// by finding the difference of the minute(s),
///
///  finding the product of the difference
/// and the amount for every additional minute and then adding it to the amount of the
/// first three minutes.
double calculateAmountPayable(int? minute, double amountPayable,
    String callType, String input, bool isTryAgain) {
  if (minute == 3) {
    if (callType == 'Local') {
      amountPayable = 10;
    } else if (callType == "Trunk") {
      amountPayable = 20;
    } else {
      amountPayable = 30;
    }
  } else {
    if (callType == 'Local') {
      amountPayable =
          localAmountFor3Min + (minute!.toDouble() - 3) * localAddMin;
      // isTryAgain = false;
    } else if (callType == "Trunk") {
      amountPayable =
          trunkAmountFor3Min + (minute!.toDouble() - 3) * trunkAddMin;
      // isTryAgain = false;
    } else if (callType == "Foreign") {
      amountPayable =
          foreignAmountFor3Min + (minute!.toDouble() - 3) * foreignAddMin;
      // isTryAgain = false;
    }
  }

  if (isTryAgain == false) {
    print('The amount payable by $input is $amountPayable');
  }
  return amountPayable;
}

/// Checks if the provided string can be parsed into a number.
///
/// Returns true if the string can be successfully parsed into a double,
/// otherwise returns false.

bool isNumber(String name) {
  bool isNumber = double.tryParse(name) != null;
  return isNumber;
}

/// Checks if a double can be cast to a string which is an alphabet, if it is not a number
/// true will be returned indicating that the string is an alphabet
///
/// Otherwise false will be returned.
bool isAlphabet(int? minute) {
  bool isAlphabet = int.tryParse(minute.toString()) == null;
  print(isAlphabet);
  return isAlphabet;
}

/// Writes the provided information to a CSV file named 'cal.csv' in the current
/// directory.
///
/// If the file does not exist, it creates it and writes the headers to it.
///
/// It then appends the provided information in a line to the file.
///
/// The information is written as follows: [name, minute, callType, amountPayable].
///
/// The file is written in append mode.
void writeToCsv(
    String name, int minute, String callType, double amountPayable) async {
  List<List<dynamic>> rows = [
    [name, minute, callType, amountPayable]
  ];

  String csvData = const csv.ListToCsvConverter().convert(rows);
  final headers = [
    ['Name', 'Minute', 'Call Type', 'Amount Payable']
  ];

  File file = File('cal.csv');
  if (!file.existsSync()) {
    String header = const csv.ListToCsvConverter().convert(headers);
    await file.writeAsString('$header\n', mode: FileMode.write);
  }
  await file.writeAsString('$csvData\n', mode: FileMode.append);
}

/// Prompts the user to input their name, the duration of the call in minutes,
/// and the call type (Local, Trunk, or Foreign). Validates the inputs, ensuring
/// the name contains only alphabets and the minute is a valid number. If the
/// call type is invalid, it prompts the user again. Once valid inputs are
/// obtained, it calculates the amount payable based on the input call details.

void executeCode() {
  bool isTryAgain = false;
  stdout.write("Enter name:\t");
  String? name = stdin.readLineSync()!;
//
  while (isNumber(name!)) {
    print('\nName must be in alphabets');
    stdout.write('Enter name:\t');
    name = stdin.readLineSync()!;
  }

  stdout.write("\nEnter minute:\t");
  int? minute = int.tryParse(stdin.readLineSync()!);

  while (minute == null || isAlphabet(minute)) {
    print('\nMinutes must be in numbers');
    stdout.write('Enter Minute:\t');
    minute = int.tryParse(stdin.readLineSync()!);
  }
  stdout.write(
      '\nEnter call type, call type should be (Local, Trunk or Foreign):\t\n');
  String? callType = stdin.readLineSync()!.capitalize();
  var amountPayable = 0.0;

  while (isTryAgain) {
    print('Invalid Call type');
    stdout.write(
        '\nEnter call type, call type should be (Local, Trunk or Foreign):\t\n');
    callType = stdin.readLineSync()!;
    if (callType == 'Local' || callType == 'Trunk' || callType == 'Foreign') {
      isTryAgain = false;
    } else {
      isTryAgain = true;
    }
  }

  final amount = calculateAmountPayable(
      minute, amountPayable, callType!, name, isTryAgain);
  writeToCsv(name, minute, callType, amount);
}

void main(List<String> args) {
  executeCode();
}
