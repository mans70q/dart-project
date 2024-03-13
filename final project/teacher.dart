import 'courses.dart';
import 'dart:io';

import 'main.dart';

class Teacher {
  int? id;
  String? name;
  String? major;
  String? password;
  Course? course;

  can_do() {
    while (true) {
      print("1-> add grades to student");
      print("0-> back to home");
      int x = int.parse(stdin.readLineSync()!);
      if (x == 1) {
        if (students.isEmpty) {
          print("no students in the system");
          continue;
        }
        print("enter a student id to add grade");
        students.forEach((element) {
          print("student name : ${element.name}");
          print("student id : ${element.id}");
          print("=================");
          int y = int.parse(stdin.readLineSync()!);
          print("add grade");

          students[y].grades?.add(int.parse(stdin.readLineSync()!));
        });
      } else if (x == 0) {
        break;
      } else {
        print("enter a valid number");
      }
    }
  }

  add_teacher() {
    print("teacher name : ");
    this.name = stdin.readLineSync()!;
    print("teacher id : ");
    this.id = int.parse(stdin.readLineSync()!);
    print("teacher major : ");
    this.major = stdin.readLineSync()!;
    print("teacher password : ");
    this.password = stdin.readLineSync()!;
    print("teacher course : ");
    courses.forEach((element) {
      print("course name :${element.name}");

      print("course id :${element.id}");
    });
  }
}
