// ignore_for_file: unused_field

import 'dart:io';

class Course {
  int? id;
  String? name;
  String? description;
  int? num_of_students;
  int? max_num;
  int? academic_year;

  add_course() {
    print("course name :");
    this.name = stdin.readLineSync()!;
    print("course id :");
    this.id = int.parse(stdin.readLineSync()!);
    print("course description");
    this.description = stdin.readLineSync()!;
    print("max number of students");
    this.max_num = int.parse(stdin.readLineSync()!);
    print("academic_year : ");
    this.academic_year = int.parse(stdin.readLineSync()!);
  }
}
