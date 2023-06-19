import 'package:flutter/cupertino.dart';
import '../dateSheet/dateSheet_screen.dart';
import '../feeScreen/Fee_Screen.dart';
import '../assignments/assignment_screen.dart';
import '../homeScreen/home_screen.dart';
import '../profile/my_profile.dart';
import '../result/result_screen.dart';
import 'senior_screen.dart';

 Map<String, WidgetBuilder>routes = {

 SeniorScreen.routeName: (context) => SeniorScreen(),
//LoginScreen.routeName: (context) => LoginScreen(),
HomeScreen.routeName: (context) => HomeScreen(),
MyProfileScreen.routeName: (context) => MyProfileScreen(),
FeeScreen.routeName: (context) => FeeScreen(),
AssignmentScreen.routeName: (context) => AssignmentScreen(),
DateSheetScreen.routeName: (context) => DateSheetScreen(),
ResultScreen.routeName: (context) => ResultScreen(),


};