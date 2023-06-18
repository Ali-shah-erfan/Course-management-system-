import 'package:flutter/material.dart';
import 'constants.dart';

class StudentName extends StatelessWidget {
   final String studentName;
  const StudentName({required this.studentName});

  @override
  Widget build(BuildContext context) {
    return Row(
           children: [
             Text(
               'Hi',
                style: TextStyle( 
                  color: Colors.white,
              fontWeight: FontWeight.w200,), 
                ),
             Text(
                studentName,
                 style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,),
                 
                
                ),
            ],
          );
  }
}
class StudentDataCard extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onPress;
  const StudentDataCard({required this.title, required this.value, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: onPress,
            child: Container(
            width: MediaQuery.of(context).size.width/2.5,
            height: MediaQuery.of(context).size.height/9,
            decoration: BoxDecoration(
            color: kOtherColor,
            borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                    title,
                    style: TextStyle(
                    fontSize: 16,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  value,
                   style: TextStyle(
                   fontSize: 25,
                   color: kTextBlackColor,
                   fontWeight: FontWeight.w300,
                 ),
               ),
            ],
         ),
       ),
    );
  }
}