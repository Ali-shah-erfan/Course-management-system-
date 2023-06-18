import 'package:flutter/material.dart';
import 'package:school/constants.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class SeniorScreen extends StatelessWidget {
  static String routeName = 'SeniorScreen';

  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 5),(){
     Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
    }
    );
    return Scaffold(
      body: Center(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('School', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: kTextWhiteColor,
                  fontSize: 50.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                ),),
                 Text('Senior', style: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 50.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w700
                ),
                ),
              ],
            ),
            Image.asset(
              'images/seniorSchool.png',
              height: 100,
              width: 150,
              ),
           ],
         ),
       ),
    );
  }
  }
