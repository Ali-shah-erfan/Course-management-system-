import 'package:flutter/material.dart';
import 'package:school/constants.dart';

import 'assignment_data.dart';
import 'assignment_widget.dart';

class AssignmentScreen extends StatelessWidget {
  static String routeName = 'AssignmentScreen';
   AssignmentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
            title: Center(child: Text('Assignments')),
           ),
           body: Column(
             children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefultPadding),
                      topRight: Radius.circular(kDefultPadding),
                    ),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.all(kDefultPadding),
                    itemCount: assignment.length,
                    itemBuilder: (context, int index){
                     return Container(
                       margin: EdgeInsets.only(bottom: kDefultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(kDefultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kDefultPadding),
                              color: kOtherColor,
                              boxShadow:[ BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2,
                              ),
                              ],
                            ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                              color: kSecondaryColor.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(kDefultPadding),
                            ),
                            child: Center(
                              child: Text(
                                assignment[index].subjectName,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: kPrimaryColor
                                ),
                              ),
                            ),
                          ),
                          kHalfSizeBox,
                          Text(
                            assignment[index].topicName,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            kHalfSizeBox,
                            AsssignmentDetailRow(title: 'Assign Date', statusValue: assignment[index].assignDate),
                            kHalfSizeBox,
                            AsssignmentDetailRow(title: 'Last Date', statusValue: assignment[index].lastDate),
                            kHalfSizeBox,
                            AsssignmentDetailRow(title: 'Status', statusValue: assignment[index].status),
                            kHalfSizeBox,
                            // use condition here to display Button
                            if(assignment[index].status == 'Pending')
                                //then show button
                            AssignmentButton(
                              title: 'To Submit',
                                onPress: (){
                                // submit here
                                },
                                ),
                            
                        ],
                      ),
                    ),
                  ],
                ),
                );
            },
        
            ), 
          ),
        ),
        ],
      ),
    );
  }
}