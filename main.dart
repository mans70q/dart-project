// ignore_for_file: unused_import, unused_local_variable
import 'dart:io';
import 'student.dart';
import 'teacher.dart';
import 'courses.dart';
import 'admin.dart';

void main() {
  print("==============================\n=           Welcome          =");
  int id = 0;
  int course_id = 0;
  List<Student> students = [];
  List<Teacher> teachers = [];
  List<Course> courses = [];
  List<Admin> admins = [];
  while (true) {
    int _command = command();
    //quit
    if (_command == 6) {
      break;
    }
    //login as a student
    else if (_command == 1) {
      loop1:
      while (true) {
        if (students.isEmpty) {
          print("There are no students on the system");
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
            students[i].can_do(courses);
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
      students.add(Student()..add_info(id, courses, students));
      id++;
    } else if (_command == 3) {
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
            teachers[i];
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
    } else if (_command == 4) {
      print("enter Enter your name");
      String name = stdin.readLineSync()!;

      print("enter your Email");
      String Email = stdin.readLineSync()!;
      print("ener your password");
      String pass = stdin.readLineSync()!;
      print("enter your major");
      String major = stdin.readLineSync()!;
      teachers.add(Teacher()
        ..name = name
        ..major = major
        ..email = Email
        ..password = pass
        ..id = id);
      id++;
      print("you signed up succsfuly");
    }
    //login as an admin
    else if (_command == 5) {
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
              adminCanDo(admins, i);
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
          int x = -1;

          adminCanDo(admins, x).forEach((key, value) {
            if (key == "admin") admins.addAll(value);

            ;
          });

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
  print("press 4 to sign up as a teacher");
  print("press 5 to login as an administrator");
  print("press 6 to quit");

  while (true) {
    int x = int.parse(stdin.readLineSync()!);

    if (x <= 6 && x >= 1)
      return x;
    else
      print("Enter a valid number");
  }
}

adminCanDo(List admin, int i) {
  loop:
  while (true) {
    print("things you can do");
    print("1-> add new admin");
    print("2-> course control");
    print('0-> take a step back');
    int x = int.parse(stdin.readLineSync()!);
    switch (x) {
      case 1:
        {
          admin.add(Admin()..creatNewAdmin());
          return {"admin": admin};
        }
      case 2:
        {
          print("1-> add new course");
          return {};
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
