// ignore: unused_import
import 'courses.dart';
import 'dart:io';
import 'teacher.dart';

class Admin {
  String name = "mans";
  String password = "12345";

  changeinfo() {
    print("your name : ");
    String name = stdin.readLineSync()!;
    print("your password :");
    String pass = stdin.readLineSync()!;
    this.name = name;
    this.password = pass;
  }

  Admin creatNewAdmin() {
    Admin admin = Admin();

    print("enter an admin name");
    admin.name = stdin.readLineSync()!;
    print("enter a password");
    admin.password = stdin.readLineSync()!;
    print("you created a new admin with name ${admin.name}");
    return admin;
  }

  PrintInfo() {
    print("your name is $name ");
  }

  Course AddCourses(List<Teacher> teacher) {
    Course course = Course();

    print("enter a course name");
    course.name = stdin.readLineSync()!;
    print("enter a course decription");
    course.description = stdin.readLineSync()!;
    print("course id");
    course.id = int.parse(stdin.readLineSync()!);
    print("enter the max number of student");
    course.max_num = int.parse(stdin.readLineSync()!);

    return course;
  }
}
