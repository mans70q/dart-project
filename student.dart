import 'courses.dart';
import 'dart:io';

class Student {
  String? name;
  String? password;
  int? id;
  int? age;
  int? phone_num;
  int? academic_year;
  List<Course>? courses;

  add_info(int id, List<Course> courses, List<Student> student) {
    this.id = id;

    print("enter a student name");
    this.name = stdin.readLineSync()!;
    print("enter a password");
    String pass = stdin.readLineSync()!;
    this.password = pass;
// غالبا هيكون فيه حاجه غلط في الحته دي بس هشيك عليها بعدين
    loop2:
    while (student.isNotEmpty) {
      for (int i = 0; i < student.length; i++) {
        if (pass == student[i].password) {
          print("Please enter another password ");
          pass = stdin.readLineSync()!;
        } else {
          this.password = pass;
          break loop2;
        }
      }
    }
    print("your pass is $password \n");
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

    print("you signed up succsfuly");
  }

  changeInfo() {}

  can_do(List<Course> course) {
    loop:
    while (true) {
      print("you can do : ");
      print("1-> Edit your personal information");
      print("2-> join a course");
      print("3-> See your grades");
      print("0-> take a step back");

      int x = int.parse(stdin.readLineSync()!);
      switch (x) {
        case 1:
          {
            changeInfo();
            break loop;
          }
        case 2:
          {}
          break;

        case 3:
          {}
          break;
        case 0:
          {
            break loop;
          }
        default:
          break;
      }
    }
  }
}
