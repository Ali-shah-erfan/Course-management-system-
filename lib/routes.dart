import 'package:flutter/cupertino.dart';
import 'Fee_Screen.dart';
import 'assignment_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'my_profile.dart';
import 'senior_screen.dart';

 Map<String, WidgetBuilder>routes = {

 SeniorScreen.routeName: (context) => SeniorScreen(),
//LoginScreen.routeName: (context) => LoginScreen(),
HomeScreen.routeName: (context) => HomeScreen(),
MyProfileScreen.routeName: (context) => MyProfileScreen(),
FeeScreen.routeName: (context) => FeeScreen(),
AssignmentScreen.routeName: (context) => AssignmentScreen(),
//   DateSheetScreen.routeName: (context) => DateSheetScreen(),
//   ResultScreen.routeName: (context) => ResultScreen(),


};