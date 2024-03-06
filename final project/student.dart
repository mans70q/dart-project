import 'courses.dart';
import 'dart:io';

class Student {
  String? name;
  int? id;
  int? age;
  int? phone_num;
  int? academic_year;
  List<Course>? courses;

  add_info(int id) {
    this.id = id;

    print("enter a student name");
    this.name = stdin.readLineSync()!;

    print("enter a student age");
    while (true) {
      int x = int.parse(stdin.readLineSync()!);
      if (x <= 30 && x >= 10) {
        this.age = x;
        break;
      } else
        print("enter a valid age");
    }

    print("enter a phone number");
    while (true) {
      String x = stdin.readLineSync()!;
      if (x.length == 11) {
        this.phone_num = int.parse(x);
        break;
      } else
        print("enter a valid phone number");
    }

    print("enter an academic year");
    while (true) {
      int x = int.parse(stdin.readLineSync()!);
      if (x <= 4 && x >= 1) {
        this.academic_year = x;
        break;
      } else
        print("enter a valid academic year");
    }
  }
}
