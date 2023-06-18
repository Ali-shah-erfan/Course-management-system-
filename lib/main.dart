import 'package:flutter/material.dart';
import 'routes.dart';
import 'senior_screen.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

// i am great in coding
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'school senior',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor, 
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.sourceSansProTextTheme(
            Theme.of(context).textTheme.apply().copyWith(bodyMedium: TextStyle(color: kOtherColor,fontSize: 35.0,fontWeight: FontWeight.bold),
        )
          )
      ),
      initialRoute:SeniorScreen.routeName,
     routes: routes,
      );
    
  }}  
  