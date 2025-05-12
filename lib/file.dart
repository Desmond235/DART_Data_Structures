import 'dart:io';
import 'dart:convert';

import 'package:csv/csv.dart' as csv;
import 'package:path/path.dart' as path;

void main(List<String> args) {
  var employees = [
    {"name": "John", "age": 30, "department": "HR"},
    {"name": "Jane", "age": 25, "department": "IT"},
    {"name": "Mike", "age": 35, "department": "Finance"},
    {"name": "Sara", "age": 28, "department": "Marketing"}
  ];

  var jsonString = JsonEncoder.withIndent("   ").convert(employees);
  var filePath = 'output.json';
  File output = File(filePath);

  final students = [
    Student(name: "Frank", age: 20, form: 3),
    Student(name: "Abigail", age: 22, form: 2),
    Student(name: "Linda", age: 18, form: 1)
  ];
  // ignore: unused_local_variable
  final json = jsonEncode(students,
      toEncodable: (value) => value is Student
          ? Student.toJSON(value)
          : throw UnsupportedError('Cannot convert $value to JSON'));

  output.writeAsString(jsonString).then((value) {
    print("File created successfully at $filePath");
  }).catchError((error) {
    print("Error creating file: $error");
  });

  writeCsv();
  readCsv();
}

  /// Writes a CSV file named 'data.csv' with predefined rows of employee data.
  ///
  /// The employee data includes columns for Name, Age, and Department. The data
  /// is converted to CSV format using [ListToCsvConverter] and then written to
  /// a file using [writeAsString].

void writeCsv() {
  List<List<dynamic>> rows = [
    ["Name", "Age", "Department"],
    ["John", 30, "HR"],
    ["Jane", 25, "IT"],
    ["Mike", 35, "Finance"],
    ["Sara", 28, "Marketing"]
  ];

  String csvData = const csv.ListToCsvConverter().convert(rows);
  File('data.csv').writeAsString(csvData);
}

  /// Reads the CSV file created by [writeCsv] and prints the contents to the
  /// console.
  ///
  /// The [openRead] method is used to get a stream for reading the file.
  /// The [utf8.decoder] is used to convert the stream of bytes to a string.
  /// The [CsvToListConverter] is used to parse the CSV into a list of lists.
  /// The [toList] method is used to wait for the conversion to complete and
  /// return the list of lists.
void readCsv() async {
  try {
    final input = File(path.join(Directory.current.path, 'data.sv')).openRead();
  final fields = await input
      .transform(utf8.decoder)
      .transform(csv.CsvToListConverter())
      .toList();
  print(fields);
  }catch (e) {
    print(e.toString());
  }
}

class Student {
  String name;
  int age;
  int form;

  Student({
    required this.name,
    required this.age,
    required this.form,
  });

  static Map<String, dynamic> toJSON(Student value) {
    return {"name": value.name, "age": value.age, "form": value.form};
  }

  Student.fromJSON(Map<String, dynamic> json)
      : name = json["name"],
        age = json["age"],
        form = json["form"];
}
