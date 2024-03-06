// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'student.dart';
import 'teacher.dart';
import 'courses.dart';

void main() {
  print(
      "==============================\n=           Welcome          =\n==============================");
  int id = 0;
  List<Student> students = [];
  List<Teacher> teachers = [];
  List<Course> courses = [];
  for (int i = 0; i < 2; i++) {
    int _command = command();
    if (_command == 2) {
      students.add(Student()..add_info(id));
    }
    id++;
  }
  students.forEach((element) {
    print(" the id of the student is : ${element.id}");
  });
}

int command() {
  print("==============================\n");
  print("press 1 to login as a student");
  print("press 2 to signup as a student");
  print("press 3 to login as a teacher");
  print("press 4 to signup as a teacher");
  print("press 5 to login as an administrator");
  print("press 5 to signup as an administrator");

  while (true) {
    int x = int.parse(stdin.readLineSync()!);

    if (x <= 5 && x >= 1)
      return x;
    else
      print("Enter a valid number");
  }
}
