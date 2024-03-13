// ignore_for_file: unused_import

import 'courses.dart';
import 'dart:io';
import 'teacher.dart';

class Admin {
  String name = "mans";
  String password = "12345";

  creatNewAdmin() {
    print("enter an admin name");
    this.name = stdin.readLineSync()!;
    print("enter a password");
    this.password = stdin.readLineSync()!;
    print("you created a new admin with name ${this.name}");
  }

  PrintInfo() {
    print("your name is : $name ");
    print("your password : $password");
  }
}
