import 'package:flutter/material.dart';
import '../dateSheet/dateSheet_screen.dart';
import '../result/result_screen.dart';
import '../seniorScreen/constants.dart';
import '../feeScreen/Fee_Screen.dart';
import '../assignments/assignment_screen.dart';
import '../profile/my_profile.dart';
import 'student_data.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              padding: EdgeInsets.all(20),
           child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          StudentName(studentName: '! Ali Shah',),
                         kHalfSizeBox,
                          StudentClass(studentClass: 'Class X-II | Roll No: 12',),
                         kHalfSizeBox,
                          StudentYear(studentYear: '2023 - 2024',),
                   ],
                    ),
                     kHalfSizeBox,
                     StudentPicture(
                      picAddress: 'images/Ali.jpg', 
                      onPress: (){
                        //go to profile detail screen here
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfileScreen()),
  );
                      }),
                  ],
                ),
                 sizedBox,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                         StudentDataCard(
                          onPress: () {
                            // go to attendence screen
                  
                          },
                               title: 'Attendence',
                               value: '90.02%',
                         ),
                         StudentDataCard(
                              onPress: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => FeeScreen()),
  );
                              },
                              title: 'Fee Due', 
                              value: '600\$', 
                         ),
                    ],
                  ),
              ],
           ),
          ),
          Expanded(
            child: Container(
                    color: Colors.transparent,
                    child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefultPadding * 3),
                    topRight: Radius.circular(kDefultPadding * 3),
                ),
              ),
          child: ListView(
               physics: BouncingScrollPhysics(),
            children: [
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/quiz.png',
                    title: 'Take Quiz',
                 ),
                  HomeCard(
                    onPress: (){
                      // go to assignment Screen
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AssignmentScreen()));
                    },
                    icon: 'icons/deadline.png',
                    title: 'Assignments'  
               ),
              ],
            ),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/holiday.png',
                    title: 'Holiday',
                 ),
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/timetable.png',
                    title: 'Time\nTable'  
               ),
              ],
            ),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  HomeCard(
                    onPress: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen()));
                    },
                    icon: 'icons/data-analytics.png',
                    title: 'Result',
                 ),
                  HomeCard(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DateSheetScreen()));
                    }, 
                    icon: 'icons/calendar.png',
                    title: 'DateSheet'  
               ),
              ],
            ),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/question-mark.png',
                    title: 'Ask',
                 ),
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/image-gallery.png',
                    title: 'Gallery'  
               ),
              ],
            ),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/resume.png',
                    title: 'Leave\nApplication',
                 ),
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/padlock.png',
                    title: 'Change\nPassword'  
               ),
              ],
            ),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  HomeCard(
                    onPress: (){},
                    icon: 'icons/approve.png',
                    title: 'Events',
                 ),
                  HomeCard(
                    onPress: (){

                    },
                    icon: 'icons/log-out.png',
                    title: 'Logout'  
               ),
              ],
            ),
          ],
        ),
      ),
    ),
      ),
    ],
  ),
    );
  }
}
class HomeCard extends StatelessWidget {
  final VoidCallback onPress;
    final String icon;
    final String title;
      const HomeCard({required this.onPress,required this.icon,required this.title,});

  @override
  Widget build(BuildContext context) {
        return InkWell(
            onTap: onPress,
             child: Container(
                      margin: EdgeInsets.only(top: kDefultPadding/2),
                      width: MediaQuery.of(context).size.width/2.5,
                      height: MediaQuery.of(context).size.height/6,
                      decoration: BoxDecoration(
                      color: kcustom,
                      borderRadius: BorderRadius.circular(kDefultPadding/2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Image.asset(
                      icon,
                      height: 40,
                      width: 40,
                      color: kOtherColor,
                      ),
                  Text(
                    
                    title,
                     textAlign: TextAlign.center,
                     style: TextStyle(
                    fontSize: 16,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w800,
                  ),
                      ),
                     SizedBox(height:kDefultPadding/3),
                ],
                ),
            ),
    );
  }
}

class StudentClass extends StatelessWidget {
  final String studentClass;
  const StudentClass({required this.studentClass});

  @override
  Widget build(BuildContext context) {
    return Text(
            studentClass, 
             style: TextStyle(
             fontSize: 14,
      ),
    );
  }
}
class StudentYear extends StatelessWidget {
  final String studentYear;
  const StudentYear({required this.studentYear});

  @override
  Widget build(BuildContext context) {
        return Container(
              width: 100,
              height: 20,
              decoration: BoxDecoration(
              color: kOtherColor,
              borderRadius: BorderRadius.circular(20),
              ),
          child: Center(
             child: Text(
                studentYear,
                style: TextStyle(
                fontSize: 12,
                color: kTextBlackColor,
                fontWeight:FontWeight.w200
           ),
         ),
       ),
     );
   }
}
class StudentPicture extends StatelessWidget {
    final String picAddress;
    final VoidCallback onPress;
    const StudentPicture({required this.picAddress, required this.onPress});

  @override
  Widget build(BuildContext context) {
        return  GestureDetector(
          onTap: onPress,
          child: CircleAvatar(
            minRadius: 50,
            maxRadius: 50,
            backgroundColor: kSecondaryColor,
            backgroundImage: AssetImage(
            picAddress,
         ),
       ),
    );
  }
}