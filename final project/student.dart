import 'courses.dart';
import 'dart:io';
import 'main.dart';

class Student {
  String? name;
  String? password;
  int? id;
  int? age;
  int? phone_num;
  int? academic_year;
  List<Course>? s_courses;
  List? grades;

  print_info() {
    print("your name is $name");
    print("your age is $age");
    print("your academic year $academic_year");
    print("your id is $id");
    print("your phone number is 0$phone_num");
    print("your courses :");
    s_courses?.forEach((element) {
      print("${element.name} , ");
    });
  }

  add_info(int id) {
    this.id = id;

    print("enter a student name");
    this.name = stdin.readLineSync()!;
    print("enter a password");
    String pass = stdin.readLineSync()!;
    this.password = pass;
// غالبا هيكون فيه حاجه غلط في الحته دي بس هشيك عليها بعدين
    loop2:
    while (students.isNotEmpty) {
      for (int i = 0; i < students.length; i++) {
        if (pass == students[i].password) {
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

  changeInfo() {
    print("enter a student name");
    this.name = stdin.readLineSync()!;
    print("enter a password");
    String pass = stdin.readLineSync()!;
    this.password = pass;
// غالبا هيكون فيه حاجه غلط في الحته دي بس هشيك عليها بعدين
    loop2:
    while (students.isNotEmpty) {
      for (int i = 0; i < students.length; i++) {
        if (pass == students[i].password) {
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
  }

  join_course() {
    print("chose course id to join");
    courses.forEach((element) {
      print("course name: ${element.name}");
      print("course id: ${element.id}");
    });
    // الكورس مش راضي يدخل في الليست بتاعت الطالب؟؟؟؟
    // ignore: unused_local_variable
    int x = int.parse(stdin.readLineSync()!);
    s_courses!.add(Course());
    print(s_courses?[0].name);
  }

  can_do() {
    loop:
    while (true) {
      print("you can do : ");
      print("1-> Edit your personal information");
      print("2-> join a course");
      print("3-> See your grades");
      print("4-> print your information");
      print("0-> take a step back");

      int x = int.parse(stdin.readLineSync()!);
      switch (x) {
        case 1:
          {
            changeInfo();
            break loop;
          }
        case 2:
          {
            join_course();
            break;
          }

        case 3:
          {
            grades!.forEach((element) {
              print("course grade: $element");
            });

            break;
          }
        case 4:
          {
            print_info();
            break;
          }
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
