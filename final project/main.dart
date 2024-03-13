// ignore_for_file: unused_import, unused_local_variable
import 'dart:io';
import 'student.dart';
import 'teacher.dart';
import 'courses.dart';
import 'admin.dart';

List<Student> students = [];
List<Teacher> teachers = [];
List<Course> courses = [];
List<Admin> admins = [];
void main() {
  print("==============================\n=           Welcome          =");
  int id = 0;

  while (true) {
    int _command = command();
    //quit
    if (_command == 0) {
      break;
    }
    //login as a student
    else if (_command == 1) {
      loop1:
      while (true) {
        if (students.isEmpty) {
          print("There are no students in the system");
          break loop1;
        }
        //pass and user name
        print("user name :");
        String name = stdin.readLineSync()!;
        print("password : ");
        String pass = stdin.readLineSync()!;

        //user check
        for (int i = 0; i < students.length; i++) {
          if (students[i].name == name && students[i].password == pass) {
            print("You have successfully logged in");
            students[i].can_do();
            break loop1;
          } else if (i + 1 == students.length) {
            print("No student with this information");
            while (true) {
              //wrong information
              print("press 1 to try again or 0 to To take a step back");
              int x = int.parse(stdin.readLineSync()!);
              if (x == 1) {
                //try again
                continue loop1;
              } else if (x == 0) {
                //back to the 1st page
                break loop1;
              } else {
                print("enter a valid number");
              }
            }
          }
        }
      }
    }
    //sign up as a student
    else if (_command == 2) {
      students.add(Student()..add_info(id));
      id++;
    }
    //login as a teacher
    else if (_command == 3) {
      loop1:
      while (true) {
        if (teachers.isEmpty) {
          print("There are no teachers on the system");
          break loop1;
        }
        //pass and user name
        print("user name :");
        String name = stdin.readLineSync()!;
        print("password : ");
        String pass = stdin.readLineSync()!;

        //user check
        for (int i = 0; i < teachers.length; i++) {
          if (teachers[i].name == name && teachers[i].password == pass) {
            print("You have successfully logged in");
            teachers[i].can_do();
            break loop1;
          } else if (i + 1 == teachers.length) {
            print("No teacher with this information");
            while (true) {
              //wrong information
              print("press 1 to try again or 0 to To take a step back");
              int x = int.parse(stdin.readLineSync()!);
              if (x == 1) {
                //try again
                continue loop1;
              } else if (x == 0) {
                //back to the 1st page
                break loop1;
              } else {
                print("enter a valid number");
              }
            }
          }
        }
      }
    }

    //login as an admin
    else if (_command == 4) {
      loop3:
      while (true) {
        //pass and user name
        print("user name :");
        String name = stdin.readLineSync()!;
        print("password : ");
        String pass = stdin.readLineSync()!;
        if (admins.isNotEmpty) {
          //user check
          for (int i = 0; i < admins.length; i++) {
            if (admins[i].name == name && admins[i].password == pass) {
              print("You have successfully logged in");
              adminCanDo(i);
              break loop3;
            } else if (i + 1 == students.length) {
              print("No admin with this information");
              while (true) {
                //wrong information
                print("press 1 to try again or 0 to To take a step back");
                int x = int.parse(stdin.readLineSync()!);
                if (x == 1) {
                  //try again
                  continue loop3;
                } else if (x == 0) {
                  //back to the 1st page
                  break loop3;
                } else {
                  print("enter a valid number");
                }
              }
            }
          }
        } else if (pass == "12345" && name == "mans") {
          adminCanDo(0);

          break loop3;
        } else {
          print("No admin with this information");
          while (true) {
            //wrong information
            print("press 1 to try again or 0 to To take a step back");
            int x = int.parse(stdin.readLineSync()!);
            if (x == 1) {
              //try again
              continue loop3;
            } else if (x == 0) {
              //back to the 1st page
              break loop3;
            } else {
              print("enter a valid number");
            }
          }
        }
      }
    }
  }
}

int command() {
  print("==============================\n");
  print("press 1 to login as a student");
  print("press 2 to sign up as a student");
  print("press 3 to login as a teacher");
  print("press 4 to login as an administrator");
  print("press 0 to quit");

  while (true) {
    int x = int.parse(stdin.readLineSync()!);

    if (x <= 4 && x >= 0)
      return x;
    else
      print("Enter a valid number");
  }
}

adminCanDo(int i) {
  loop:
  while (true) {
    print("things you can do");
    print("1-> add new admin");
    print("2-> add new course ");
    print("3-> add new teacher");
    print("4-> print your information");
    print('0-> back to home');
    int x = int.parse(stdin.readLineSync()!);
    switch (x) {
      case 1:
        {
          admins.add(Admin()..creatNewAdmin());
        }
      case 2:
        {
          courses.add(Course()..add_course());
          break;
        }
      case 3:
        {
          teachers.add(Teacher()..add_teacher());
          break;
        }
      case 4:
        {
          admins[i].PrintInfo();
          break;
        }
      case 0:
        {
          break loop;
        }
      default:
        {
          print("enter a valid number");
          break;
        }
    }
  }
}
